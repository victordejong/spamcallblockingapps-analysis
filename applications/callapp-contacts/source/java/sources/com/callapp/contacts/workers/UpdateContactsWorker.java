package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
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
import io.objectbox.C17944a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082D¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lcom/callapp/contacts/workers/UpdateContactsWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "CALLAPP_PLUS_THRESHOLD", "", "CONTACT_THRESHOLD", "", "HALF_DAY", "", "ROUNDED_FORMAT", "", "doWork", "Landroidx/work/ListenableWorker$Result;", "normalizedPhoneNumbers", "", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsWorker.class */
public final class UpdateContactsWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29652a = new Companion(null);

    /* renamed from: f */
    private static final String f29653f = "job_update_contacts_tag";

    /* renamed from: b */
    private final long f29654b = 12;

    /* renamed from: c */
    private final double f29655c = 0.9d;

    /* renamed from: d */
    private final int f29656d = 10;

    /* renamed from: e */
    private final String f29657e = "%.2f";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "hoursDelay", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/UpdateContactsWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ void m26106a(Companion companion) {
            companion.m26107a(0L);
        }

        /* renamed from: a */
        public final void m26107a(long j) {
            if (!Prefs.f26622hb.get().booleanValue()) {
                try {
                    AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                    C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                    mo39264a.mo39272a().get();
                } catch (Exception e) {
                    CLog.m27609a(UpdateContactsWorker.class, e);
                }
                C3148m.C3149a a = new C3148m.C3149a(UpdateContactsWorker.class).m39256a(getTAG());
                C18524p.m3843b(a, "OneTimeWorkRequestBuilde…actsWorker>().addTag(TAG)");
                C3148m.C3149a c3149a = a;
                C3148m.C3149a c3149a2 = c3149a;
                if (j > 0) {
                    C3148m.C3149a a2 = c3149a.m39259a(j, TimeUnit.HOURS);
                    C18524p.m3843b(a2, "workRequestBuilder.setIn…ursDelay, TimeUnit.HOURS)");
                    c3149a2 = a2;
                }
                C3068j.m39359b(CallAppApplication.get()).m39265a(c3149a2.m39254c());
            }
        }

        public final String getTAG() {
            return UpdateContactsWorker.f29653f;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateContactsWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        float f;
        Long l;
        Map<String, Integer> map;
        Map<String, Integer> map2;
        CLog.m27611a(UpdateContactsWorker.class, "UpdateContactsWorker doWork");
        String str = Constants.MIGRATION;
        try {
            if (!Prefs.f26622hb.get().booleanValue()) {
                T9Helper.m30353a(true);
                CallAppApplication callAppApplication = CallAppApplication.get();
                C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                C17944a m4727d = callAppApplication.getObjectBoxStore().m4727d(ContactLookupData.class);
                List<ContactLookupData> m4628c = m4727d.m4700e().m4606b(ContactLookupData_.phoneNumbers).m4604b(ContactLookupData_.phoneNumbers, "").m4618a().m4628c();
                C18524p.m3843b(m4628c, "box.query().notNull(Cont…mbers, \"\").build().find()");
                for (ContactLookupData contactLookupData : m4628c) {
                    LinkedHashSet<CharSequence> linkedHashSet = new LinkedHashSet();
                    C18524p.m3843b(contactLookupData, "contactLookupData");
                    List<String> phoneNumbers = contactLookupData.getPhoneNumbers();
                    C18524p.m3843b(phoneNumbers, "contactLookupData.phoneNumbers");
                    linkedHashSet.addAll(phoneNumbers);
                    contactLookupData.getPhoneNumbers().clear();
                    for (CharSequence charSequence : linkedHashSet) {
                        contactLookupData.getPhoneNumbers().add(T9Helper.m30360a(charSequence));
                    }
                }
                m4727d.m4710a((Collection) m4628c);
                CallAppApplication callAppApplication2 = CallAppApplication.get();
                C18524p.m3843b(callAppApplication2, "CallAppApplication.get()");
                C17944a m4727d2 = callAppApplication2.getObjectBoxStore().m4727d(ContactLookupData.class);
                C18524p.m3843b(m4727d2, "CallAppApplication.get()…ctLookupData::class.java)");
                List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
                C18524p.m3843b(contactsWithPhoneNumber, "ContactUtils.getContactsWithPhoneNumber()");
                if (CollectionUtils.m26068b(contactsWithPhoneNumber)) {
                    int size = contactsWithPhoneNumber.size();
                    long m4709b = m4727d2.m4709b();
                    List m4628c2 = m4727d2.m4700e().m4606b(ContactLookupData_.namesMap).m4618a().m4628c();
                    C18524p.m3843b(m4628c2, "contactLookupDataBox.que….namesMap).build().find()");
                    List list = m4628c2;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        C18524p.m3843b(((ContactLookupData) obj).namesMap, "it.namesMap");
                        if (!map2.isEmpty()) {
                            arrayList.add(obj);
                        }
                    }
                    int size2 = arrayList.size();
                    float f2 = size2;
                    float f3 = size;
                    f = f2 / f3;
                    double d = f;
                    try {
                        if (d < this.f29655c) {
                            AnalyticsManager.get().mo28444a(Constants.MIGRATION, "ContactLookupData bad ratio", "contactsTotal " + size + ", contactLookupDataTotal " + m4709b + ", validDisplayName: " + size2, d, new String[0]);
                            MigrationUtils.m27449e();
                            List m4628c3 = m4727d2.m4700e().m4606b(ContactLookupData_.namesMap).m4618a().m4628c();
                            C18524p.m3843b(m4628c3, "contactLookupDataBox.que….namesMap).build().find()");
                            List list2 = m4628c3;
                            ArrayList arrayList2 = new ArrayList();
                            for (Object obj2 : list2) {
                                C18524p.m3843b(((ContactLookupData) obj2).namesMap, "it.namesMap");
                                if (!map.isEmpty()) {
                                    arrayList2.add(obj2);
                                }
                            }
                            int size3 = arrayList2.size();
                            f = size3 / f3;
                            double d2 = f;
                            if (d2 < this.f29655c) {
                                AnalyticsManager.get().mo28444a(Constants.MIGRATION, "ContactLookupData ratio not fixed after update", "contactsTotal " + size + ", contactLookupDataTotal " + m4709b + ", validDisplayName: " + size3, d2, new String[0]);
                            } else {
                                AnalyticsManager.get().mo28444a(Constants.MIGRATION, "ContactLookupData ratio fixed after update", "contactsTotal " + size + ", contactLookupDataTotal " + m4709b + ", validDisplayName: " + size3, d2, new String[0]);
                            }
                        }
                    } catch (Exception e) {
                        str = Constants.MIGRATION;
                        f29652a.m26107a(this.f29654b);
                        AnalyticsManager.get().m28450a(str, "Error updating ContactLookupData & ExtractedInfo");
                        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
                        C18524p.m3843b(c2983c, "Result.success()");
                        return c2983c;
                    }
                } else {
                    f = 1.0f;
                }
                CallAppApplication callAppApplication3 = CallAppApplication.get();
                C18524p.m3843b(callAppApplication3, "CallAppApplication.get()");
                C17944a m4727d3 = callAppApplication3.getObjectBoxStore().m4727d(ExtractedInfo.class);
                C18524p.m3843b(m4727d3, "CallAppApplication.get()…xtractedInfo::class.java)");
                char invalidExtractInfoContactsCount = MigrationUtils.getInvalidExtractInfoContactsCount();
                if (invalidExtractInfoContactsCount > this.f29656d) {
                    AnalyticsManager.get().m28449a(Constants.MIGRATION, "extractedInfo bad ratio", "count: ".concat(String.valueOf((long) invalidExtractInfoContactsCount)));
                    MigrationUtils.m27448f();
                    long m4709b2 = m4727d3.m4709b();
                    invalidExtractInfoContactsCount = MigrationUtils.getInvalidExtractInfoContactsCount();
                    if (invalidExtractInfoContactsCount > this.f29656d) {
                        AnalyticsManager.get().m28449a(Constants.MIGRATION, "ExtractedInfo ratio not fixed after update", "total: ".concat(String.valueOf(m4709b2)));
                    } else {
                        AnalyticsManager.get().m28449a(Constants.MIGRATION, "ExtractedInfo ratio fixed after update", "total: ".concat(String.valueOf(m4709b2)));
                    }
                }
                if (invalidExtractInfoContactsCount > this.f29656d || f <= this.f29655c) {
                    String format = String.format(this.f29657e, Arrays.copyOf(new Object[]{Float.valueOf(f)}, 1));
                    C18524p.m3843b(format, "java.lang.String.format(this, *args)");
                    if ((!C18524p.m3850a((Object) Prefs.f26624hd.get(), (Object) format)) || (l = Prefs.f26625he.get()) == null || l.longValue() != invalidExtractInfoContactsCount) {
                        Prefs.f26624hd.set(format);
                        Prefs.f26625he.set(Long.valueOf(invalidExtractInfoContactsCount));
                        f29652a.m26107a(this.f29654b);
                    }
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    StringBuilder sb = new StringBuilder("extractedInfoInvalidCount: ");
                    sb.append((long) invalidExtractInfoContactsCount);
                    sb.append(", contactLookupDataRatio: ");
                    sb.append(f);
                    analyticsManager.m28449a(Constants.MIGRATION, "UpdateContactsWorker Rescheduling", sb.toString());
                } else {
                    Prefs.f26622hb.set(Boolean.TRUE);
                    AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                    StringBuilder sb2 = new StringBuilder("extractedInfoInvalidCount: ");
                    sb2.append((long) invalidExtractInfoContactsCount);
                    sb2.append(", contactLookupDataRatio: ");
                    sb2.append(f);
                    analyticsManager2.m28449a(Constants.MIGRATION, "UpdateContactsWorker completed", sb2.toString());
                }
            }
        } catch (Exception e2) {
        }
        ListenableWorker.AbstractC2980a.C2983c c2983c2 = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c2, "Result.success()");
        return c2983c2;
    }
}
