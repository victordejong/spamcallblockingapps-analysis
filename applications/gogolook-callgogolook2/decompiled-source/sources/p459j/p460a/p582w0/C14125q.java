package p459j.p460a.p582w0;

import android.content.Intent;
import android.net.Uri;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.C6344e;
import p459j.p460a.p582w0.p583a5.C13891a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0006H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R!\u0010\b\u001a\u00020\t8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/util/CardUtils;", "", "()V", "VERSION_HIDE_ENTRY_WHOSCALL_CARD", "", "WHOSCALL_CARD_DEVELOP_URL", "", "WHOSCALL_CARD_PRODUCT_URL", "cardWebIntent", "Landroid/content/Intent;", "cardWebIntent$annotations", "getCardWebIntent", "()Landroid/content/Intent;", "cardWebIntent$delegate", "Lkotlin/Lazy;", "getCardWebPageIntent", "defaultUrl", "isNeedShowCardEntry", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.q */
/* loaded from: classes3-dex2jar.jar:j/a/w0/q.class */
public final class C14125q {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f31639a;

    /* renamed from: c */
    public static final C14125q f31641c = new C14125q();

    /* renamed from: b */
    public static final AbstractC14974f f31640b = C14975g.m662a(C14126a.f31642a);

    /* renamed from: j.a.w0.q$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/q$a.class */
    public static final class C14126a extends AbstractC15150l implements AbstractC15107a<Intent> {

        /* renamed from: a */
        public static final C14126a f31642a = new C14126a();

        public C14126a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Intent invoke() {
            return new Intent("android.intent.action.VIEW", Uri.parse(C6344e.m23186g() ? "https://card.whoscall.com" : "https://card-staging.whoscall.com"));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14125q.class), "cardWebIntent", "getCardWebIntent()Landroid/content/Intent;");
        C15131a0.m412a(sVar);
        f31639a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final Intent m2416a() {
        AbstractC14974f fVar = f31640b;
        AbstractC14906i iVar = f31639a[0];
        return (Intent) fVar.getValue();
    }

    /* renamed from: a */
    public static final Intent m2415a(String str) {
        C15149k.m377b(str, "defaultUrl");
        return new Intent("android.intent.action.VIEW", Uri.parse(str));
    }

    /* renamed from: b */
    public static final boolean m2414b() {
        return C14017g4.m2817g() < 67900000 && C13891a.m3159d(C14017g4.m2810n());
    }
}
