package com.callapp.contacts.sync.service;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.text.format.DateUtils;
import androidx.core.app.C0745g;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.manager.ExceptionManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DeviceData;
import com.callapp.contacts.receiver.ScreenOffReceiver;
import com.callapp.contacts.sync.Synchronizers;
import com.callapp.contacts.sync.model.SyncContext;
import com.callapp.contacts.sync.model.SyncManager;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlinx.coroutines.AbstractC20205bk;
import org.apache.commons.lang3.StringUtils;
import p091b.C3170a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/BaseSyncAdapter.class */
public abstract class BaseSyncAdapter {

    /* renamed from: a */
    boolean f27590a = false;

    /* renamed from: b */
    int f27591b = 0;

    /* renamed from: c */
    protected int f27592c;

    /* renamed from: d */
    protected final Context f27593d;

    /* renamed from: e */
    private List<FavoriteMemoryContactItem> f27594e;

    /* renamed from: f */
    private CountDownLatch f27595f;

    /* renamed from: g */
    private ArrayList<ContactData> f27596g;

    /* renamed from: h */
    private HashMap<String, Integer> f27597h;

    public BaseSyncAdapter(Context context) {
        this.f27593d = context;
    }

    /* renamed from: a */
    public static void m27769a(Throwable th, Class<?> cls) {
        CLog.m27596b(cls, th);
    }

    /* renamed from: a */
    private boolean m27771a(final SyncContext syncContext, final List<Syncer> list) {
        boolean z;
        AbstractC20205bk abstractC20205bk;
        Iterator<ContactData> it2 = this.f27596g.iterator();
        while (it2.hasNext()) {
            final ContactData next = it2.next();
            final int i = this.f27591b + 1;
            this.f27591b = i;
            if (mo27760a(Singletons.get().getApplication())) {
                return false;
            }
            Iterator<Syncer> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z = false;
                    break;
                } else if (it3.next().shouldSyncContact(next)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                CLog.m27610a(getClass(), "Skipping %s/%s (%s,'%s')", Integer.valueOf(i), Integer.valueOf(this.f27592c), Long.valueOf(next.getDeviceId()), next.getFullName());
                this.f27595f.countDown();
            } else {
                C3170a.C3171a c3171a = C3170a.f11528a;
                abstractC20205bk = C3170a.f11530c;
                new Task(abstractC20205bk) { // from class: com.callapp.contacts.sync.service.BaseSyncAdapter.1
                    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d3, code lost:
                        r0 = com.callapp.contacts.sync.service.BaseSyncAdapter.this;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e0, code lost:
                        if (r0.mo27760a(r0.f27593d) != false) goto L29;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f6, code lost:
                        if (r6 < (com.callapp.contacts.sync.service.BaseSyncAdapter.this.f27594e.size() + 20)) goto L29;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f9, code lost:
                        com.callapp.contacts.sync.service.BaseSyncAdapter.this.f27590a = true;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:30:0x0102, code lost:
                        if (r0 == null) goto L34;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:31:0x0105, code lost:
                        com.callapp.contacts.sync.model.SyncManager.setSyncData(r0);
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:32:0x010c, code lost:
                        r9 = e;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:33:0x010d, code lost:
                        com.callapp.contacts.util.CLog.m27612a(getClass(), r9);
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a0, code lost:
                        r0 = com.callapp.contacts.sync.service.BaseSyncAdapter.this;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ad, code lost:
                        if (r0.mo27760a(r0.f27593d) != false) goto L55;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:53:0x01c3, code lost:
                        if (r6 < (com.callapp.contacts.sync.service.BaseSyncAdapter.this.f27594e.size() + 20)) goto L55;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:54:0x01c6, code lost:
                        com.callapp.contacts.sync.service.BaseSyncAdapter.this.f27590a = true;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:56:0x01cf, code lost:
                        if (r0 == null) goto L34;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:57:0x01d2, code lost:
                        com.callapp.contacts.sync.model.SyncManager.setSyncData(r0);
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:58:0x01d9, code lost:
                        r9 = e;
                     */
                    @Override // com.callapp.contacts.manager.task.Task
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void doTask() {
                        /*
                            Method dump skipped, instructions count: 556
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.service.BaseSyncAdapter.C77591.doTask():void");
                    }

                    @Override // com.callapp.contacts.manager.task.Task
                    public void onError(Throwable th) {
                        BaseSyncAdapter.m27769a(th, getClass());
                    }
                }.execute();
            }
        }
        return true;
    }

    /* renamed from: a */
    private boolean m27768a(boolean z, Application application, List<Syncer> list) {
        boolean z2;
        if (!mo27760a(application)) {
            Iterator<Syncer> it2 = list.iterator();
            while (true) {
                z2 = z;
                if (!it2.hasNext()) {
                    break;
                }
                Syncer next = it2.next();
                if (!z) {
                    next.setSyncEnabled(false);
                }
                next.onSyncEnd();
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    protected abstract List<Syncer> mo27759a(SyncContext syncContext);

    /* renamed from: a */
    public final void m27772a() {
        boolean z;
        Throwable th;
        Exception e;
        boolean z2;
        Throwable th2;
        boolean z3;
        String[] split;
        synchronized (this) {
            SyncContext syncContext = new SyncContext();
            syncContext.isFirstSync = getClass() == FirstSyncAdapter.class;
            try {
                CLog.m27611a(getClass(), "Sync started ===");
                long currentTimeMillis = System.currentTimeMillis();
                Application application = Singletons.get().getApplication();
                ExceptionManager exceptionManager = Singletons.get().getExceptionManager();
                exceptionManager.f25665b.clear();
                exceptionManager.f25664a = false;
                mo27761b();
                if (mo27760a(application)) {
                    this.f27596g = null;
                    this.f27594e = null;
                    this.f27597h = null;
                    mo27762a(false);
                    CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                    return;
                }
                syncContext.context = application;
                syncContext.contentResolver = application.getContentResolver();
                syncContext.syncData = SyncManager.getSyncData();
                List<Syncer> mo27759a = mo27759a(syncContext);
                syncContext.syncers = mo27759a;
                if (!CollectionUtils.m26076a(mo27759a) && mo27759a.size() != 1) {
                    syncContext.contactItems = ContactUtils.m28314a(true);
                    this.f27594e = ContactUtils.getFavoriteContacts();
                    ArrayList<MemoryContactItem> arrayList = new ArrayList();
                    arrayList.addAll(syncContext.contactItems);
                    arrayList.removeAll(this.f27594e);
                    arrayList.addAll(0, this.f27594e);
                    this.f27596g = new ArrayList<>();
                    syncContext.allContacts = new HashMap();
                    syncContext.favoriteContacts = new HashMap();
                    syncContext.frequentlyCalledContacts = new HashMap();
                    this.f27597h = new HashMap<>();
                    for (MemoryContactItem memoryContactItem : arrayList) {
                        Phone m28239a = PhoneManager.get().m28239a(memoryContactItem.normalNumbers.iterator().next());
                        if (!PhoneManager.get().m28240a(m28239a)) {
                            ContactData contactData = new ContactData(m28239a, memoryContactItem.contactId, null);
                            contactData.assertDeviceDataExist();
                            DeviceData deviceData = contactData.getDeviceData();
                            deviceData.setDeviceId(memoryContactItem.contactId);
                            deviceData.setFullName(memoryContactItem.displayName);
                            if (CollectionUtils.m26068b(memoryContactItem.f22604d)) {
                                deviceData.setEmails(memoryContactItem.f22604d);
                            }
                            contactData.updateFullName();
                            contactData.updateNames();
                            contactData.updateEmails();
                            long deviceId = contactData.getDeviceId();
                            if (!syncContext.allContacts.containsKey(Long.valueOf(deviceId)) || (!syncContext.favoriteContacts.containsKey(Long.valueOf(deviceId)) && !syncContext.frequentlyCalledContacts.containsKey(Long.valueOf(deviceId)))) {
                                this.f27596g.add(contactData);
                            } else {
                                ContactData contactData2 = syncContext.favoriteContacts.get(Long.valueOf(deviceId));
                                ContactData contactData3 = contactData2;
                                if (contactData2 == null) {
                                    contactData3 = syncContext.frequentlyCalledContacts.get(Long.valueOf(deviceId));
                                }
                                if (contactData3 != null) {
                                    this.f27596g.remove(contactData3);
                                }
                                this.f27596g.add(0, contactData);
                            }
                            syncContext.allContacts.put(Long.valueOf(memoryContactItem.contactId), contactData);
                            if (this.f27594e.contains(memoryContactItem)) {
                                syncContext.favoriteContacts.put(Long.valueOf(memoryContactItem.contactId), contactData);
                            }
                            for (String str : contactData.getFullName().split(StringUtils.SPACE)) {
                                this.f27597h.put(str, Integer.valueOf((this.f27597h.containsKey(str) ? this.f27597h.get(str).intValue() : 0) + 1));
                            }
                        }
                    }
                    try {
                        for (Syncer syncer : mo27759a) {
                            syncer.onSyncStart();
                        }
                        Iterator<Syncer> it2 = mo27759a.iterator();
                        loop3: while (true) {
                            boolean z4 = false;
                            while (true) {
                                z3 = z4;
                                if (!it2.hasNext()) {
                                    break loop3;
                                }
                                Syncer next = it2.next();
                                if (z3 || next.isSyncEnabled()) {
                                    z4 = true;
                                }
                            }
                        }
                        if (!z3) {
                            CLog.m27611a(getClass(), "All syncers disabled, terminating sync...");
                            for (Synchronizers synchronizers : Synchronizers.values()) {
                                synchronizers.syncer.destroy();
                            }
                            CLog.m27611a(getClass(), "END OF SERVICE AFTER " + ((System.currentTimeMillis() - currentTimeMillis) / 1000) + " SECS");
                            this.f27596g = null;
                            this.f27594e = null;
                            this.f27597h = null;
                            mo27762a(false);
                            CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                            return;
                        }
                        this.f27591b = 0;
                        int size = this.f27596g.size();
                        this.f27592c = size;
                        if (size > 0) {
                            Prefs.f26317bo.set(Integer.valueOf(this.f27592c));
                        }
                        this.f27595f = new CountDownLatch(this.f27592c);
                        FeedbackManager.get().m28670a("Sync started!", 80);
                        boolean m27771a = m27771a(syncContext, mo27759a);
                        try {
                            if (m27771a) {
                                CLog.m27611a(getClass(), "Waiting for sync threads...");
                                this.f27595f.await();
                            } else {
                                CLog.m27611a(getClass(), "Sync stopped, NOT waiting for sync threads");
                            }
                            CLog.m27611a(getClass(), "Ending sync...");
                            z2 = m27768a(m27771a, application, mo27759a);
                            try {
                                for (Synchronizers synchronizers2 : Synchronizers.values()) {
                                    synchronizers2.syncer.destroy();
                                }
                                CLog.m27611a(getClass(), "END OF SERVICE AFTER " + ((System.currentTimeMillis() - currentTimeMillis) / 1000) + " SECS");
                                this.f27596g = null;
                                this.f27594e = null;
                                this.f27597h = null;
                                mo27762a(z2);
                                CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                return;
                            } catch (Exception e2) {
                                e = e2;
                                CrashlyticsUtils.m27547a(e);
                                z = z2;
                                CLog.m27596b(getClass(), e);
                                this.f27596g = null;
                                this.f27594e = null;
                                this.f27597h = null;
                                mo27762a(z2);
                                CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                return;
                            } catch (Throwable th3) {
                                th = th3;
                                z = z2;
                                this.f27596g = null;
                                this.f27594e = null;
                                this.f27597h = null;
                                mo27762a(z);
                                CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th2 = th4;
                            z2 = m27771a;
                            z = z2;
                            try {
                                try {
                                    boolean z5 = z2;
                                    for (Synchronizers synchronizers3 : Synchronizers.values()) {
                                        synchronizers3.syncer.destroy();
                                    }
                                    boolean z6 = z2;
                                    StringBuilder sb = new StringBuilder("END OF SERVICE AFTER ");
                                    boolean z7 = z2;
                                    sb.append((System.currentTimeMillis() - currentTimeMillis) / 1000);
                                    boolean z8 = z2;
                                    sb.append(" SECS");
                                    boolean z9 = z2;
                                    String sb2 = sb.toString();
                                    boolean z10 = z2;
                                    CLog.m27611a(getClass(), sb2);
                                    boolean z11 = z2;
                                    throw th2;
                                } catch (Exception e3) {
                                    e = e3;
                                    CrashlyticsUtils.m27547a(e);
                                    z = z2;
                                    CLog.m27596b(getClass(), e);
                                    this.f27596g = null;
                                    this.f27594e = null;
                                    this.f27597h = null;
                                    mo27762a(z2);
                                    CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                    return;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                this.f27596g = null;
                                this.f27594e = null;
                                this.f27597h = null;
                                mo27762a(z);
                                CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                throw th;
                            }
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        z2 = false;
                    }
                }
                CLog.m27611a(getClass(), "All syncers disabled, terminating sync...");
                this.f27596g = null;
                this.f27594e = null;
                this.f27597h = null;
                mo27762a(false);
                CLog.m27611a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
            } catch (Exception e4) {
                e = e4;
                z2 = false;
            } catch (Throwable th7) {
                th = th7;
                z = false;
            }
        }
    }

    /* renamed from: a */
    protected void mo27764a(int i, int i2) {
    }

    /* renamed from: a */
    public void mo27762a(boolean z) {
        FeedbackManager.get().m28670a("Sync end!", 80);
        Singletons.get().getWifiLockManager().m28452b();
        Singletons.get().setHelpersFromSync(false);
        if (z) {
            mo27757d();
        }
    }

    /* renamed from: a */
    public boolean mo27760a(Context context) {
        PermissionManager.get();
        if (PermissionManager.m28253a("android.permission.READ_CONTACTS")) {
            PermissionManager.get();
            if (PermissionManager.m28253a("android.permission.READ_CALL_LOG") && SetupWizardActivity.getCurrentSetupStage().ordinal() >= SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE.ordinal()) {
                return false;
            }
        }
        CLog.m27611a(getClass(), "Setup not completed yet, terminating sync...");
        return true;
    }

    /* renamed from: b */
    public void mo27761b() {
        FeedbackManager.get().m28670a("Try perform sync", 80);
        Singletons.get().getWifiLockManager().m28453a();
        Singletons.get().setHelpersFromSync(true);
        mo27758c();
        ScreenOffReceiver.m27889b(CallAppApplication.get());
    }

    /* renamed from: c */
    protected abstract void mo27758c();

    /* renamed from: d */
    protected abstract void mo27757d();

    /* renamed from: e */
    public final void m27765e() {
        getService().stopForeground(true);
        NotificationManager notificationManager = NotificationManager.get();
        C0745g.C0751e m28557a = notificationManager.m28557a(NotificationManager.NotificationChannelEnum.SYNC_PROGRESS_NOTIFICATION_CHANNEL);
        String string = Activities.getString(2131887759);
        m28557a.m44571a(string).m44567b(Activities.getString(2131886907)).m44581a(2131231569).m44570a(true);
        m28557a.f3335f = PendingIntent.getActivity(Singletons.get().getApplication(), 0, new Intent(Singletons.get().getApplication(), ContactsListActivity.class).setFlags(268435456).addFlags(536870912), 134217728);
        m28557a.m44575a(RingtoneManager.getDefaultUri(2));
        m28557a.m44568b(7);
        m28557a.f3341l = 0;
        notificationManager.m28573a(8, m28557a);
    }

    public Context getContext() {
        return this.f27593d;
    }

    public RealSyncService getService() {
        return (RealSyncService) this.f27593d;
    }
}
