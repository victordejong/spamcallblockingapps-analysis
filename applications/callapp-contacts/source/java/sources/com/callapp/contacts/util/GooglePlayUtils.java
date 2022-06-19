package com.callapp.contacts.util;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.api.client.googleapis.extensions.android.gms.auth.C15288a;
import java.io.IOException;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/GooglePlayUtils.class */
public class GooglePlayUtils {

    /* renamed from: a */
    private static int f27724a = -1;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/GooglePlayUtils$GetTokenTask.class */
    public static final class GetTokenTask extends Task {

        /* renamed from: a */
        private final Collection<String> f27725a;

        /* renamed from: b */
        private final Account f27726b;

        /* renamed from: c */
        private Exception f27727c;

        /* renamed from: d */
        private String f27728d;

        /* renamed from: e */
        private boolean f27729e;

        private GetTokenTask(String str, Collection<String> collection) {
            this.f27725a = collection;
            this.f27726b = new Account(str, "com.google");
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            try {
                this.f27728d = GooglePlayUtils.m27542a(this.f27726b, this.f27725a);
                this.f27729e = true;
            } catch (GoogleAuthException | IOException e) {
                this.f27727c = e;
            }
        }

        public final Exception getException() {
            return this.f27727c;
        }

        public final String getToken() {
            return this.f27728d;
        }

        public final boolean isFinishSuccessfully() {
            return this.f27729e;
        }
    }

    /* renamed from: a */
    static /* synthetic */ String m27542a(Account account, Collection collection) throws UserRecoverableAuthException, IOException, GoogleAuthException {
        return C15288a.m9160a(CallAppApplication.get(), collection).m9161a(account).m9162a();
    }

    /* renamed from: a */
    public static String m27541a(Context context) {
        String str;
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            str = null;
            if (advertisingIdInfo != null) {
                str = advertisingIdInfo.getId();
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            CLog.m27611a(GooglePlayUtils.class, "Error getting GoogleAdvertisingId".concat(String.valueOf(e)));
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    public static String m27540a(String str, Collection<String> collection) throws UserRecoverableAuthException, IOException, GoogleAuthException {
        GetTokenTask getTokenTask = new GetTokenTask(str, collection);
        String str2 = null;
        if (getTokenTask.await(10000L)) {
            Exception exception = getTokenTask.getException();
            if (exception == null) {
                if (getTokenTask.isFinishSuccessfully()) {
                    str2 = getTokenTask.getToken();
                } else {
                    AnalyticsManager.get().m28450a(Constants.FAILED, "getToken from google play failed");
                    str2 = null;
                }
            } else if (exception instanceof UserRecoverableAuthException) {
                throw ((UserRecoverableAuthException) exception);
            } else {
                if (exception instanceof IOException) {
                    throw ((IOException) exception);
                }
                if (exception instanceof GoogleAuthException) {
                    throw ((GoogleAuthException) exception);
                }
                str2 = null;
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.Cursor] */
    /* renamed from: b */
    public static String m27539b(Context context) {
        Context context2;
        Throwable th;
        RuntimeException e;
        Cursor cursor;
        try {
            try {
                cursor = context.getContentResolver().query(Uri.parse("content://com.google.android.gsf.gservices"), null, null, new String[]{"android_id"}, null);
                try {
                    if (cursor.moveToFirst() && cursor.getColumnCount() >= 2) {
                        String hexString = Long.toHexString(Long.parseLong(cursor.getString(1)));
                        IoUtils.m27517a(cursor);
                        return hexString;
                    }
                    IoUtils.m27517a(cursor);
                    return null;
                } catch (RuntimeException e2) {
                    e = e2;
                    CLog.m27611a(GooglePlayUtils.class, "Error getting GoogleServiceFrameworkId".concat(String.valueOf(e)));
                    IoUtils.m27517a(cursor);
                    return null;
                }
            } catch (Throwable th2) {
                context2 = context;
                th = th2;
                IoUtils.m27517a((Cursor) context2);
                throw th;
            }
        } catch (RuntimeException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            context2 = null;
            IoUtils.m27517a((Cursor) context2);
            throw th;
        }
    }

    public static boolean isGooglePlayServicesAvailable() {
        int i = f27724a;
        if (i == 0) {
            return true;
        }
        if (i != -1) {
            return false;
        }
        try {
            int mo19275a = C11937b.m19287a().mo19275a(CallAppApplication.get());
            f27724a = mo19275a;
            return mo19275a == 0;
        } catch (Exception e) {
            return false;
        }
    }
}
