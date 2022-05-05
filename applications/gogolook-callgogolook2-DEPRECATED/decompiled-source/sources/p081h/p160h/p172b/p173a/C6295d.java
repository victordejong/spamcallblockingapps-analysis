package p081h.p160h.p172b.p173a;

import android.content.Context;
import android.os.Build;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018�� \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m815d2 = {"Lcom/gogolook/commonlib/util/TelephonyManagerCompat;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "tm", "Landroid/telephony/TelephonyManager;", "getTm", "()Landroid/telephony/TelephonyManager;", "tm$delegate", "Lkotlin/Lazy;", "getEmergencyNumberList", "", "", "isEmergencyNumber", "", "number", "Companion", "commonLib_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.b.a.d */
/* loaded from: classes2-dex2jar.jar:h/h/b/a/d.class */
public final class C6295d {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f15599c;

    /* renamed from: d */
    public static final C6296a f15600d = new C6296a(null);

    /* renamed from: a */
    public final AbstractC14974f f15601a = C14975g.m662a(new C6297b());

    /* renamed from: b */
    public final Context f15602b;

    /* renamed from: h.h.b.a.d$a */
    /* loaded from: classes2-dex2jar.jar:h/h/b/a/d$a.class */
    public static final class C6296a {
        public C6296a() {
        }

        public /* synthetic */ C6296a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6295d m23358a(Context context) {
            C15149k.m377b(context, "context");
            return new C6295d(context);
        }
    }

    /* renamed from: h.h.b.a.d$b */
    /* loaded from: classes2-dex2jar.jar:h/h/b/a/d$b.class */
    public static final class C6297b extends AbstractC15150l implements AbstractC15107a<TelephonyManager> {
        public C6297b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final TelephonyManager invoke() {
            Object systemService = C6295d.this.f15602b.getSystemService("phone");
            Object obj = systemService;
            if (!(systemService instanceof TelephonyManager)) {
                obj = null;
            }
            return (TelephonyManager) obj;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6295d.class), "tm", "getTm()Landroid/telephony/TelephonyManager;");
        C15131a0.m412a(sVar);
        f15599c = new AbstractC14906i[]{sVar};
    }

    public C6295d(Context context) {
        C15149k.m377b(context, "context");
        this.f15602b = context;
    }

    /* renamed from: a */
    public static final C6295d m23362a(Context context) {
        return f15600d.m23358a(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00d2 A[Catch: Exception -> 0x00f4, TRY_ENTER, TryCatch #0 {Exception -> 0x00f4, blocks: (B:3:0x0002, B:5:0x000a, B:8:0x0015, B:11:0x0020, B:14:0x002d, B:16:0x003d, B:18:0x0045, B:20:0x0073, B:22:0x007b, B:23:0x009e, B:24:0x00a8, B:25:0x00b0, B:27:0x00ba, B:34:0x00d2, B:38:0x00de), top: B:46:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00de A[Catch: Exception -> 0x00f4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00f4, blocks: (B:3:0x0002, B:5:0x000a, B:8:0x0015, B:11:0x0020, B:14:0x002d, B:16:0x003d, B:18:0x0045, B:20:0x0073, B:22:0x007b, B:23:0x009e, B:24:0x00a8, B:25:0x00b0, B:27:0x00ba, B:34:0x00d2, B:38:0x00de), top: B:46:0x0002 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m23363a() {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p172b.p173a.C6295d.m23363a():java.util.List");
    }

    /* renamed from: a */
    public final boolean m23360a(String str) {
        boolean z;
        C15149k.m377b(str, "number");
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                TelephonyManager b = m23359b();
                z = false;
                if (b != null) {
                    z = false;
                    if (b.isEmergencyNumber(str)) {
                        z = true;
                    }
                }
            } else {
                z = PhoneNumberUtils.isEmergencyNumber(str);
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final TelephonyManager m23359b() {
        AbstractC14974f fVar = this.f15601a;
        AbstractC14906i iVar = f15599c[0];
        return (TelephonyManager) fVar.getValue();
    }
}
