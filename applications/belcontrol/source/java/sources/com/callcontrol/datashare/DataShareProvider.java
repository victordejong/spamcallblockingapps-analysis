package com.callcontrol.datashare;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.Process;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import p000.fa1;
import p000.n91;
import p000.q71;
import p000.r71;
import p000.r81;
import z7;
/* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/DataShareProvider.class */
public class DataShareProvider extends ContentProvider {

    /* renamed from: a */
    public static final mm1<r81.EnumC1641b> f2405a;

    /* renamed from: com.callcontrol.datashare.DataShareProvider$b */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/DataShareProvider$b.class */
    public static /* synthetic */ class C0324b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2406a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[r81.EnumC1641b.values().length];
            f2406a = iArr;
            try {
                iArr[r81.EnumC1641b.URI_REQUEST_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2406a[r81.EnumC1641b.URI_LOOKUP_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2406a[r81.EnumC1641b.URI_LOOKUP_TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.callcontrol.datashare.DataShareProvider$c */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/DataShareProvider$c.class */
    public abstract class AbstractC0325c {
        public AbstractC0325c(DataShareProvider dataShareProvider) {
        }

        /* renamed from: a */
        public abstract void m5276a();
    }

    /* renamed from: com.callcontrol.datashare.DataShareProvider$d */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/datashare/DataShareProvider$d.class */
    public static class AsyncTaskC0326d extends AsyncTask<AbstractC0325c, Void, Void> {

        /* renamed from: a */
        public CountDownLatch f2407a;

        public AsyncTaskC0326d() {
            this.f2407a = new CountDownLatch(1);
        }

        /* renamed from: b */
        public Void doInBackground(AbstractC0325c... abstractC0325cArr) {
            for (AbstractC0325c abstractC0325c : abstractC0325cArr) {
                abstractC0325c.m5276a();
            }
            return null;
        }

        /* renamed from: c */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f2407a.countDown();
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            this.f2407a.countDown();
        }
    }

    static {
        mm1<r81.EnumC1641b> mm1Var = new mm1<>(r81.EnumC1641b.class, -1);
        f2405a = mm1Var;
        mm1Var.m1230a("com.callcontrol.datashare", "lookup/call/*", r81.EnumC1641b.URI_LOOKUP_CALL);
        mm1Var.m1230a("com.callcontrol.datashare", "lookup/text/*", r81.EnumC1641b.URI_LOOKUP_TEXT);
        mm1Var.m1230a("com.callcontrol.datashare", "token", r81.EnumC1641b.URI_REQUEST_TOKEN);
    }

    /* renamed from: a */
    public final Object[] m5281a(String[] strArr, String[] strArr2, Object[] objArr) {
        if (strArr.length == objArr.length) {
            if (strArr2.length == strArr.length) {
                return objArr;
            }
            Object[] objArr2 = new Object[strArr2.length];
            List asList = Arrays.asList(strArr2);
            int length = strArr.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (asList.contains(strArr[i2])) {
                    objArr2[i] = objArr[i2];
                    i++;
                }
            }
            return objArr2;
        }
        throw new InvalidParameterException("Count of default set of columns must match the provided values!");
    }

    /* renamed from: b */
    public final String[] m5280b(String[] strArr, String[] strArr2) {
        if (strArr == null) {
            return strArr2;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        List asList = Arrays.asList(strArr2);
        for (String str : strArr) {
            if (asList.contains(str)) {
                arrayList.add(str);
            }
        }
        return arrayList.isEmpty() ? strArr2 : (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: c */
    public final Cursor m5279c(String str, String str2, String[] strArr) {
        if (str2 == null || !str2.equals("ts = ?") || strArr == null || strArr.length != 1) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"token"}, 1);
        String m669L = r81.m669L(str, strArr[0]);
        if (m669L == null) {
            return null;
        }
        matrixCursor.addRow(new String[]{m669L});
        return matrixCursor;
    }

    /* renamed from: d */
    public final Cursor m5278d(Uri uri, q71.EnumC1618e enumC1618e, String[] strArr) {
        boolean z;
        String[] strArr2 = {"name", "reason"};
        String[] m5280b = m5280b(strArr, strArr2);
        int length = m5280b.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (m5280b[i].equals("name")) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        MatrixCursor matrixCursor = new MatrixCursor(m5280b, 1);
        Context context = getContext();
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment != null && !lastPathSegment.trim().isEmpty() && context != null) {
            i91 m1800o = fa1.C1420e.m1800o(lastPathSegment);
            n91.C1485b m1216a = n91.m1216a(m1800o, enumC1618e);
            String str = null;
            if (z && m1216a.f7086f == null) {
                u81 u81Var = new u81();
                u81Var.m413F(m1800o, null);
                m1216a.f7086f = u81Var.f8288d;
            }
            if (z && m1216a.f7086f == null && r71.EnumC1638a.f7909M0.m695a()) {
                j91.m1499q(this, "Doing server lookup");
                AsyncTaskC0326d asyncTaskC0326d = new AsyncTaskC0326d();
                asyncTaskC0326d.execute(new a(this, m1800o, m1216a));
                try {
                    asyncTaskC0326d.f2407a.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            String str2 = m1216a.f7086f;
            if (m1216a.f7083b) {
                str = context.getString(m1216a.f7082a.m1214a());
            }
            matrixCursor.addRow(m5281a(strArr2, m5280b, new Object[]{str2, str}));
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    /* renamed from: e */
    public final String m5277e(r81.EnumC1641b enumC1641b) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != Process.myUid()) {
            Context context = getContext();
            if (context == null) {
                throw new SecurityException("Call without context");
            }
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                throw new SecurityException("Unable to verify package");
            }
            String nameForUid = packageManager.getNameForUid(callingUid);
            if (nameForUid == null) {
                throw new SecurityException("Unable to verify package");
            }
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(nameForUid, 128);
                String charSequence = packageManager.getApplicationLabel(applicationInfo).toString();
                if (r71.m713i(applicationInfo.packageName)) {
                    throw new SecurityException("This app is blocked by Call Control Company");
                }
                Bundle bundle = applicationInfo.metaData;
                if (bundle == null) {
                    throw new SecurityException("Manifest must declare at least one integration category!");
                }
                if (enumC1641b == r81.EnumC1641b.URI_LOOKUP_CALL && !bundle.getBoolean(r81.f8014m, false)) {
                    throw new SecurityException("Call filtering support must be declared in manifest!");
                }
                if (enumC1641b == r81.EnumC1641b.URI_LOOKUP_TEXT && !applicationInfo.metaData.getBoolean(r81.f8013l, false)) {
                    throw new SecurityException("Text messages filtering support must be declared in manifest!");
                }
                r81.EnumC1640a m662S = r81.m662S(nameForUid, enumC1641b.toString(), null);
                if (m662S == r81.EnumC1640a.BLOCKED) {
                    throw new SecurityException("Access denied");
                }
                if (m662S == r81.EnumC1640a.NEW) {
                    PendingIntent activity = PendingIntent.getActivity(context, 12834, new Intent("com.callcontrol.datashare.intent.action.3RD_PARTY_ACCESS"), 134217728);
                    z7.e eVar = new z7.e(context, "cca_service");
                    eVar.F(2131230993);
                    eVar.r(context.getString(2131821116, charSequence));
                    eVar.q(context.getString(2131821115, charSequence));
                    eVar.p(activity);
                    z7.c cVar = new z7.c();
                    cVar.m(context.getString(2131821116, charSequence));
                    cVar.l(context.getString(2131821115, charSequence));
                    eVar.H(cVar);
                    NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                    if (notificationManager != null) {
                        notificationManager.notify(102324, eVar.c());
                    }
                }
                return nameForUid;
            } catch (PackageManager.NameNotFoundException e) {
                throw new SecurityException("Unable to verify package");
            }
        }
        throw new SecurityException("Access rights violation");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        r81.EnumC1641b m1229b = f2405a.m1229b(uri);
        if (m1229b == null) {
            return null;
        }
        int i = C0324b.f2406a[m1229b.ordinal()];
        if (i == 1) {
            return "vnd.android.cursor.item/token_result";
        }
        if (i != 2 && i != 3) {
            return null;
        }
        return "vnd.android.cursor.item/lookup_result";
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
        q71.EnumC1618e enumC1618e;
        r81.EnumC1641b m1229b = f2405a.m1229b(uri);
        if (m1229b == null) {
            throw new IllegalStateException(uri.toString() + " is not allowed for query");
        }
        String m5277e = m5277e(m1229b);
        int i = C0324b.f2406a[m1229b.ordinal()];
        if (i == 1) {
            return m5279c(m5277e, str, strArr2);
        }
        if (i == 2) {
            enumC1618e = q71.EnumC1618e.CALL;
        } else if (i != 3) {
            throw new IllegalStateException(uri.toString() + " is not allowed for query");
        } else {
            r71.EnumC1638a enumC1638a = r71.EnumC1638a.f8004y0;
            if (enumC1638a.m687i().isEmpty() && new r81().m667N(m5277e) == 0) {
                enumC1638a.m681o(m5277e);
            }
            enumC1618e = q71.EnumC1618e.SMS;
        }
        return m5278d(uri, enumC1618e, strArr);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
