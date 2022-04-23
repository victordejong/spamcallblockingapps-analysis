package com.callapp.contacts.util;

import android.accounts.Account;
import android.content.Context;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.b;
import com.google.api.client.googleapis.extensions.android.gms.auth.a;
import java.io.IOException;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/GooglePlayUtils.class */
public class GooglePlayUtils {

    /* renamed from: a  reason: collision with root package name */
    private static int f15882a = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/GooglePlayUtils$GetTokenTask.class */
    public static final class GetTokenTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final Collection<String> f15883a;

        /* renamed from: b  reason: collision with root package name */
        private final Account f15884b;

        /* renamed from: c  reason: collision with root package name */
        private Exception f15885c;

        /* renamed from: d  reason: collision with root package name */
        private String f15886d;
        private boolean e;

        private GetTokenTask(String str, Collection<String> collection) {
            this.f15883a = collection;
            this.f15884b = new Account(str, "com.google");
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            try {
                this.f15886d = GooglePlayUtils.a(this.f15884b, this.f15883a);
                this.e = true;
            } catch (GoogleAuthException | IOException e) {
                this.f15885c = e;
            }
        }

        public final Exception getException() {
            return this.f15885c;
        }

        public final String getToken() {
            return this.f15886d;
        }

        public final boolean isFinishSuccessfully() {
            return this.e;
        }
    }

    static /* synthetic */ String a(Account account, Collection collection) throws UserRecoverableAuthException, IOException, GoogleAuthException {
        return a.a(CallAppApplication.get(), collection).a(account).a();
    }

    public static String a(Context context) {
        String str;
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            str = null;
            if (advertisingIdInfo != null) {
                str = advertisingIdInfo.getId();
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            CLog.a(GooglePlayUtils.class, "Error getting GoogleAdvertisingId".concat(String.valueOf(e)));
            str = null;
        }
        return str;
    }

    public static String a(String str, Collection<String> collection) throws UserRecoverableAuthException, IOException, GoogleAuthException {
        GetTokenTask getTokenTask = new GetTokenTask(str, collection);
        String str2 = null;
        if (getTokenTask.await(10000L)) {
            Exception exception = getTokenTask.getException();
            if (exception == null) {
                if (getTokenTask.isFinishSuccessfully()) {
                    str2 = getTokenTask.getToken();
                } else {
                    AnalyticsManager.get().a(Constants.FAILED, "getToken from google play failed");
                    str2 = null;
                }
            } else if (exception instanceof UserRecoverableAuthException) {
                throw ((UserRecoverableAuthException) exception);
            } else if (exception instanceof IOException) {
                throw ((IOException) exception);
            } else if (!(exception instanceof GoogleAuthException)) {
                str2 = null;
            } else {
                throw ((GoogleAuthException) exception);
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(android.content.Context r9) {
        /*
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x0053, RuntimeException -> 0x0059
            java.lang.String r1 = "content://com.google.android.gsf.gservices"
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: all -> 0x0053, RuntimeException -> 0x0059
            r2 = 0
            r3 = 0
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: all -> 0x0053, RuntimeException -> 0x0059
            r5 = r4
            r6 = 0
            java.lang.String r7 = "android_id"
            r5[r6] = r7     // Catch: all -> 0x0053, RuntimeException -> 0x0059
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x0053, RuntimeException -> 0x0059
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: RuntimeException -> 0x004f, all -> 0x0072
            if (r0 == 0) goto L_0x0049
            r0 = r10
            r9 = r0
            r0 = r10
            int r0 = r0.getColumnCount()     // Catch: RuntimeException -> 0x004f, all -> 0x0072
            r1 = 2
            if (r0 >= r1) goto L_0x0033
            goto L_0x0049
        L_0x0033:
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = 1
            java.lang.String r0 = r0.getString(r1)     // Catch: RuntimeException -> 0x004f, all -> 0x0072
            long r0 = java.lang.Long.parseLong(r0)     // Catch: RuntimeException -> 0x004f, all -> 0x0072
            java.lang.String r0 = java.lang.Long.toHexString(r0)     // Catch: RuntimeException -> 0x004f, all -> 0x0072
            r11 = r0
            r0 = r10
            com.callapp.contacts.util.IoUtils.a(r0)
            r0 = r11
            return r0
        L_0x0049:
            r0 = r10
            com.callapp.contacts.util.IoUtils.a(r0)
            r0 = 0
            return r0
        L_0x004f:
            r11 = move-exception
            goto L_0x005c
        L_0x0053:
            r9 = move-exception
            r0 = 0
            r10 = r0
            goto L_0x0077
        L_0x0059:
            r11 = move-exception
            r0 = 0
            r10 = r0
        L_0x005c:
            r0 = r10
            r9 = r0
            java.lang.Class<com.callapp.contacts.util.GooglePlayUtils> r0 = com.callapp.contacts.util.GooglePlayUtils.class
            java.lang.String r1 = "Error getting GoogleServiceFrameworkId"
            r2 = r11
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: all -> 0x0072
            java.lang.String r1 = r1.concat(r2)     // Catch: all -> 0x0072
            com.callapp.contacts.util.CLog.a(r0, r1)     // Catch: all -> 0x0072
            r0 = r10
            com.callapp.contacts.util.IoUtils.a(r0)
            r0 = 0
            return r0
        L_0x0072:
            r11 = move-exception
            r0 = r9
            r10 = r0
            r0 = r11
            r9 = r0
        L_0x0077:
            r0 = r10
            com.callapp.contacts.util.IoUtils.a(r0)
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.GooglePlayUtils.b(android.content.Context):java.lang.String");
    }

    public static boolean isGooglePlayServicesAvailable() {
        int i = f15882a;
        if (i == 0) {
            return true;
        }
        if (i != -1) {
            return false;
        }
        try {
            int a2 = b.a().a(CallAppApplication.get());
            f15882a = a2;
            return a2 == 0;
        } catch (Exception e) {
            return false;
        }
    }
}
