package p012b.p042i.p051m;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import p012b.p035f.C0786e;
import p012b.p035f.C0793g;
import p012b.p042i.p044i.p045c.C0874c;
import p012b.p042i.p044i.p045c.C0882f;
import p012b.p042i.p046j.C0896e;
import p012b.p042i.p046j.C0906l;
import p012b.p042i.p051m.C0932c;
import p012b.p042i.p053o.C0948h;
/* renamed from: b.i.m.b */
/* loaded from: classes-dex2jar.jar:b/i/m/b.class */
public class C0924b {

    /* renamed from: a */
    public static final C0786e<String, Typeface> f4138a = new C0786e<>(16);

    /* renamed from: b */
    public static final C0932c f4139b = new C0932c("fonts", 10, 10000);

    /* renamed from: c */
    public static final Object f4140c = new Object();

    /* renamed from: d */
    public static final C0793g<String, ArrayList<C0932c.AbstractC0937d<C0931g>>> f4141d = new C0793g<>();

    /* renamed from: e */
    public static final Comparator<byte[]> f4142e = new C0928d();

    /* renamed from: b.i.m.b$a */
    /* loaded from: classes-dex2jar.jar:b/i/m/b$a.class */
    public class CallableC0925a implements Callable<C0931g> {

        /* renamed from: a */
        public final /* synthetic */ Context f4143a;

        /* renamed from: b */
        public final /* synthetic */ C0923a f4144b;

        /* renamed from: c */
        public final /* synthetic */ int f4145c;

        /* renamed from: d */
        public final /* synthetic */ String f4146d;

        public CallableC0925a(Context context, C0923a aVar, int i, String str) {
            this.f4143a = context;
            this.f4144b = aVar;
            this.f4145c = i;
            this.f4146d = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public C0931g call() throws Exception {
            C0931g a = C0924b.m35486a(this.f4143a, this.f4144b, this.f4145c);
            Typeface typeface = a.f4157a;
            if (typeface != null) {
                C0924b.f4138a.put(this.f4146d, typeface);
            }
            return a;
        }
    }

    /* renamed from: b.i.m.b$b */
    /* loaded from: classes-dex2jar.jar:b/i/m/b$b.class */
    public class C0926b implements C0932c.AbstractC0937d<C0931g> {

        /* renamed from: a */
        public final /* synthetic */ C0882f.AbstractC0883a f4147a;

        /* renamed from: b */
        public final /* synthetic */ Handler f4148b;

        public C0926b(C0882f.AbstractC0883a aVar, Handler handler) {
            this.f4147a = aVar;
            this.f4148b = handler;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo35463a(C0931g gVar) {
            if (gVar == null) {
                this.f4147a.m35632a(1, this.f4148b);
                return;
            }
            int i = gVar.f4158b;
            if (i == 0) {
                this.f4147a.m35630a(gVar.f4157a, this.f4148b);
            } else {
                this.f4147a.m35632a(i, this.f4148b);
            }
        }
    }

    /* renamed from: b.i.m.b$c */
    /* loaded from: classes-dex2jar.jar:b/i/m/b$c.class */
    public class C0927c implements C0932c.AbstractC0937d<C0931g> {

        /* renamed from: a */
        public final /* synthetic */ String f4149a;

        public C0927c(String str) {
            this.f4149a = str;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo35463a(C0931g gVar) {
            synchronized (C0924b.f4140c) {
                try {
                    ArrayList<C0932c.AbstractC0937d<C0931g>> arrayList = C0924b.f4141d.get(this.f4149a);
                    if (arrayList != null) {
                        C0924b.f4141d.remove(this.f4149a);
                        for (int i = 0; i < arrayList.size(); i++) {
                            arrayList.get(i).mo35463a(gVar);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: b.i.m.b$d */
    /* loaded from: classes-dex2jar.jar:b/i/m/b$d.class */
    public class C0928d implements Comparator<byte[]> {
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            int i;
            int i2;
            if (bArr.length != bArr2.length) {
                i2 = bArr.length;
                i = bArr2.length;
            } else {
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    if (bArr[i3] != bArr2[i3]) {
                        i2 = bArr[i3];
                        i = bArr2[i3];
                    }
                }
                return 0;
            }
            return i2 - i;
        }
    }

    /* renamed from: b.i.m.b$e */
    /* loaded from: classes-dex2jar.jar:b/i/m/b$e.class */
    public static class C0929e {

        /* renamed from: a */
        public final int f4150a;

        /* renamed from: b */
        public final C0930f[] f4151b;

        public C0929e(int i, C0930f[] fVarArr) {
            this.f4150a = i;
            this.f4151b = fVarArr;
        }

        /* renamed from: a */
        public C0930f[] m35475a() {
            return this.f4151b;
        }

        /* renamed from: b */
        public int m35474b() {
            return this.f4150a;
        }
    }

    /* renamed from: b.i.m.b$f */
    /* loaded from: classes-dex2jar.jar:b/i/m/b$f.class */
    public static class C0930f {

        /* renamed from: a */
        public final Uri f4152a;

        /* renamed from: b */
        public final int f4153b;

        /* renamed from: c */
        public final int f4154c;

        /* renamed from: d */
        public final boolean f4155d;

        /* renamed from: e */
        public final int f4156e;

        public C0930f(Uri uri, int i, int i2, boolean z, int i3) {
            C0948h.m35442a(uri);
            this.f4152a = uri;
            this.f4153b = i;
            this.f4154c = i2;
            this.f4155d = z;
            this.f4156e = i3;
        }

        /* renamed from: a */
        public int m35473a() {
            return this.f4156e;
        }

        /* renamed from: b */
        public int m35472b() {
            return this.f4153b;
        }

        /* renamed from: c */
        public Uri m35471c() {
            return this.f4152a;
        }

        /* renamed from: d */
        public int m35470d() {
            return this.f4154c;
        }

        /* renamed from: e */
        public boolean m35469e() {
            return this.f4155d;
        }
    }

    /* renamed from: b.i.m.b$g */
    /* loaded from: classes-dex2jar.jar:b/i/m/b$g.class */
    public static final class C0931g {

        /* renamed from: a */
        public final Typeface f4157a;

        /* renamed from: b */
        public final int f4158b;

        public C0931g(Typeface typeface, int i) {
            this.f4157a = typeface;
            this.f4158b = i;
        }
    }

    /* renamed from: a */
    public static ProviderInfo m35482a(PackageManager packageManager, C0923a aVar, Resources resources) throws PackageManager.NameNotFoundException {
        String d = aVar.m35490d();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(d, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + d);
        } else if (resolveContentProvider.packageName.equals(aVar.m35489e())) {
            List<byte[]> a = m35479a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(a, f4142e);
            List<List<byte[]>> a2 = m35481a(aVar, resources);
            for (int i = 0; i < a2.size(); i++) {
                ArrayList arrayList = new ArrayList(a2.get(i));
                Collections.sort(arrayList, f4142e);
                if (m35480a(a, arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        } else {
            throw new PackageManager.NameNotFoundException("Found content provider " + d + ", but package was not " + aVar.m35489e());
        }
    }

    /* renamed from: a */
    public static Typeface m35485a(Context context, C0923a aVar, C0882f.AbstractC0883a aVar2, Handler handler, boolean z, int i, int i2) {
        String str = aVar.m35491c() + "-" + i2;
        Typeface typeface = f4138a.get(str);
        if (typeface != null) {
            if (aVar2 != null) {
                aVar2.mo35631a(typeface);
            }
            return typeface;
        } else if (!z || i != -1) {
            CallableC0925a aVar3 = new CallableC0925a(context, aVar, i2, str);
            Typeface typeface2 = null;
            if (z) {
                try {
                    typeface2 = ((C0931g) f4139b.m35466a(aVar3, i)).f4157a;
                } catch (InterruptedException e) {
                }
                return typeface2;
            }
            C0926b bVar = aVar2 == null ? null : new C0926b(aVar2, handler);
            synchronized (f4140c) {
                ArrayList<C0932c.AbstractC0937d<C0931g>> arrayList = f4141d.get(str);
                if (arrayList != null) {
                    if (bVar != null) {
                        arrayList.add(bVar);
                    }
                    return null;
                }
                if (bVar != null) {
                    ArrayList<C0932c.AbstractC0937d<C0931g>> arrayList2 = new ArrayList<>();
                    arrayList2.add(bVar);
                    f4141d.put(str, arrayList2);
                }
                f4139b.m35465a(aVar3, new C0927c(str));
                return null;
            }
        } else {
            C0931g a = m35486a(context, aVar, i2);
            if (aVar2 != null) {
                int i3 = a.f4158b;
                if (i3 == 0) {
                    aVar2.m35630a(a.f4157a, handler);
                } else {
                    aVar2.m35632a(i3, handler);
                }
            }
            return a.f4157a;
        }
    }

    /* renamed from: a */
    public static C0929e m35487a(Context context, CancellationSignal cancellationSignal, C0923a aVar) throws PackageManager.NameNotFoundException {
        ProviderInfo a = m35482a(context.getPackageManager(), aVar, context.getResources());
        return a == null ? new C0929e(1, null) : new C0929e(0, m35484a(context, aVar, a.authority, cancellationSignal));
    }

    /* renamed from: a */
    public static C0931g m35486a(Context context, C0923a aVar, int i) {
        try {
            C0929e a = m35487a(context, (CancellationSignal) null, aVar);
            int i2 = -3;
            if (a.m35474b() == 0) {
                Typeface a2 = C0896e.m35581a(context, null, a.m35475a(), i);
                if (a2 != null) {
                    i2 = 0;
                }
                return new C0931g(a2, i2);
            }
            if (a.m35474b() == 1) {
                i2 = -2;
            }
            return new C0931g(null, i2);
        } catch (PackageManager.NameNotFoundException e) {
            return new C0931g(null, -1);
        }
    }

    /* renamed from: a */
    public static List<List<byte[]>> m35481a(C0923a aVar, Resources resources) {
        return aVar.m35493a() != null ? aVar.m35493a() : C0874c.m35662a(resources, aVar.m35492b());
    }

    /* renamed from: a */
    public static List<byte[]> m35479a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<Uri, ByteBuffer> m35483a(Context context, C0930f[] fVarArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C0930f fVar : fVarArr) {
            if (fVar.m35473a() == 0) {
                Uri c = fVar.m35471c();
                if (!hashMap.containsKey(c)) {
                    hashMap.put(c, C0906l.m35535a(context, cancellationSignal, c));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public static boolean m35480a(List<byte[]> list, List<byte[]> list2) {
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

    /* renamed from: a */
    public static C0930f[] m35484a(Context context, C0923a aVar, String str, CancellationSignal cancellationSignal) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor2 = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.m35488f()}, null, cancellationSignal);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.m35488f()}, null);
            }
            ArrayList arrayList2 = arrayList;
            if (cursor != null) {
                arrayList2 = arrayList;
                if (cursor.getCount() > 0) {
                    int columnIndex = cursor.getColumnIndex("result_code");
                    ArrayList arrayList3 = new ArrayList();
                    int columnIndex2 = cursor.getColumnIndex("_id");
                    int columnIndex3 = cursor.getColumnIndex("file_id");
                    int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                    int columnIndex5 = cursor.getColumnIndex("font_weight");
                    int columnIndex6 = cursor.getColumnIndex("font_italic");
                    while (true) {
                        cursor2 = cursor;
                        if (!cursor.moveToNext()) {
                            break;
                        }
                        int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                        arrayList3.add(new C0930f(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : LogSeverity.WARNING_VALUE, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                    }
                    arrayList2 = arrayList3;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (C0930f[]) arrayList2.toArray(new C0930f[0]);
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }
}
