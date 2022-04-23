package com.callapp.contacts.sync.service;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.text.format.DateUtils;
import androidx.core.app.g;
import b.a;
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
import kotlinx.coroutines.bk;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/BaseSyncAdapter.class */
public abstract class BaseSyncAdapter {

    /* renamed from: a  reason: collision with root package name */
    boolean f15775a = false;

    /* renamed from: b  reason: collision with root package name */
    int f15776b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected int f15777c;

    /* renamed from: d  reason: collision with root package name */
    protected final Context f15778d;
    private List<FavoriteMemoryContactItem> e;
    private CountDownLatch f;
    private ArrayList<ContactData> g;
    private HashMap<String, Integer> h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseSyncAdapter(Context context) {
        this.f15778d = context;
    }

    public static void a(Throwable th, Class<?> cls) {
        CLog.b(cls, th);
    }

    private boolean a(final SyncContext syncContext, final List<Syncer> list) {
        boolean z;
        bk bkVar;
        Iterator<ContactData> it2 = this.g.iterator();
        while (it2.hasNext()) {
            final ContactData next = it2.next();
            final int i = this.f15776b + 1;
            this.f15776b = i;
            if (a(Singletons.get().getApplication())) {
                return false;
            }
            Iterator<Syncer> it3 = list.iterator();
            while (true) {
                if (it3.hasNext()) {
                    if (it3.next().shouldSyncContact(next)) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                CLog.a(getClass(), "Skipping %s/%s (%s,'%s')", Integer.valueOf(i), Integer.valueOf(this.f15777c), Long.valueOf(next.getDeviceId()), next.getFullName());
                this.f.countDown();
            } else {
                a.C0124a aVar = a.f6247a;
                bkVar = a.f6249c;
                new Task(bkVar) { // from class: com.callapp.contacts.sync.service.BaseSyncAdapter.1
                    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a0, code lost:
                        r0 = r8.e;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ad, code lost:
                        if (r0.a(r0.f15778d) != false) goto L_0x01ce;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:53:0x01c3, code lost:
                        if (r6 < (r8.e.e.size() + 20)) goto L_0x01ce;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:54:0x01c6, code lost:
                        r8.e.f15775a = true;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:56:0x01cf, code lost:
                        if (r0 == null) goto L_0x0115;
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
                        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.service.BaseSyncAdapter.AnonymousClass1.doTask():void");
                    }

                    @Override // com.callapp.contacts.manager.task.Task
                    public void onError(Throwable th) {
                        BaseSyncAdapter.a(th, getClass());
                    }
                }.execute();
            }
        }
        return true;
    }

    private boolean a(boolean z, Application application, List<Syncer> list) {
        boolean z2;
        if (!a(application)) {
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

    protected abstract List<Syncer> a(SyncContext syncContext);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
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
                CLog.a(getClass(), "Sync started ===");
                long currentTimeMillis = System.currentTimeMillis();
                Application application = Singletons.get().getApplication();
                ExceptionManager exceptionManager = Singletons.get().getExceptionManager();
                exceptionManager.f14839b.clear();
                exceptionManager.f14838a = false;
                b();
                if (a(application)) {
                    this.g = null;
                    this.e = null;
                    this.h = null;
                    a(false);
                    CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                    return;
                }
                syncContext.context = application;
                syncContext.contentResolver = application.getContentResolver();
                syncContext.syncData = SyncManager.getSyncData();
                List<Syncer> a2 = a(syncContext);
                syncContext.syncers = a2;
                if (!CollectionUtils.a(a2) && a2.size() != 1) {
                    syncContext.contactItems = ContactUtils.a(true);
                    this.e = ContactUtils.getFavoriteContacts();
                    ArrayList<MemoryContactItem> arrayList = new ArrayList();
                    arrayList.addAll(syncContext.contactItems);
                    arrayList.removeAll(this.e);
                    arrayList.addAll(0, this.e);
                    this.g = new ArrayList<>();
                    syncContext.allContacts = new HashMap();
                    syncContext.favoriteContacts = new HashMap();
                    syncContext.frequentlyCalledContacts = new HashMap();
                    this.h = new HashMap<>();
                    for (MemoryContactItem memoryContactItem : arrayList) {
                        Phone a3 = PhoneManager.get().a(memoryContactItem.normalNumbers.iterator().next());
                        if (!PhoneManager.get().a(a3)) {
                            ContactData contactData = new ContactData(a3, memoryContactItem.contactId, null);
                            contactData.assertDeviceDataExist();
                            DeviceData deviceData = contactData.getDeviceData();
                            deviceData.setDeviceId(memoryContactItem.contactId);
                            deviceData.setFullName(memoryContactItem.displayName);
                            if (CollectionUtils.b(memoryContactItem.f12646d)) {
                                deviceData.setEmails(memoryContactItem.f12646d);
                            }
                            contactData.updateFullName();
                            contactData.updateNames();
                            contactData.updateEmails();
                            long deviceId = contactData.getDeviceId();
                            if (!syncContext.allContacts.containsKey(Long.valueOf(deviceId)) || (!syncContext.favoriteContacts.containsKey(Long.valueOf(deviceId)) && !syncContext.frequentlyCalledContacts.containsKey(Long.valueOf(deviceId)))) {
                                this.g.add(contactData);
                            } else {
                                ContactData contactData2 = syncContext.favoriteContacts.get(Long.valueOf(deviceId));
                                ContactData contactData3 = contactData2;
                                if (contactData2 == null) {
                                    contactData3 = syncContext.frequentlyCalledContacts.get(Long.valueOf(deviceId));
                                }
                                if (contactData3 != null) {
                                    this.g.remove(contactData3);
                                }
                                this.g.add(0, contactData);
                            }
                            syncContext.allContacts.put(Long.valueOf(memoryContactItem.contactId), contactData);
                            if (this.e.contains(memoryContactItem)) {
                                syncContext.favoriteContacts.put(Long.valueOf(memoryContactItem.contactId), contactData);
                            }
                            for (String str : contactData.getFullName().split(StringUtils.SPACE)) {
                                this.h.put(str, Integer.valueOf((this.h.containsKey(str) ? this.h.get(str).intValue() : 0) + 1));
                            }
                        }
                    }
                    try {
                        for (Syncer syncer : a2) {
                            syncer.onSyncStart();
                        }
                        loop3: while (true) {
                            z3 = false;
                            for (Syncer syncer2 : a2) {
                                if (z3 || syncer2.isSyncEnabled()) {
                                    z3 = true;
                                }
                            }
                        }
                        if (!z3) {
                            CLog.a(getClass(), "All syncers disabled, terminating sync...");
                            for (Synchronizers synchronizers : Synchronizers.values()) {
                                synchronizers.syncer.destroy();
                            }
                            CLog.a(getClass(), "END OF SERVICE AFTER " + ((System.currentTimeMillis() - currentTimeMillis) / 1000) + " SECS");
                            this.g = null;
                            this.e = null;
                            this.h = null;
                            a(false);
                            CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                            return;
                        }
                        this.f15776b = 0;
                        int size = this.g.size();
                        this.f15777c = size;
                        if (size > 0) {
                            Prefs.bo.set(Integer.valueOf(this.f15777c));
                        }
                        this.f = new CountDownLatch(this.f15777c);
                        FeedbackManager.get().a("Sync started!", 80);
                        boolean a4 = a(syncContext, a2);
                        try {
                            if (a4) {
                                CLog.a(getClass(), "Waiting for sync threads...");
                                this.f.await();
                            } else {
                                CLog.a(getClass(), "Sync stopped, NOT waiting for sync threads");
                            }
                            CLog.a(getClass(), "Ending sync...");
                            z2 = a(a4, application, a2);
                            try {
                                for (Synchronizers synchronizers2 : Synchronizers.values()) {
                                    synchronizers2.syncer.destroy();
                                }
                                CLog.a(getClass(), "END OF SERVICE AFTER " + ((System.currentTimeMillis() - currentTimeMillis) / 1000) + " SECS");
                                this.g = null;
                                this.e = null;
                                this.h = null;
                                a(z2);
                                CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                return;
                            } catch (Exception e2) {
                                e = e2;
                                CrashlyticsUtils.a(e);
                                z = z2;
                                CLog.b(getClass(), e);
                                this.g = null;
                                this.e = null;
                                this.h = null;
                                a(z2);
                                CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                return;
                            } catch (Throwable th3) {
                                th = th3;
                                z = z2;
                                this.g = null;
                                this.e = null;
                                this.h = null;
                                a(z);
                                CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th2 = th4;
                            z2 = a4;
                            z = z2;
                            try {
                                try {
                                    for (Synchronizers synchronizers3 : Synchronizers.values()) {
                                        synchronizers3.syncer.destroy();
                                    }
                                    StringBuilder sb = new StringBuilder("END OF SERVICE AFTER ");
                                    sb.append((System.currentTimeMillis() - currentTimeMillis) / 1000);
                                    sb.append(" SECS");
                                    CLog.a(getClass(), sb.toString());
                                    throw th2;
                                } catch (Exception e3) {
                                    e = e3;
                                    CrashlyticsUtils.a(e);
                                    z = z2;
                                    CLog.b(getClass(), e);
                                    this.g = null;
                                    this.e = null;
                                    this.h = null;
                                    a(z2);
                                    CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                    return;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                this.g = null;
                                this.e = null;
                                this.h = null;
                                a(z);
                                CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
                                throw th;
                            }
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        z2 = false;
                    }
                }
                CLog.a(getClass(), "All syncers disabled, terminating sync...");
                this.g = null;
                this.e = null;
                this.h = null;
                a(false);
                CLog.a(getClass(), String.format("Sync ended after  === %s ===", DateUtils.getRelativeTimeSpanString(syncContext.startDate)));
            } catch (Exception e4) {
                e = e4;
                z2 = false;
            } catch (Throwable th7) {
                th = th7;
                z = false;
            }
        }
    }

    protected void a(int i, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        FeedbackManager.get().a("Sync end!", 80);
        Singletons.get().getWifiLockManager().b();
        Singletons.get().setHelpersFromSync(false);
        if (z) {
            d();
        }
    }

    public boolean a(Context context) {
        PermissionManager.get();
        if (PermissionManager.a("android.permission.READ_CONTACTS")) {
            PermissionManager.get();
            if (PermissionManager.a("android.permission.READ_CALL_LOG") && SetupWizardActivity.getCurrentSetupStage().ordinal() >= SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE.ordinal()) {
                return false;
            }
        }
        CLog.a(getClass(), "Setup not completed yet, terminating sync...");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        FeedbackManager.get().a("Try perform sync", 80);
        Singletons.get().getWifiLockManager().a();
        Singletons.get().setHelpersFromSync(true);
        c();
        ScreenOffReceiver.b(CallAppApplication.get());
    }

    protected abstract void c();

    protected abstract void d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        getService().stopForeground(true);
        NotificationManager notificationManager = NotificationManager.get();
        g.e a2 = notificationManager.a(NotificationManager.NotificationChannelEnum.SYNC_PROGRESS_NOTIFICATION_CHANNEL);
        String string = Activities.getString(2131887759);
        a2.a(string).b(Activities.getString(2131886907)).a(2131231569).a(true);
        a2.f = PendingIntent.getActivity(Singletons.get().getApplication(), 0, new Intent(Singletons.get().getApplication(), ContactsListActivity.class).setFlags(268435456).addFlags(536870912), 134217728);
        a2.a(RingtoneManager.getDefaultUri(2));
        a2.b(7);
        a2.l = 0;
        notificationManager.a(8, a2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.f15778d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RealSyncService getService() {
        return (RealSyncService) this.f15778d;
    }
}
