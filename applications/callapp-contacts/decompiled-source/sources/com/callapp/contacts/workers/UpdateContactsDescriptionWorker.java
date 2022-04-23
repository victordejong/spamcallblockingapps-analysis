package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.n;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "CONTACT_THRESHOLD", "", "HALF_DAY", "", "ROUNDED_FORMAT", "", "contactsWithOrganizationData", "", "Lcom/callapp/contacts/model/UpdateContactItem;", "ratio", "", "doWork", "Landroidx/work/ListenableWorker$Result;", "hasValidDataInDb", "", "onInvalidDataInDB", "", "onValidDataInDB", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsDescriptionWorker.class */
public final class UpdateContactsDescriptionWorker extends Worker {

    /* renamed from: a */
    public static final Companion f17088a = new Companion(null);
    private static final String g = "job_update_contacts_description_tag";

    /* renamed from: b */
    private final double f17089b = 0.9d;

    /* renamed from: c */
    private final String f17090c = "%.2f";

    /* renamed from: d */
    private final long f17091d = 720;
    private List<UpdateContactItem> e = new ArrayList();
    private float f = 1.0f;

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "minDelay", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void a(Companion companion) {
            companion.a(0L);
        }

        public final void a(long j) {
            if (!Prefs.hc.get().booleanValue()) {
                try {
                    n a2 = j.b(CallAppApplication.get()).a(getTAG());
                    p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                    a2.a().get();
                } catch (Exception e) {
                    CLog.a(UpdateContactsDescriptionWorker.class, e);
                }
                m.a a3 = new m.a(UpdateContactsDescriptionWorker.class).a(getTAG());
                p.b(a3, "OneTimeWorkRequestBuilde…tionWorker>().addTag(TAG)");
                m.a aVar = a3;
                m.a aVar2 = aVar;
                if (j > 0) {
                    m.a a4 = aVar.a(j, TimeUnit.MINUTES);
                    p.b(a4, "workRequestBuilder.setIn…nDelay, TimeUnit.MINUTES)");
                    aVar2 = a4;
                }
                j.b(CallAppApplication.get()).a(aVar2.c());
            }
        }

        public final String getTAG() {
            return UpdateContactsDescriptionWorker.g;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateContactsDescriptionWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    private final void b() {
        Prefs.hc.set(Boolean.TRUE);
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.MIGRATION, "UpdateContactsDescriptionWorker completed", "contactLookup Description Data Ratio: " + this.f);
    }

    private final void c() {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.MIGRATION, "UpdateContactsDescriptionWorker invalid data ", "contactLookup Description Data Ratio: " + this.f);
    }

    private final boolean d() {
        List<UpdateContactItem> allContactsWithOrganizationData = MigrationUtils.getAllContactsWithOrganizationData();
        p.b(allContactsWithOrganizationData, "MigrationUtils.getAllCon…ctsWithOrganizationData()");
        this.e = allContactsWithOrganizationData;
        if (CollectionUtils.b(allContactsWithOrganizationData)) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            List c2 = callAppApplication.getObjectBoxStore().d(ContactLookupData.class).e().b(ContactLookupData_.descriptionMap).a().c();
            p.b(c2, "CallAppApplication.get()…iptionMap).build().find()");
            List list = c2;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                Map<String, Integer> map = ((ContactLookupData) obj).descriptionMap;
                p.b(map, "it.descriptionMap");
                if (!map.isEmpty()) {
                    arrayList.add(obj);
                }
            }
            float size = arrayList.size() / this.e.size();
            this.f = size;
            return ((double) size) > this.f17089b;
        }
        CLog.a(UpdateContactsDescriptionWorker.class, "no contacts with organization data");
        return true;
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        CLog.a(UpdateContactsDescriptionWorker.class, "UpdateContactsDescriptionWorker doWork");
        try {
            if (!Prefs.hc.get().booleanValue()) {
                if (d()) {
                    b();
                } else {
                    c();
                    MigrationUtils.a(this.e);
                    if (d()) {
                        b();
                    } else {
                        c();
                        String format = String.format(this.f17090c, Arrays.copyOf(new Object[]{Float.valueOf(this.f)}, 1));
                        p.b(format, "java.lang.String.format(this, *args)");
                        if (true ^ p.a((Object) Prefs.hf.get(), (Object) format)) {
                            Prefs.hf.set(format);
                            f17088a.a(this.f17091d);
                        }
                    }
                }
            }
        } catch (Exception e) {
            AnalyticsManager.get().a(Constants.MIGRATION, "Error UpdateContactsDescriptionWorker");
            f17088a.a(this.f17091d);
        }
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}
