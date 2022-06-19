package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.UpdateContactItem;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.MigrationUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, m4298d2 = {"Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "CONTACT_THRESHOLD", "", "HALF_DAY", "", "ROUNDED_FORMAT", "", "contactsWithOrganizationData", "", "Lcom/callapp/contacts/model/UpdateContactItem;", "ratio", "", "doWork", "Landroidx/work/ListenableWorker$Result;", "hasValidDataInDb", "", "onInvalidDataInDB", "", "onValidDataInDB", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsDescriptionWorker.class */
public final class UpdateContactsDescriptionWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29645a = new Companion(null);

    /* renamed from: g */
    private static final String f29646g = "job_update_contacts_description_tag";

    /* renamed from: b */
    private final double f29647b = 0.9d;

    /* renamed from: c */
    private final String f29648c = "%.2f";

    /* renamed from: d */
    private final long f29649d = 720;

    /* renamed from: e */
    private List<UpdateContactItem> f29650e = new ArrayList();

    /* renamed from: f */
    private float f29651f = 1.0f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "minDelay", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ void m26109a(Companion companion) {
            companion.m26110a(0L);
        }

        /* renamed from: a */
        public final void m26110a(long j) {
            if (!Prefs.f26623hc.get().booleanValue()) {
                try {
                    AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                    C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                    mo39264a.mo39272a().get();
                } catch (Exception e) {
                    CLog.m27609a(UpdateContactsDescriptionWorker.class, e);
                }
                C3148m.C3149a a = new C3148m.C3149a(UpdateContactsDescriptionWorker.class).m39256a(getTAG());
                C18524p.m3843b(a, "OneTimeWorkRequestBuilde…tionWorker>().addTag(TAG)");
                C3148m.C3149a c3149a = a;
                C3148m.C3149a c3149a2 = c3149a;
                if (j > 0) {
                    C3148m.C3149a a2 = c3149a.m39259a(j, TimeUnit.MINUTES);
                    C18524p.m3843b(a2, "workRequestBuilder.setIn…nDelay, TimeUnit.MINUTES)");
                    c3149a2 = a2;
                }
                C3068j.m39359b(CallAppApplication.get()).m39265a(c3149a2.m39254c());
            }
        }

        public final String getTAG() {
            return UpdateContactsDescriptionWorker.f29646g;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateContactsDescriptionWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    /* renamed from: b */
    private final void m26113b() {
        Prefs.f26623hc.set(Boolean.TRUE);
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28449a(Constants.MIGRATION, "UpdateContactsDescriptionWorker completed", "contactLookup Description Data Ratio: " + this.f29651f);
    }

    /* renamed from: c */
    private final void m26112c() {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28449a(Constants.MIGRATION, "UpdateContactsDescriptionWorker invalid data ", "contactLookup Description Data Ratio: " + this.f29651f);
    }

    /* renamed from: d */
    private final boolean m26111d() {
        List<UpdateContactItem> allContactsWithOrganizationData = MigrationUtils.getAllContactsWithOrganizationData();
        C18524p.m3843b(allContactsWithOrganizationData, "MigrationUtils.getAllCon…ctsWithOrganizationData()");
        this.f29650e = allContactsWithOrganizationData;
        if (!CollectionUtils.m26068b(allContactsWithOrganizationData)) {
            CLog.m27611a(UpdateContactsDescriptionWorker.class, "no contacts with organization data");
            return true;
        }
        CallAppApplication callAppApplication = CallAppApplication.get();
        C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
        List m4628c = callAppApplication.getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4606b(ContactLookupData_.descriptionMap).m4618a().m4628c();
        C18524p.m3843b(m4628c, "CallAppApplication.get()…iptionMap).build().find()");
        List list = m4628c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Map<String, Integer> map = ((ContactLookupData) obj).descriptionMap;
            C18524p.m3843b(map, "it.descriptionMap");
            if (!map.isEmpty()) {
                arrayList.add(obj);
            }
        }
        float size = arrayList.size() / this.f29650e.size();
        this.f29651f = size;
        return ((double) size) > this.f29647b;
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        CLog.m27611a(UpdateContactsDescriptionWorker.class, "UpdateContactsDescriptionWorker doWork");
        try {
            if (!Prefs.f26623hc.get().booleanValue()) {
                if (m26111d()) {
                    m26113b();
                } else {
                    m26112c();
                    MigrationUtils.m27453a(this.f29650e);
                    if (m26111d()) {
                        m26113b();
                    } else {
                        m26112c();
                        String format = String.format(this.f29648c, Arrays.copyOf(new Object[]{Float.valueOf(this.f29651f)}, 1));
                        C18524p.m3843b(format, "java.lang.String.format(this, *args)");
                        if (true ^ C18524p.m3850a((Object) Prefs.f26626hf.get(), (Object) format)) {
                            Prefs.f26626hf.set(format);
                            f29645a.m26110a(this.f29649d);
                        }
                    }
                }
            }
        } catch (Exception e) {
            AnalyticsManager.get().m28450a(Constants.MIGRATION, "Error UpdateContactsDescriptionWorker");
            f29645a.m26110a(this.f29649d);
        }
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }
}
