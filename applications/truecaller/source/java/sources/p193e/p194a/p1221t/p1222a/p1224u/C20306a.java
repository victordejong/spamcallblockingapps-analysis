package p193e.p194a.p1221t.p1222a.p1224u;

import android.content.Context;
import android.content.res.Resources;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.t.a.u.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/u/a.class */
public final class C20306a implements AbstractC20315j {

    /* renamed from: a */
    public final Context f57115a;

    public C20306a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f57115a = context;
    }

    @Override // p193e.p194a.p1221t.p1222a.p1224u.AbstractC20315j
    /* renamed from: a */
    public C20311f mo11251a() {
        AssertionUtil.notOnMainThread(new String[0]);
        Resources resources = this.f57115a.getResources();
        l.d(resources, "context.resources");
        InputStream open = resources.getAssets().open("emojis.bin");
        l.d(open, "context.resources.assets.open(\"emojis.bin\")");
        DataInputStream dataInputStream = new DataInputStream(open instanceof BufferedInputStream ? (BufferedInputStream) open : new BufferedInputStream(open, 8192));
        try {
            C20309d[] m11257b = m11257b(dataInputStream);
            th = null;
            return new C20311f(m11255d(dataInputStream, m11257b), m11256c(dataInputStream, m11257b));
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: b */
    public final C20309d[] m11257b(DataInputStream dataInputStream) {
        int readShort = dataInputStream.readShort();
        C20309d[] c20309dArr = new C20309d[readShort];
        for (int i = 0; i < readShort; i++) {
            int read = dataInputStream.read();
            int[] iArr = new int[read];
            for (int i2 = 0; i2 < read; i2++) {
                iArr[i2] = dataInputStream.readInt();
            }
            int read2 = dataInputStream.read();
            C20309d[] c20309dArr2 = new C20309d[read2];
            for (int i3 = 0; i3 < read2; i3++) {
                C20309d c20309d = c20309dArr[dataInputStream.readShort()];
                l.c(c20309d);
                c20309dArr2[i3] = c20309d;
            }
            c20309dArr[i] = new C20309d(iArr, c20309dArr2);
        }
        return c20309dArr;
    }

    /* renamed from: c */
    public final List<C20310e> m11256c(DataInputStream dataInputStream, C20309d[] c20309dArr) {
        List<C20310e> list = C20307b.f57116a;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C20310e c20310e : list) {
            int readShort = dataInputStream.readShort();
            C20309d[] c20309dArr2 = new C20309d[readShort];
            for (int i = 0; i < readShort; i++) {
                c20309dArr2[i] = c20309dArr[dataInputStream.readShort()];
            }
            int i2 = c20310e.f57121a;
            int i3 = c20310e.f57122b;
            l.e(c20309dArr2, "emojis");
            arrayList.add(new C20310e(i2, i3, c20309dArr2));
        }
        return arrayList;
    }

    /* renamed from: d */
    public final C20308c m11255d(DataInputStream dataInputStream, C20309d[] c20309dArr) {
        int readShort = dataInputStream.readShort();
        C20308c[] c20308cArr = new C20308c[readShort];
        for (int i = 0; i < readShort; i++) {
            int readShort2 = dataInputStream.readShort();
            k[] kVarArr = new k[readShort2];
            for (int i2 = 0; i2 < readShort2; i2++) {
                kVarArr[i2] = new k(Integer.valueOf(dataInputStream.readInt()), c20309dArr[dataInputStream.readShort()]);
            }
            Map Y0 = i.Y0(kVarArr);
            int readShort3 = dataInputStream.readShort();
            k[] kVarArr2 = new k[readShort3];
            for (int i3 = 0; i3 < readShort3; i3++) {
                int readInt = dataInputStream.readInt();
                C20308c c20308c = c20308cArr[dataInputStream.readShort()];
                l.c(c20308c);
                kVarArr2[i3] = new k(Integer.valueOf(readInt), c20308c);
            }
            c20308cArr[i] = new C20308c(Y0, i.Y0(kVarArr2));
        }
        Object m3986N1 = C25225a.m3986N1(c20308cArr);
        l.c(m3986N1);
        return (C20308c) m3986N1;
    }
}
