package p020b.p041h.p046h;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.core.content.p007d.C0597c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p020b.p041h.p046h.C1556f;
/* renamed from: b.h.h.c */
/* loaded from: classes-dex2jar.jar:b/h/h/c.class */
public class C1547c {

    /* renamed from: a */
    private static final Comparator<byte[]> f6089a = new C1548a();

    /* renamed from: b.h.h.c$a */
    /* loaded from: classes-dex2jar.jar:b/h/h/c$a.class */
    class C1548a implements Comparator<byte[]> {
        C1548a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [int] */
        /* JADX WARN: Type inference failed for: r0v16, types: [int] */
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            byte b;
            byte b2;
            if (bArr.length == bArr2.length) {
                for (int i = 0; i < bArr.length; i++) {
                    if (bArr[i] != bArr2[i]) {
                        b = bArr[i];
                        b2 = bArr2[i];
                    }
                }
                return 0;
            }
            b = bArr.length;
            b2 = bArr2.length;
            return b - b2;
        }
    }

    /* renamed from: a */
    private static List<byte[]> m29763a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: b */
    private static boolean m29762b(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    private static List<List<byte[]>> m29761c(C1549d c1549d, Resources resources) {
        return c1549d.m29755b() != null ? c1549d.m29755b() : C0597c.m33301c(resources, c1549d.m29754c());
    }

    /* renamed from: d */
    public static C1556f.C1557a m29760d(Context context, C1549d c1549d, CancellationSignal cancellationSignal) {
        ProviderInfo m29759e = m29759e(context.getPackageManager(), c1549d, context.getResources());
        return m29759e == null ? C1556f.C1557a.m29738a(1, null) : C1556f.C1557a.m29738a(0, m29758f(context, c1549d, m29759e.authority, cancellationSignal));
    }

    /* renamed from: e */
    static ProviderInfo m29759e(PackageManager packageManager, C1549d c1549d, Resources resources) {
        String m29752e = c1549d.m29752e();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(m29752e, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + m29752e);
        } else if (!resolveContentProvider.packageName.equals(c1549d.m29751f())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + m29752e + ", but package was not " + c1549d.m29751f());
        } else {
            List<byte[]> m29763a = m29763a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(m29763a, f6089a);
            List<List<byte[]>> m29761c = m29761c(c1549d, resources);
            for (int i = 0; i < m29761c.size(); i++) {
                ArrayList arrayList = new ArrayList(m29761c.get(i));
                Collections.sort(arrayList, f6089a);
                if (m29762b(m29763a, arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    static C1556f.C1558b[] m29758f(Context context, C1549d c1549d, String str, CancellationSignal cancellationSignal) {
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            String[] strArr = new String[7];
            strArr[0] = "_id";
            strArr[1] = "file_id";
            strArr[2] = "font_ttc_index";
            strArr[3] = "font_variation_settings";
            strArr[4] = "font_weight";
            strArr[5] = "font_italic";
            strArr[6] = "result_code";
            Cursor query = Build.VERSION.SDK_INT > 16 ? context.getContentResolver().query(build, strArr, "query = ?", new String[]{c1549d.m29750g()}, null, cancellationSignal) : context.getContentResolver().query(build, strArr, "query = ?", new String[]{c1549d.m29750g()}, null);
            ArrayList arrayList2 = arrayList;
            if (query != null) {
                arrayList2 = arrayList;
                if (query.getCount() > 0) {
                    Cursor cursor2 = query;
                    int columnIndex = query.getColumnIndex("result_code");
                    Cursor cursor3 = query;
                    Cursor cursor4 = query;
                    ArrayList arrayList3 = new ArrayList();
                    Cursor cursor5 = query;
                    int columnIndex2 = query.getColumnIndex("_id");
                    Cursor cursor6 = query;
                    int columnIndex3 = query.getColumnIndex("file_id");
                    Cursor cursor7 = query;
                    int columnIndex4 = query.getColumnIndex("font_ttc_index");
                    Cursor cursor8 = query;
                    int columnIndex5 = query.getColumnIndex("font_weight");
                    Cursor cursor9 = query;
                    int columnIndex6 = query.getColumnIndex("font_italic");
                    while (true) {
                        cursor = query;
                        if (!query.moveToNext()) {
                            break;
                        }
                        arrayList3.add(C1556f.C1558b.m29735a(columnIndex3 == -1 ? ContentUris.withAppendedId(build, query.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, query.getLong(columnIndex3)), columnIndex4 != -1 ? query.getInt(columnIndex4) : 0, columnIndex5 != -1 ? query.getInt(columnIndex5) : 400, columnIndex6 != -1 && query.getInt(columnIndex6) == 1, columnIndex != -1 ? query.getInt(columnIndex) : 0));
                    }
                    arrayList2 = arrayList3;
                }
            }
            if (query != null) {
                query.close();
            }
            return (C1556f.C1558b[]) arrayList2.toArray(new C1556f.C1558b[0]);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}
