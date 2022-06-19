package com.callcontrol.datashare;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import com.mopub.network.ImpressionData;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/SyncAppsProvider.class */
public class SyncAppsProvider extends ContentProvider {

    /* renamed from: b */
    public static String f2408b = "com.callcontrol.import";

    /* renamed from: c */
    public static String f2409c = "com.callcontrolhome";

    /* renamed from: d */
    public static String f2410d = "com.callcontrolhomewifi";

    /* renamed from: f */
    public static final String[] f2411f = {"type", ImpressionData.COUNTRY, "international", "address", "cchInternational", "cchLocal", "name", "contentType", "blockMode", "permissionType", "modifiedAt"};

    /* renamed from: g */
    public static final mm1<EnumC0330e> f2412g;

    /* renamed from: a */
    public String f2413a = "";

    /* renamed from: com.callcontrol.datashare.SyncAppsProvider$b */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/SyncAppsProvider$b.class */
    public static /* synthetic */ class C0327b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2414a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0330e.values().length];
            f2414a = iArr;
            try {
                iArr[EnumC0330e.URI_REQUEST_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2414a[EnumC0330e.URI_GET_RULES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.callcontrol.datashare.SyncAppsProvider$c */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/SyncAppsProvider$c.class */
    public abstract class AbstractC0328c {
        public AbstractC0328c(SyncAppsProvider syncAppsProvider) {
        }

        /* renamed from: a */
        public abstract void m5268a();
    }

    /* renamed from: com.callcontrol.datashare.SyncAppsProvider$d */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/SyncAppsProvider$d.class */
    public static class AsyncTaskC0329d extends AsyncTask<AbstractC0328c, Void, Void> {

        /* renamed from: a */
        public CountDownLatch f2415a;

        public AsyncTaskC0329d() {
            this.f2415a = new CountDownLatch(1);
        }

        /* renamed from: b */
        public Void doInBackground(AbstractC0328c... abstractC0328cArr) {
            for (AbstractC0328c abstractC0328c : abstractC0328cArr) {
                abstractC0328c.m5268a();
            }
            return null;
        }

        /* renamed from: c */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f2415a.countDown();
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            this.f2415a.countDown();
        }
    }

    /* renamed from: com.callcontrol.datashare.SyncAppsProvider$e */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/SyncAppsProvider$e.class */
    public enum EnumC0330e {
        URI_REQUEST_TOKEN,
        URI_GET_DEVICES,
        URI_GET_RULES
    }

    static {
        mm1<EnumC0330e> mm1Var = new mm1<>(EnumC0330e.class, -1);
        f2412g = mm1Var;
        mm1Var.m1230a("com.callcontrol.syncapps", "rules", EnumC0330e.URI_GET_RULES);
        mm1Var.m1230a("com.callcontrol.syncapps", "token", EnumC0330e.URI_REQUEST_TOKEN);
    }

    /* renamed from: b */
    public final Cursor m5271b(String str, String str2, String[] strArr) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"token"}, 1);
        j91.m1499q(this, "Doing get connect token request");
        AsyncTaskC0329d asyncTaskC0329d = new AsyncTaskC0329d();
        asyncTaskC0329d.execute(new a(this));
        try {
            asyncTaskC0329d.f2415a.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (TextUtils.isEmpty(this.f2413a)) {
            return null;
        }
        matrixCursor.addRow(new String[]{this.f2413a});
        return matrixCursor;
    }

    /* renamed from: c */
    public final Cursor m5270c() {
        MatrixCursor matrixCursor = new MatrixCursor(f2411f, 1);
        Cursor m374m = new x81().m374m();
        if (m374m == null) {
            return null;
        }
        if (m374m.getCount() == 0) {
            m374m.close();
            return null;
        }
        m374m.moveToFirst();
        do {
            Object[] m163J = new x81().m163J(m374m);
            if (m163J != null) {
                matrixCursor.addRow(m163J);
            }
        } while (m374m.moveToNext());
        m374m.close();
        return matrixCursor;
    }

    /* renamed from: d */
    public final String m5269d(EnumC0330e enumC0330e) {
        Bundle bundle;
        int callingUid = Binder.getCallingUid();
        if (callingUid != Process.myUid()) {
            Context context = getContext();
            if (context == null) {
                throw new SecurityException("Call without context");
            }
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                throw new SecurityException("Unable to verify");
            }
            String nameForUid = packageManager.getNameForUid(callingUid);
            if (nameForUid == null) {
                throw new SecurityException("Unable to verify");
            }
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(nameForUid, 128);
                if ((applicationInfo.packageName.equals(f2409c) || applicationInfo.packageName.equals(f2410d)) && (bundle = applicationInfo.metaData) != null && bundle.getBoolean(f2408b, false)) {
                    return nameForUid;
                }
                throw new SecurityException("Not allowed by Call Control Company");
            } catch (PackageManager.NameNotFoundException e) {
                throw new SecurityException("Unable to verify");
            }
        }
        throw new SecurityException("Access rights violation");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        EnumC0330e m1229b = f2412g.m1229b(uri);
        if (m1229b == null) {
            return null;
        }
        int i = C0327b.f2414a[m1229b.ordinal()];
        if (i == 1) {
            return "vnd.android.cursor.item/connect_token_result";
        }
        if (i == 2) {
            return "vnd.android.cursor.item/rules_result";
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        s71.m618e();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        EnumC0330e m1229b = f2412g.m1229b(uri);
        if (m1229b == null) {
            throw new IllegalStateException(uri.toString() + " is not allowed for query");
        }
        String m5269d = m5269d(m1229b);
        int i = C0327b.f2414a[m1229b.ordinal()];
        if (i == 1) {
            return m5271b(m5269d, str, strArr2);
        }
        if (i == 2) {
            return m5270c();
        }
        throw new IllegalStateException(uri.toString() + " is not allowed for query");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
