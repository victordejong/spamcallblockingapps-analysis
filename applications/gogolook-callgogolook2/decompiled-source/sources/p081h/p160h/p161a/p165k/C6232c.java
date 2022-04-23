package p081h.p160h.p161a.p165k;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.aotter.net.volley.toolbox.JsonRequest;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.C14938c;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b.\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0002MNB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020=H\u0002J\u0014\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0001H\u0007J\u0018\u0010>\u001a\u00020?2\u0006\u0010A\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u0001H\u0007J\u0010\u0010B\u001a\u00020?2\u0006\u0010C\u001a\u00020DH\u0007J\u0012\u0010E\u001a\u0004\u0018\u00010\u00042\u0006\u0010F\u001a\u00020GH\u0007J\u0012\u0010H\u001a\u0004\u0018\u00010\u00042\u0006\u0010F\u001a\u00020GH\u0007J\u0010\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020LH\u0002R!\u0010\u0003\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\b\u0010\t\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R!\u0010\n\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\r\u0010\t\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\u0007R!\u0010\u000e\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0011\u0010\t\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0007R!\u0010\u0012\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0015\u0010\t\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0007R!\u0010\u0016\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\t\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0018\u0010\u0007R!\u0010\u001a\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u001d\u0010\t\u0012\u0004\b\u001b\u0010\u0002\u001a\u0004\b\u001c\u0010\u0007R!\u0010\u001e\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b!\u0010\t\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\u0007R!\u0010\"\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b%\u0010\t\u0012\u0004\b#\u0010\u0002\u001a\u0004\b$\u0010\u0007R!\u0010&\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b)\u0010\t\u0012\u0004\b'\u0010\u0002\u001a\u0004\b(\u0010\u0007R!\u0010*\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b-\u0010\t\u0012\u0004\b+\u0010\u0002\u001a\u0004\b,\u0010\u0007R!\u0010.\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b1\u0010\t\u0012\u0004\b/\u0010\u0002\u001a\u0004\b0\u0010\u0007R&\u00102\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b4\u0010\u0002\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0010\u00109\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010:\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006O"}, m815d2 = {"Lcom/gogolook/adsdk/debug/DebugAdUtil;", "", "()V", "KEY_MOPUB_ADS_DEV_ADBERT", "", "KEY_MOPUB_ADS_DEV_ADBERT$annotations", "getKEY_MOPUB_ADS_DEV_ADBERT", "()Ljava/lang/String;", "KEY_MOPUB_ADS_DEV_ADBERT$delegate", "Lkotlin/Lazy;", "KEY_MOPUB_ADS_DEV_ADMOB", "KEY_MOPUB_ADS_DEV_ADMOB$annotations", "getKEY_MOPUB_ADS_DEV_ADMOB", "KEY_MOPUB_ADS_DEV_ADMOB$delegate", "KEY_MOPUB_ADS_DEV_AOTTER", "KEY_MOPUB_ADS_DEV_AOTTER$annotations", "getKEY_MOPUB_ADS_DEV_AOTTER", "KEY_MOPUB_ADS_DEV_AOTTER$delegate", "KEY_MOPUB_ADS_DEV_APPIER", "KEY_MOPUB_ADS_DEV_APPIER$annotations", "getKEY_MOPUB_ADS_DEV_APPIER", "KEY_MOPUB_ADS_DEV_APPIER$delegate", "KEY_MOPUB_ADS_DEV_FACEBOOK", "KEY_MOPUB_ADS_DEV_FACEBOOK$annotations", "getKEY_MOPUB_ADS_DEV_FACEBOOK", "KEY_MOPUB_ADS_DEV_FACEBOOK$delegate", "KEY_MOPUB_ADS_DEV_FLURRY", "KEY_MOPUB_ADS_DEV_FLURRY$annotations", "getKEY_MOPUB_ADS_DEV_FLURRY", "KEY_MOPUB_ADS_DEV_FLURRY$delegate", "KEY_MOPUB_ADS_DEV_MOPUB", "KEY_MOPUB_ADS_DEV_MOPUB$annotations", "getKEY_MOPUB_ADS_DEV_MOPUB", "KEY_MOPUB_ADS_DEV_MOPUB$delegate", "KEY_MOPUB_ADS_DEV_MOPUB_CRITEO", "KEY_MOPUB_ADS_DEV_MOPUB_CRITEO$annotations", "getKEY_MOPUB_ADS_DEV_MOPUB_CRITEO", "KEY_MOPUB_ADS_DEV_MOPUB_CRITEO$delegate", "KEY_MOPUB_ADS_DEV_MOPUB_LINE_ITEM", "KEY_MOPUB_ADS_DEV_MOPUB_LINE_ITEM$annotations", "getKEY_MOPUB_ADS_DEV_MOPUB_LINE_ITEM", "KEY_MOPUB_ADS_DEV_MOPUB_LINE_ITEM$delegate", "KEY_MOPUB_ADS_DEV_NONE", "KEY_MOPUB_ADS_DEV_NONE$annotations", "getKEY_MOPUB_ADS_DEV_NONE", "KEY_MOPUB_ADS_DEV_NONE$delegate", "KEY_MOPUB_ADS_DEV_TAMEDIA", "KEY_MOPUB_ADS_DEV_TAMEDIA$annotations", "getKEY_MOPUB_ADS_DEV_TAMEDIA", "KEY_MOPUB_ADS_DEV_TAMEDIA$delegate", "logListener", "Lcom/gogolook/adsdk/debug/DebugAdUtil$LogListener;", "logListener$annotations", "getLogListener", "()Lcom/gogolook/adsdk/debug/DebugAdUtil$LogListener;", "setLogListener", "(Lcom/gogolook/adsdk/debug/DebugAdUtil$LogListener;)V", "sAdMobTestDeviceId", "sFbTestDeviceId", "a", "var0", "", "debug", "", IconCompat.EXTRA_OBJ, NovaHomeBadger.TAG, "exception", "throwable", "", "getAdMobTestDeviceId", "context", "Landroid/content/Context;", "getFacebookTestDeviceId", "getId", "Lcom/gogolook/adsdk/debug/DebugAdUtil$IDs;", "contentResolver", "Landroid/content/ContentResolver;", "IDs", "LogListener", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.k.c */
/* loaded from: classes2-dex2jar.jar:h/h/a/k/c.class */
public final class C6232c {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f15446a;

    /* renamed from: b */
    public static String f15447b;

    /* renamed from: c */
    public static String f15448c;

    /* renamed from: d */
    public static AbstractC6245m f15449d;

    /* renamed from: p */
    public static final C6232c f15461p = new C6232c();

    /* renamed from: e */
    public static final AbstractC14974f f15450e = C14975g.m662a(C6238f.f15468a);

    /* renamed from: f */
    public static final AbstractC14974f f15451f = C14975g.m662a(C6235c.f15465a);

    /* renamed from: g */
    public static final AbstractC14974f f15452g = C14975g.m662a(C6234b.f15464a);

    /* renamed from: h */
    public static final AbstractC14974f f15453h = C14975g.m662a(C6236d.f15466a);

    /* renamed from: i */
    public static final AbstractC14974f f15454i = C14975g.m662a(C6239g.f15469a);

    /* renamed from: j */
    public static final AbstractC14974f f15455j = C14975g.m662a(C6244l.f15474a);

    /* renamed from: k */
    public static final AbstractC14974f f15456k = C14975g.m662a(C6243k.f15473a);

    /* renamed from: l */
    public static final AbstractC14974f f15457l = C14975g.m662a(C6237e.f15467a);

    /* renamed from: m */
    public static final AbstractC14974f f15458m = C14975g.m662a(C6240h.f15470a);

    /* renamed from: n */
    public static final AbstractC14974f f15459n = C14975g.m662a(C6242j.f15472a);

    /* renamed from: o */
    public static final AbstractC14974f f15460o = C14975g.m662a(C6241i.f15471a);

    /* renamed from: h.h.a.k.c$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$a.class */
    public static final class C6233a {

        /* renamed from: a */
        public String f15462a;

        /* renamed from: b */
        public String f15463b;

        public C6233a(String str, String str2, boolean z) {
            this.f15462a = str;
            this.f15463b = str2;
        }

        /* renamed from: a */
        public final String m23500a() {
            return this.f15462a;
        }

        /* renamed from: b */
        public final String m23499b() {
            return this.f15463b;
        }
    }

    /* renamed from: h.h.a.k.c$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$b.class */
    public static final class C6234b extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6234b f15464a = new C6234b();

        public C6234b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_adbert";
        }
    }

    /* renamed from: h.h.a.k.c$c */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$c.class */
    public static final class C6235c extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6235c f15465a = new C6235c();

        public C6235c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_admob";
        }
    }

    /* renamed from: h.h.a.k.c$d */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$d.class */
    public static final class C6236d extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6236d f15466a = new C6236d();

        public C6236d() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_aotter";
        }
    }

    /* renamed from: h.h.a.k.c$e */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$e.class */
    public static final class C6237e extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6237e f15467a = new C6237e();

        public C6237e() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_appier";
        }
    }

    /* renamed from: h.h.a.k.c$f */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$f.class */
    public static final class C6238f extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6238f f15468a = new C6238f();

        public C6238f() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_facebook";
        }
    }

    /* renamed from: h.h.a.k.c$g */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$g.class */
    public static final class C6239g extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6239g f15469a = new C6239g();

        public C6239g() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_flurry";
        }
    }

    /* renamed from: h.h.a.k.c$h */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$h.class */
    public static final class C6240h extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6240h f15470a = new C6240h();

        public C6240h() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_mopub";
        }
    }

    /* renamed from: h.h.a.k.c$i */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$i.class */
    public static final class C6241i extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6241i f15471a = new C6241i();

        public C6241i() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_mopub_criteo";
        }
    }

    /* renamed from: h.h.a.k.c$j */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$j.class */
    public static final class C6242j extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6242j f15472a = new C6242j();

        public C6242j() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_mopub_line_item";
        }
    }

    /* renamed from: h.h.a.k.c$k */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$k.class */
    public static final class C6243k extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6243k f15473a = new C6243k();

        public C6243k() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_none";
        }
    }

    /* renamed from: h.h.a.k.c$l */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$l.class */
    public static final class C6244l extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6244l f15474a = new C6244l();

        public C6244l() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "dev_tamedia";
        }
    }

    /* renamed from: h.h.a.k.c$m */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/c$m.class */
    public interface AbstractC6245m {
        /* renamed from: a */
        void mo23498a(String str, Object obj);

        /* renamed from: a */
        void mo23497a(Throwable th);
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_FACEBOOK", "getKEY_MOPUB_ADS_DEV_FACEBOOK()Ljava/lang/String;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_ADMOB", "getKEY_MOPUB_ADS_DEV_ADMOB()Ljava/lang/String;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_ADBERT", "getKEY_MOPUB_ADS_DEV_ADBERT()Ljava/lang/String;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_AOTTER", "getKEY_MOPUB_ADS_DEV_AOTTER()Ljava/lang/String;");
        C15131a0.m412a(sVar4);
        C15157s sVar5 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_FLURRY", "getKEY_MOPUB_ADS_DEV_FLURRY()Ljava/lang/String;");
        C15131a0.m412a(sVar5);
        C15157s sVar6 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_TAMEDIA", "getKEY_MOPUB_ADS_DEV_TAMEDIA()Ljava/lang/String;");
        C15131a0.m412a(sVar6);
        C15157s sVar7 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_NONE", "getKEY_MOPUB_ADS_DEV_NONE()Ljava/lang/String;");
        C15131a0.m412a(sVar7);
        C15157s sVar8 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_APPIER", "getKEY_MOPUB_ADS_DEV_APPIER()Ljava/lang/String;");
        C15131a0.m412a(sVar8);
        C15157s sVar9 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_MOPUB", "getKEY_MOPUB_ADS_DEV_MOPUB()Ljava/lang/String;");
        C15131a0.m412a(sVar9);
        C15157s sVar10 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_MOPUB_LINE_ITEM", "getKEY_MOPUB_ADS_DEV_MOPUB_LINE_ITEM()Ljava/lang/String;");
        C15131a0.m412a(sVar10);
        C15157s sVar11 = new C15157s(C15131a0.m419a(C6232c.class), "KEY_MOPUB_ADS_DEV_MOPUB_CRITEO", "getKEY_MOPUB_ADS_DEV_MOPUB_CRITEO()Ljava/lang/String;");
        C15131a0.m412a(sVar11);
        f15446a = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4, sVar5, sVar6, sVar7, sVar8, sVar9, sVar10, sVar11};
    }

    /* renamed from: a */
    public static final String m23519a() {
        AbstractC14974f fVar = f15452g;
        AbstractC14906i iVar = f15446a[2];
        return (String) fVar.getValue();
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: a */
    public static final String m23517a(Context context) {
        C15149k.m377b(context, "context");
        if (f15447b == null) {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                C15149k.m383a((Object) string, "androidId");
                Charset charset = C14938c.f32979a;
                if (string != null) {
                    byte[] bytes = string.getBytes(charset);
                    C15149k.m383a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
                    instance.update(bytes);
                    byte[] digest = instance.digest();
                    StringBuffer stringBuffer = new StringBuffer();
                    C15149k.m383a((Object) digest, "messageDigest");
                    for (byte b : digest) {
                        stringBuffer.append(Integer.toHexString(b & 255));
                    }
                    String stringBuffer2 = stringBuffer.toString();
                    C15149k.m383a((Object) stringBuffer2, "hexString.toString()");
                    f15447b = stringBuffer2;
                } else {
                    throw new C14986p("null cannot be cast to non-null type java.lang.String");
                }
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        String str = "Id : " + f15447b;
        return f15447b;
    }

    /* renamed from: a */
    public static final void m23516a(AbstractC6245m mVar) {
        f15449d = mVar;
    }

    /* renamed from: a */
    public static final void m23514a(String str, Object obj) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        C15149k.m377b(obj, IconCompat.EXTRA_OBJ);
        AbstractC6245m mVar = f15449d;
        if (mVar != null) {
            mVar.mo23498a(str, obj);
        }
    }

    /* renamed from: a */
    public static final void m23513a(Throwable th) {
        C15149k.m377b(th, "throwable");
        AbstractC6245m mVar = f15449d;
        if (mVar != null) {
            mVar.mo23497a(th);
        }
    }

    /* renamed from: b */
    public static final String m23511b() {
        AbstractC14974f fVar = f15451f;
        AbstractC14906i iVar = f15446a[1];
        return (String) fVar.getValue();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0087 -> B:11:0x0066). Please submit an issue!!! */
    /* renamed from: b */
    public static final String m23510b(Context context) {
        C15149k.m377b(context, "context");
        if (f15448c == null) {
            try {
                C6232c cVar = f15461p;
                ContentResolver contentResolver = context.getContentResolver();
                C15149k.m383a((Object) contentResolver, "context.contentResolver");
                C6233a a = cVar.m23518a(contentResolver);
                if (!TextUtils.isEmpty(a.m23499b())) {
                    f15448c = f15461p.m23515a(a.m23499b());
                } else if (!TextUtils.isEmpty(a.m23500a())) {
                    f15448c = f15461p.m23515a(a.m23500a());
                } else {
                    f15448c = f15461p.m23515a(UUID.randomUUID().toString());
                }
            } catch (Exception e) {
            }
        }
        String str = "Id : " + f15448c;
        return f15448c;
    }

    /* renamed from: c */
    public static final String m23509c() {
        AbstractC14974f fVar = f15453h;
        AbstractC14906i iVar = f15446a[3];
        return (String) fVar.getValue();
    }

    /* renamed from: d */
    public static final String m23508d() {
        AbstractC14974f fVar = f15457l;
        AbstractC14906i iVar = f15446a[7];
        return (String) fVar.getValue();
    }

    /* renamed from: e */
    public static final String m23507e() {
        AbstractC14974f fVar = f15450e;
        AbstractC14906i iVar = f15446a[0];
        return (String) fVar.getValue();
    }

    /* renamed from: f */
    public static final String m23506f() {
        AbstractC14974f fVar = f15454i;
        AbstractC14906i iVar = f15446a[4];
        return (String) fVar.getValue();
    }

    /* renamed from: g */
    public static final String m23505g() {
        AbstractC14974f fVar = f15458m;
        AbstractC14906i iVar = f15446a[8];
        return (String) fVar.getValue();
    }

    /* renamed from: h */
    public static final String m23504h() {
        AbstractC14974f fVar = f15460o;
        AbstractC14906i iVar = f15446a[10];
        return (String) fVar.getValue();
    }

    /* renamed from: i */
    public static final String m23503i() {
        AbstractC14974f fVar = f15459n;
        AbstractC14906i iVar = f15446a[9];
        return (String) fVar.getValue();
    }

    /* renamed from: j */
    public static final String m23502j() {
        AbstractC14974f fVar = f15456k;
        AbstractC14906i iVar = f15446a[6];
        return (String) fVar.getValue();
    }

    /* renamed from: k */
    public static final String m23501k() {
        AbstractC14974f fVar = f15455j;
        AbstractC14906i iVar = f15446a[5];
        return (String) fVar.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dd  */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p160h.p161a.p165k.C6232c.C6233a m23518a(android.content.ContentResolver r8) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p161a.p165k.C6232c.m23518a(android.content.ContentResolver):h.h.a.k.c$a");
    }

    /* renamed from: a */
    public final String m23515a(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            C6232c cVar = f15461p;
            Charset forName = Charset.forName(JsonRequest.PROTOCOL_CHARSET);
            C15149k.m383a((Object) forName, "Charset.forName(charsetName)");
            byte[] bytes = str.getBytes(forName);
            C15149k.m383a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            byte[] digest = instance.digest(bytes);
            C15149k.m383a((Object) digest, "var1.digest(var0.toByteArray(charset(\"utf-8\")))");
            return cVar.m23512a(digest);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public final String m23512a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String num = Integer.toString((b & 255) + 256, 16);
            C15149k.m383a((Object) num, "Integer.toString((var5.toInt() and 255) + 256, 16)");
            if (num != null) {
                String substring = num.substring(1);
                C15149k.m383a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                sb.append(substring);
            } else {
                throw new C14986p("null cannot be cast to non-null type java.lang.String");
            }
        }
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "var1.toString()");
        return sb2;
    }
}
