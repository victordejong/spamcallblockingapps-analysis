package p459j.p460a.p569u0;

import android.content.Context;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.u0.g */
/* loaded from: classes3-dex2jar.jar:j/a/u0/g.class */
public class C13679g {

    /* renamed from: a */
    public static C13679g f30682a;

    /* renamed from: j.a.u0.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/g$a.class */
    public static /* synthetic */ class C13680a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30683a = new int[C13673f.EnumC13678e.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f30683a[C13673f.EnumC13678e.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30683a[C13673f.EnumC13678e.IN_APP_DIALOG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30683a[C13673f.EnumC13678e.CALL_END_DIALOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30683a[C13673f.EnumC13678e.NOTIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static C13679g m3691a() {
        if (f30682a == null) {
            f30682a = new C13679g();
        }
        return f30682a;
    }

    /* renamed from: a */
    public static boolean m3689a(Context context, C13673f fVar) {
        return fVar.f30632C && m3688a(context, fVar.f30635F) && m3688a(context, fVar.f30636G);
    }

    /* renamed from: a */
    public static boolean m3688a(Context context, String str) {
        String str2 = str;
        if (str != null) {
            str2 = str.trim();
        }
        boolean z = false;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (!str2.startsWith(CssParser.BLOCK_START) || !str2.endsWith(CssParser.BLOCK_END)) {
            return true;
        }
        if (context.getResources().getIdentifier(str2.substring(1, str2.length() - 1).trim(), "string", context.getPackageName()) > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final C13673f m3686a(C13673f[] fVarArr) {
        int i = 0;
        double d = 0.0d;
        for (C13673f fVar : fVarArr) {
            d += fVar.f30666t;
        }
        int i2 = -1;
        double random = Math.random() * d;
        while (true) {
            if (i >= fVarArr.length) {
                break;
            }
            random -= fVarArr[i].f30666t;
            if (random <= 0.0d) {
                i2 = i;
                break;
            }
            i++;
        }
        return fVarArr[i2];
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x037f, code lost:
        if (p459j.p460a.p521j0.p529x.C12810o.m5236i() != false) goto L_0x0382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0382, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x03ad, code lost:
        if (p459j.p460a.p521j0.p529x.C12810o.m5236i() == false) goto L_0x0382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0455, code lost:
        if (p459j.p460a.p521j0.p522u.p523d.C12612g0.m5778c() == false) goto L_0x0458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0458, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0492, code lost:
        if (p459j.p460a.p521j0.p522u.p523d.C12612g0.m5778c() == false) goto L_0x0458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04c5, code lost:
        if (p459j.p460a.p521j0.p522u.p523d.C12612g0.m5778c() == false) goto L_0x0458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x04ee, code lost:
        if (p459j.p460a.p582w0.C13878a3.m3250a() != false) goto L_0x0458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0519, code lost:
        if (gogolook.callgogolook2.gson.UserProfile.m28128n().m28131k() == false) goto L_0x0458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x053e, code lost:
        if (p459j.p460a.p582w0.C14063l4.m2641x() == false) goto L_0x0458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x05f4, code lost:
        if (p459j.p460a.p582w0.C13878a3.m3215e(gogolook.callgogolook2.MyApplication.m29013o()) == false) goto L_0x0458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0250, code lost:
        if (r0 <= r0) goto L_0x029d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x029a, code lost:
        if (r0 <= r0) goto L_0x029d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x029d, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02a3, code lost:
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02ae, code lost:
        r19 = r20 & r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0609  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0617 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02ed  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p459j.p460a.p569u0.C13673f> m3690a(android.content.Context r8, p459j.p460a.p569u0.C13673f.EnumC13678e r9) {
        /*
            Method dump skipped, instructions count: 1573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p569u0.C13679g.m3690a(android.content.Context, j.a.u0.f$e):java.util.List");
    }

    /* renamed from: a */
    public List<C13673f> m3687a(C13673f.EnumC13678e eVar) {
        ArrayList arrayList = new ArrayList();
        List<C13673f> m = C14099o3.m2510n().m2511m();
        if (C14217x3.m2173a(m)) {
            return arrayList;
        }
        for (C13673f fVar : m) {
            int i = C13680a.f30683a[eVar.ordinal()];
            if (i != 2) {
                if (i != 3) {
                    if (i == 4 && "notification".equals(fVar.f30648b)) {
                        arrayList.add(fVar);
                    }
                } else if ("call_end_dialog".equals(fVar.f30648b)) {
                    arrayList.add(fVar);
                }
            } else if (fVar.f30648b.equals("in_app_dialog") || fVar.f30648b.equals("in_app_dialog_full")) {
                arrayList.add(fVar);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public C13673f m3685b(Context context, C13673f.EnumC13678e eVar) {
        List<C13673f> a = m3690a(context, eVar);
        if (a.size() == 0) {
            return null;
        }
        return m3686a((C13673f[]) a.toArray(new C13673f[0]));
    }

    /* renamed from: b */
    public List<C13673f> m3684b(C13673f.EnumC13678e eVar) {
        return C13680a.f30683a[eVar.ordinal()] != 1 ? m3687a(eVar) : new ArrayList<>();
    }
}
