package p459j.p460a.p576w.p579p;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.VisibleForTesting;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.intro.iap.IapPromoActivity;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p576w.C13752i;
import p459j.p460a.p576w.C13755l;
import p459j.p460a.p576w.p578o.C13797d;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14165s3;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000bH\u0087@ø\u0001��¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0007H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/iap/premium/IapPremiumPresenter;", "Lgogolook/callgogolook2/iap/premium/IapPremiumContract$Presenter;", "view", "Lgogolook/callgogolook2/iap/premium/IapPremiumContract$View;", "(Lgogolook/callgogolook2/iap/premium/IapPremiumContract$View;)V", "premiumView", "clickCta", "", "premiumItem", "Lgogolook/callgogolook2/iap/premium/IapPremiumContract$PremiumItem;", "getAsyncPremiumItems", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getString", "", "res", "", "initPremiumItems", "scope", "Lkotlinx/coroutines/CoroutineScope;", "refreshIapNotice", "restoreOrFixPayment", "notice", "Lgogolook/callgogolook2/iap/model/IapNotice;", "showAboutPremium", "trackAction", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.p.h */
/* loaded from: classes2-dex2jar.jar:j/a/w/p/h.class */
public final class C13817h implements AbstractC13806b {

    /* renamed from: a */
    public final AbstractC13807c f31031a;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/premium/IapPremiumPresenter$getAsyncPremiumItems$2", m472f = "IapPremiumPresenter.kt", m471l = {46}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.p.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/h$a.class */
    public static final class C13818a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super List<C13805a>>, Object> {

        /* renamed from: a */
        public CoroutineScope f31032a;

        /* renamed from: b */
        public int f31033b;

        public C13818a(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13818a aVar = new C13818a(dVar);
            aVar.f31032a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super List<C13805a>> dVar) {
            return ((C13818a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f31033b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                ArrayList arrayList = new ArrayList();
                boolean c = C14073m.m2625c();
                int i = R$string.premium_page_cta_regular;
                Intent intent = null;
                if (c) {
                    Context a = C13817h.this.f31031a.mo3393a();
                    arrayList.add(new C13805a("spam_hammer", C13817h.this.m3386a((int) R$string.db_spam_hammer_iap_cta), C13817h.this.m3386a((int) R$string.premium_page_content_auto_block), C13817h.this.m3386a(C14073m.m2634a() ? R$string.premium_page_cta_regular : R$string.premium_page_cta_auto_block), a != null ? new Intent(a, BlockManageActivity.class) : null));
                }
                if (C14063l4.m2695G()) {
                    Context a2 = C13817h.this.f31031a.mo3393a();
                    if (a2 != null) {
                        intent = OfflineDbActivity.m26782a(a2, "iap_page");
                    }
                    String a3 = C13817h.this.m3386a((int) R$string.premiumsubscribe_point_b_v2);
                    String a4 = C13817h.this.m3386a((int) R$string.premium_page_content_auto_update_v2);
                    C13817h hVar = C13817h.this;
                    if (!C14063l4.m2643v()) {
                        i = R$string.premium_page_cta_auto_update;
                    }
                    arrayList.add(new C13805a("auto_update_db", a3, a4, hVar.m3386a(i), intent));
                }
                if (C14063l4.m2696F()) {
                    arrayList.add(new C13805a("expand_db", C13817h.this.m3386a((int) R$string.premiumsubscribe_point_c_new_v2), C13817h.this.m3386a((int) R$string.premium_page_content_expand_db_v2), null, null, 24, null));
                }
                if (AdUtils.m28800i()) {
                    arrayList.add(new C13805a("ad_free", C13817h.this.m3386a((int) R$string.premium_feature_adfree), C13817h.this.m3386a((int) R$string.premium_page_content_adfree), null, null, 24, null));
                }
                return arrayList;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/premium/IapPremiumPresenter$initPremiumItems$1", m472f = "IapPremiumPresenter.kt", m471l = {39, 41}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.p.h$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/h$b.class */
    public static final class C13819b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f31035a;

        /* renamed from: b */
        public int f31036b;

        public C13819b(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13819b bVar = new C13819b(dVar);
            bVar.f31035a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13819b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f31036b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13817h hVar = C13817h.this;
                this.f31036b = 1;
                Object a2 = hVar.m3380a(this);
                obj = a2;
                if (a2 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            C13817h.this.f31031a.mo3390g((List) obj);
            return C14989s.f33022a;
        }
    }

    public C13817h(AbstractC13807c cVar) {
        C15149k.m377b(cVar, "view");
        this.f31031a = cVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final Object m3380a(AbstractC15044d<? super List<C13805a>> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13818a(null), dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r5 != null) goto L_0x001e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m3386a(int r4) {
        /*
            r3 = this;
            r0 = r3
            j.a.w.p.c r0 = r0.f31031a
            android.content.Context r0 = r0.mo3393a()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001b
            r0 = r5
            r1 = r4
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001b
            goto L_0x001e
        L_0x001b:
            java.lang.String r0 = ""
            r5 = r0
        L_0x001e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p579p.C13817h.m3386a(int):java.lang.String");
    }

    /* renamed from: a */
    public void m3387a() {
        C13797d a;
        Context a2 = this.f31031a.mo3393a();
        if (a2 == null || (a = C14165s3.f31680a.m2328a(a2, "iap_premium")) == null) {
            this.f31031a.mo3389t();
            return;
        }
        this.f31031a.mo3391b(a);
        C13755l.m3512a("premium", a.m3431g());
    }

    /* renamed from: a */
    public void m3385a(C13797d dVar) {
        C15149k.m377b(dVar, "notice");
        Context a = this.f31031a.mo3393a();
        if (a != null) {
            C14165s3.f31680a.m2324d(a, dVar.m3431g());
        }
        C13755l.m3513a(1);
    }

    /* renamed from: a */
    public void m3384a(C13805a aVar) {
        Intent c;
        C15149k.m377b(aVar, "premiumItem");
        Context a = this.f31031a.mo3393a();
        if (a != null && (c = aVar.m3397c()) != null) {
            m3378b(aVar);
            a.startActivity(c);
        }
    }

    /* renamed from: a */
    public void m3381a(CoroutineScope coroutineScope) {
        C15149k.m377b(coroutineScope, "scope");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C13819b(null), 3, null);
    }

    /* renamed from: b */
    public void m3379b() {
        Context a = this.f31031a.mo3393a();
        if (a != null) {
            C14217x3.m2156c(a, IapPromoActivity.f10880c.m28042a(a, "restore"));
        }
        C13755l.m3513a(2);
    }

    /* renamed from: b */
    public final void m3378b(C13805a aVar) {
        String d = aVar.m3396d();
        int hashCode = d.hashCode();
        if (hashCode != -2078405508) {
            if (hashCode == -710516444 && d.equals("auto_update_db")) {
                C13752i.m3519b(32);
            }
        } else if (d.equals("spam_hammer")) {
            C13752i.m3519b(31);
        }
    }
}
