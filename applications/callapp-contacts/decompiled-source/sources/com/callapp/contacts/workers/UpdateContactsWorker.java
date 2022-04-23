package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.n;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.MigrationUtils;
import com.callapp.framework.util.CollectionUtils;
import io.objectbox.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082D¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/callapp/contacts/workers/UpdateContactsWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "CALLAPP_PLUS_THRESHOLD", "", "CONTACT_THRESHOLD", "", "HALF_DAY", "", "ROUNDED_FORMAT", "", "doWork", "Landroidx/work/ListenableWorker$Result;", "normalizedPhoneNumbers", "", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsWorker.class */
public final class UpdateContactsWorker extends Worker {

    /* renamed from: a */
    public static final Companion f17092a = new Companion(null);
    private static final String f = "job_update_contacts_tag";

    /* renamed from: b */
    private final long f17093b = 12;

    /* renamed from: c */
    private final double f17094c = 0.9d;

    /* renamed from: d */
    private final int f17095d = 10;
    private final String e = "%.2f";

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "hoursDelay", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsWorker$Companion.class */
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
            if (!Prefs.hb.get().booleanValue()) {
                try {
                    n a2 = j.b(CallAppApplication.get()).a(getTAG());
                    p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                    a2.a().get();
                } catch (Exception e) {
                    CLog.a(UpdateContactsWorker.class, e);
                }
                m.a a3 = new m.a(UpdateContactsWorker.class).a(getTAG());
                p.b(a3, "OneTimeWorkRequestBuilde…actsWorker>().addTag(TAG)");
                m.a aVar = a3;
                m.a aVar2 = aVar;
                if (j > 0) {
                    m.a a4 = aVar.a(j, TimeUnit.HOURS);
                    p.b(a4, "workRequestBuilder.setIn…ursDelay, TimeUnit.HOURS)");
                    aVar2 = a4;
                }
                j.b(CallAppApplication.get()).a(aVar2.c());
            }
        }

        public final String getTAG() {
            return UpdateContactsWorker.f;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateContactsWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        float f2;
        Long l;
        Map<String, Integer> map;
        Map<String, Integer> map2;
        String str = Constants.MIGRATION;
        CLog.a(UpdateContactsWorker.class, "UpdateContactsWorker doWork");
        try {
            if (!Prefs.hb.get().booleanValue()) {
                T9Helper.a(true);
                CallAppApplication callAppApplication = CallAppApplication.get();
                p.b(callAppApplication, "CallAppApplication.get()");
                a d2 = callAppApplication.getObjectBoxStore().d(ContactLookupData.class);
                List<ContactLookupData> c2 = d2.e().b(ContactLookupData_.phoneNumbers).b(ContactLookupData_.phoneNumbers, "").a().c();
                p.b(c2, "box.query().notNull(Cont…mbers, \"\").build().find()");
                for (ContactLookupData contactLookupData : c2) {
                    LinkedHashSet<CharSequence> linkedHashSet = new LinkedHashSet();
                    p.b(contactLookupData, "contactLookupData");
                    List<String> phoneNumbers = contactLookupData.getPhoneNumbers();
                    p.b(phoneNumbers, "contactLookupData.phoneNumbers");
                    linkedHashSet.addAll(phoneNumbers);
                    contactLookupData.getPhoneNumbers().clear();
                    for (CharSequence charSequence : linkedHashSet) {
                        contactLookupData.getPhoneNumbers().add(T9Helper.a(charSequence));
                    }
                }
                d2.a((Collection) c2);
                CallAppApplication callAppApplication2 = CallAppApplication.get();
                p.b(callAppApplication2, "CallAppApplication.get()");
                a d3 = callAppApplication2.getObjectBoxStore().d(ContactLookupData.class);
                p.b(d3, "CallAppApplication.get()…ctLookupData::class.java)");
                List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
                p.b(contactsWithPhoneNumber, "ContactUtils.getContactsWithPhoneNumber()");
                if (CollectionUtils.b(contactsWithPhoneNumber)) {
                    int size = contactsWithPhoneNumber.size();
                    long b2 = d3.b();
                    List c3 = d3.e().b(ContactLookupData_.namesMap).a().c();
                    p.b(c3, "contactLookupDataBox.que….namesMap).build().find()");
                    List list = c3;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        p.b(((ContactLookupData) obj).namesMap, "it.namesMap");
                        if (!map2.isEmpty()) {
                            arrayList.add(obj);
                        }
                    }
                    int size2 = arrayList.size();
                    float f3 = size2;
                    float f4 = size;
                    f2 = f3 / f4;
                    double d4 = f2;
                    try {
                        if (d4 < this.f17094c) {
                            AnalyticsManager.get().a(Constants.MIGRATION, "ContactLookupData bad ratio", "contactsTotal " + size + ", contactLookupDataTotal " + b2 + ", validDisplayName: " + size2, d4, new String[0]);
                            MigrationUtils.e();
                            List c4 = d3.e().b(ContactLookupData_.namesMap).a().c();
                            p.b(c4, "contactLookupDataBox.que….namesMap).build().find()");
                            List list2 = c4;
                            ArrayList arrayList2 = new ArrayList();
                            for (Object obj2 : list2) {
                                p.b(((ContactLookupData) obj2).namesMap, "it.namesMap");
                                if (!map.isEmpty()) {
                                    arrayList2.add(obj2);
                                }
                            }
                            int size3 = arrayList2.size();
                            f2 = size3 / f4;
                            double d5 = f2;
                            if (d5 < this.f17094c) {
                                AnalyticsManager.get().a(Constants.MIGRATION, "ContactLookupData ratio not fixed after update", "contactsTotal " + size + ", contactLookupDataTotal " + b2 + ", validDisplayName: " + size3, d5, new String[0]);
                            } else {
                                AnalyticsManager.get().a(Constants.MIGRATION, "ContactLookupData ratio fixed after update", "contactsTotal " + size + ", contactLookupDataTotal " + b2 + ", validDisplayName: " + size3, d5, new String[0]);
                            }
                        }
                    } catch (Exception e) {
                        str = Constants.MIGRATION;
                        f17092a.a(this.f17093b);
                        AnalyticsManager.get().a(str, "Error updating ContactLookupData & ExtractedInfo");
                        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
                        p.b(cVar, "Result.success()");
                        return cVar;
                    }
                } else {
                    f2 = 1.0f;
                }
                CallAppApplication callAppApplication3 = CallAppApplication.get();
                p.b(callAppApplication3, "CallAppApplication.get()");
                a d6 = callAppApplication3.getObjectBoxStore().d(ExtractedInfo.class);
                p.b(d6, "CallAppApplication.get()…xtractedInfo::class.java)");
                long invalidExtractInfoContactsCount = MigrationUtils.getInvalidExtractInfoContactsCount();
                if (invalidExtractInfoContactsCount > this.f17095d) {
                    AnalyticsManager.get().a(Constants.MIGRATION, "extractedInfo bad ratio", "count: ".concat(String.valueOf(invalidExtractInfoContactsCount)));
                    MigrationUtils.f();
                    long b3 = d6.b();
                    invalidExtractInfoContactsCount = MigrationUtils.getInvalidExtractInfoContactsCount();
                    if (invalidExtractInfoContactsCount > this.f17095d) {
                        AnalyticsManager.get().a(Constants.MIGRATION, "ExtractedInfo ratio not fixed after update", "total: ".concat(String.valueOf(b3)));
                    } else {
                        AnalyticsManager.get().a(Constants.MIGRATION, "ExtractedInfo ratio fixed after update", "total: ".concat(String.valueOf(b3)));
                    }
                }
                if (invalidExtractInfoContactsCount > this.f17095d || f2 <= this.f17094c) {
                    String format = String.format(this.e, Arrays.copyOf(new Object[]{Float.valueOf(f2)}, 1));
                    p.b(format, "java.lang.String.format(this, *args)");
                    if ((!p.a((Object) Prefs.hd.get(), (Object) format)) || (l = Prefs.he.get()) == null || l.longValue() != invalidExtractInfoContactsCount) {
                        Prefs.hd.set(format);
                        Prefs.he.set(Long.valueOf(invalidExtractInfoContactsCount));
                        f17092a.a(this.f17093b);
                    }
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    StringBuilder sb = new StringBuilder("extractedInfoInvalidCount: ");
                    sb.append(invalidExtractInfoContactsCount);
                    sb.append(", contactLookupDataRatio: ");
                    sb.append(f2);
                    analyticsManager.a(Constants.MIGRATION, "UpdateContactsWorker Rescheduling", sb.toString());
                } else {
                    Prefs.hb.set(Boolean.TRUE);
                    AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                    StringBuilder sb2 = new StringBuilder("extractedInfoInvalidCount: ");
                    sb2.append(invalidExtractInfoContactsCount);
                    sb2.append(", contactLookupDataRatio: ");
                    sb2.append(f2);
                    analyticsManager2.a(Constants.MIGRATION, "UpdateContactsWorker completed", sb2.toString());
                }
            }
        } catch (Exception e2) {
        }
        ListenableWorker.a.c cVar2 = new ListenableWorker.a.c();
        p.b(cVar2, "Result.success()");
        return cVar2;
    }
}
