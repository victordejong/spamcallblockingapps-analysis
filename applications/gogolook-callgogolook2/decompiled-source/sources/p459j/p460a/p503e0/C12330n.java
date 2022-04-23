package p459j.p460a.p503e0;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.appcompat.view.SupportMenuInflater;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.detailpage.DetailPageActionViewHolder;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.ndp.MyMemoActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.C14029i3;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14125q;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14189u3;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14978j;
import p626l.p631e0.C14966w;
import p626l.p632u.C15005e0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018��2\u00020\u0001:\u0001!B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u000eH\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0016J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\nH\u0016J\b\u0010\u001b\u001a\u00020\u000eH\u0002J\b\u0010\u001c\u001a\u00020\u000eH\u0002J\b\u0010\u001d\u001a\u00020\u000eH\u0002J\b\u0010\u001e\u001a\u00020\u000eH\u0002J\b\u0010\u001f\u001a\u00020\u000eH\u0002J\b\u0010 \u001a\u00020\u000eH\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\""}, m815d2 = {"Lgogolook/callgogolook2/ndp/NumberDetailHeaderPresenter;", "Lgogolook/callgogolook2/ndp/NumberDetailContract$INumberDetailHeaderPresenter;", "ndpView", "Lgogolook/callgogolook2/ndp/NumberDetailContract$INumberHeaderView;", "(Lgogolook/callgogolook2/ndp/NumberDetailContract$INumberHeaderView;)V", "menuStateList", "", "", "Lgogolook/callgogolook2/ndp/NumberDetailHeaderPresenter$MenuState;", "ndpModel", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "hasCoverUrl", "", "onActionBarStateChanged", "", "performBlock", "performCall", "performFavorite", "performMap", "performMemo", "performSms", "performTag", "prepareOptionsMenu", SupportMenuInflater.XML_MENU, "Landroid/view/Menu;", "setup", "model", "setupActionViewHolder", "setupCover", "setupMajorInfoHeader", "setupMenuState", "setupMetaphor", "setupStatusBar", "MenuState", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.n */
/* loaded from: classes3-dex2jar.jar:j/a/e0/n.class */
public class C12330n implements AbstractC12326j {

    /* renamed from: a */
    public C12328l f27828a;

    /* renamed from: b */
    public final Map<Integer, C12331a> f27829b = C15005e0.m624a(new C14978j(Integer.valueOf((int) R$id.menu_share), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_overflow), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_add), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_remove), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_block), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_unblock), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_tele_report), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_claim_owner), new C12331a(null, null, 3, null)), new C14978j(Integer.valueOf((int) R$id.menu_flag), new C12331a(null, null, 3, null)));

    /* renamed from: c */
    public final AbstractC12327k f27830c;

    /* renamed from: j.a.e0.n$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/n$a.class */
    public static final class C12331a {

        /* renamed from: a */
        public Integer f27831a;

        /* renamed from: b */
        public Boolean f27832b;

        public C12331a() {
            this(null, null, 3, null);
        }

        public C12331a(@DrawableRes Integer num, Boolean bool) {
            this.f27831a = num;
            this.f27832b = bool;
        }

        public /* synthetic */ C12331a(Integer num, Boolean bool, int i, C15145g gVar) {
            this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : bool);
        }

        /* renamed from: a */
        public final Integer m6341a() {
            return this.f27831a;
        }

        /* renamed from: a */
        public final void m6340a(Boolean bool) {
            this.f27832b = bool;
        }

        /* renamed from: a */
        public final void m6339a(Integer num) {
            this.f27831a = num;
        }

        /* renamed from: b */
        public final Boolean m6338b() {
            return this.f27832b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12331a)) {
                return false;
            }
            C12331a aVar = (C12331a) obj;
            return C15149k.m384a(this.f27831a, aVar.f27831a) && C15149k.m384a(this.f27832b, aVar.f27832b);
        }

        public int hashCode() {
            Integer num = this.f27831a;
            int i = 0;
            int hashCode = num != null ? num.hashCode() : 0;
            Boolean bool = this.f27832b;
            if (bool != null) {
                i = bool.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "MenuState(iconResId=" + this.f27831a + ", isVisible=" + this.f27832b + ")";
        }
    }

    /* renamed from: j.a.e0.n$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/n$b.class */
    public static final class C12332b<T> implements Single.OnSubscribe<String> {

        /* renamed from: a */
        public final /* synthetic */ String f27833a;

        public C12332b(String str) {
            this.f27833a = str;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super String> singleSubscriber) {
            singleSubscriber.onSuccess(C14132r.m2401a(this.f27833a));
        }
    }

    /* renamed from: j.a.e0.n$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/n$c.class */
    public static final class C12333c<T> implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ Activity f27834a;

        /* renamed from: b */
        public final /* synthetic */ String f27835b;

        public C12333c(Activity activity, String str) {
            this.f27834a = activity;
            this.f27835b = str;
        }

        /* renamed from: a */
        public final void call(String str) {
            C12860e.m5132a((Context) this.f27834a, this.f27835b, str, true, NumberDetailActivity.class.getSimpleName(), (HandlerC12947l) null);
        }
    }

    /* renamed from: j.a.e0.n$d */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/n$d.class */
    public static final class View$OnClickListenerC12334d implements View.OnClickListener {
        public View$OnClickListenerC12334d(NumberInfo numberInfo, TextView textView) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12330n.this.mo6351e();
            C12266b.m6510d("input_report");
        }
    }

    public C12330n(AbstractC12327k kVar) {
        C15149k.m377b(kVar, "ndpView");
        this.f27830c = kVar;
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: a */
    public void mo6357a() {
        String d;
        Activity context = this.f27830c.getContext();
        C12328l lVar = this.f27828a;
        if (lVar != null && (d = lVar.m6366d()) != null) {
            if (!(d.length() == 0) && C14217x3.m2196a(context)) {
                C14217x3.m2145e(context, d, this.f27830c.mo6381f());
            }
        }
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: a */
    public void mo6356a(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        for (Map.Entry<Integer, C12331a> entry : this.f27829b.entrySet()) {
            MenuItem findItem = menu.findItem(entry.getKey().intValue());
            if (findItem != null) {
                C12331a value = entry.getValue();
                Integer a = value.m6341a();
                if (a != null) {
                    findItem.setIcon(a.intValue());
                }
                Boolean b = value.m6338b();
                if (b != null) {
                    findItem.setVisible(b.booleanValue());
                }
            }
        }
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: a */
    public void mo6355a(C12328l lVar) {
        RowInfo.Primary h;
        RowInfo.Primary.Type type;
        C15149k.m377b(lVar, "model");
        this.f27828a = lVar;
        m6347i();
        m6345k();
        m6344l();
        m6343m();
        m6346j();
        m6342n();
        C12266b bVar = C12266b.f27703b;
        RowInfo f = lVar.m6364f();
        String name = (f == null || (h = f.m28224h()) == null || (type = h.type) == null) ? null : type.name();
        if (name == null) {
            name = "";
        }
        bVar.m6512b(name);
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: b */
    public void mo6354b() {
        String d;
        C12328l lVar;
        String c;
        C12328l lVar2;
        C12328l lVar3 = this.f27828a;
        if (lVar3 != null && (d = lVar3.m6366d()) != null && (lVar = this.f27828a) != null && (c = lVar.m6368c()) != null && (lVar2 = this.f27828a) != null) {
            boolean h = lVar2.m6362h();
            Activity context = this.f27830c.getContext();
            C12328l lVar4 = this.f27828a;
            C12317g.m6396a(context, d, c, lVar4 != null ? lVar4.m6365e() : null, h);
        }
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: c */
    public void mo6353c() {
        String d;
        Activity context = this.f27830c.getContext();
        C12328l lVar = this.f27828a;
        if (lVar != null && (d = lVar.m6366d()) != null) {
            if (!(d.length() == 0) && C14217x3.m2196a(context)) {
                C12810o.m5266a(context, 8, d, null, false, 0, 32, null);
            }
        }
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: d */
    public void mo6352d() {
        Activity context = this.f27830c.getContext();
        C12328l lVar = this.f27828a;
        MyMemoActivity.m26881a(context, lVar != null ? lVar.m6366d() : null);
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: e */
    public void mo6351e() {
        Activity context = this.f27830c.getContext();
        C12328l lVar = this.f27828a;
        if (lVar != null) {
            C12317g.m6398a(context, lVar);
        }
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: f */
    public void mo6350f() {
        String d;
        C12328l lVar;
        String c;
        Activity context = this.f27830c.getContext();
        C12328l lVar2 = this.f27828a;
        if (lVar2 != null && (d = lVar2.m6366d()) != null && (lVar = this.f27828a) != null && (c = lVar.m6368c()) != null) {
            if (!(c.length() == 0) && C14217x3.m2196a(context)) {
                C14081m3.m2607a(new C12332b(c), null, AndroidSchedulers.mainThread(), new C12333c(context, d), null, 18, null);
            }
        }
    }

    @Override // p459j.p460a.p503e0.AbstractC12326j
    /* renamed from: g */
    public void mo6349g() {
        C12328l lVar = this.f27828a;
        if (lVar != null && lVar.m6365e() != null) {
            m6344l();
            m6342n();
            this.f27830c.mo6386a(m6348h());
        }
    }

    /* renamed from: h */
    public final boolean m6348h() {
        boolean z;
        RowInfo f;
        RowInfo.Primary h;
        C12328l lVar = this.f27828a;
        if (lVar == null || (f = lVar.m6364f()) == null || (h = f.m28224h()) == null) {
            C12328l lVar2 = this.f27828a;
            z = C12317g.m6393a(lVar2 != null ? lVar2.m6365e() : null);
        } else {
            RowInfo.Primary.Type type = h.type;
            z = type == RowInfo.Primary.Type.WHOSCALLCARD_V2_V3 || type == RowInfo.Primary.Type.WHOSCALLCARD_V1;
        }
        return z;
    }

    /* renamed from: i */
    public final void m6347i() {
        DetailPageActionViewHolder d;
        C12328l lVar = this.f27828a;
        if (lVar != null && (d = this.f27830c.mo6383d()) != null) {
            d.m28604a(new NumberInfo.DetailDataImp(lVar.m6366d(), lVar.m6368c(), lVar.m6364f(), lVar.m6365e()), new C12329m(lVar.m6370b(), lVar.m6362h(), lVar.m6361i()));
            d.m28606a(0);
            d.m28593j();
        }
    }

    /* renamed from: j */
    public final void m6346j() {
        NumberInfo e;
        C12328l lVar = this.f27828a;
        if (lVar != null && (e = lVar.m6365e()) != null) {
            boolean h = m6348h();
            this.f27830c.mo6385a(h, e.m28309m());
            this.f27830c.mo6386a(h);
        }
    }

    /* renamed from: k */
    public final void m6345k() {
        String d;
        C12328l lVar;
        NumberInfo e;
        C12328l lVar2;
        NumberInfo e2;
        TextView j;
        TextView k;
        TextView h;
        RowInfo f;
        C12328l lVar3 = this.f27828a;
        if (lVar3 != null && (d = lVar3.m6366d()) != null && (lVar = this.f27828a) != null && (e = lVar.m6365e()) != null && (lVar2 = this.f27828a) != null) {
            boolean g = lVar2.m6363g();
            C12328l lVar4 = this.f27828a;
            if (lVar4 != null && (e2 = lVar4.m6365e()) != null && e2.whoscall != null && (j = this.f27830c.mo6377j()) != null && (k = this.f27830c.mo6376k()) != null && (h = this.f27830c.mo6379h()) != null) {
                this.f27830c.getContext();
                DetailPageActionViewHolder d2 = this.f27830c.mo6383d();
                if (d2 != null) {
                    j.setVisibility(8);
                    k.setVisibility(8);
                    h.setVisibility(8);
                    C12328l lVar5 = this.f27828a;
                    if (lVar5 != null && (f = lVar5.m6364f()) != null) {
                        RowInfo.Primary h2 = f.m28224h();
                        if (h2 != null) {
                            RowInfo.Primary.Type type = h2.type;
                            if (type == RowInfo.Primary.Type.NO_INFO || (type == RowInfo.Primary.Type.INPUT && !e.m28312k0())) {
                                j.setVisibility(0);
                                j.setOnClickListener(new View$OnClickListenerC12334d(e, j));
                                this.f27830c.mo6387a(" ");
                            } else {
                                String str = h2.name;
                                C15149k.m383a((Object) str, "name");
                                if (!C14966w.m724a((CharSequence) str)) {
                                    AbstractC12327k kVar = this.f27830c;
                                    String str2 = h2.name;
                                    C15149k.m383a((Object) str2, "name");
                                    kVar.mo6387a(str2);
                                }
                            }
                        }
                        RowInfo.Secondary i = f.m28223i();
                        if (i != null) {
                            String str3 = i.name;
                            C15149k.m383a((Object) str3, "it.name");
                            if (!(!C14966w.m724a((CharSequence) str3))) {
                                i = null;
                            }
                            if (i != null) {
                                if (i.type == RowInfo.Secondary.Type.NO_INFO) {
                                    k.setVisibility(8);
                                } else {
                                    k.setVisibility(0);
                                    k.setText(i.name);
                                    k.setTextColor(i.type == RowInfo.Secondary.Type.COO_DESC ? C14167t.m2314b() : C14167t.m2311e());
                                }
                            }
                        }
                        C14029i3.m2751a(h, e, f, g ? d : null, d2.m28597f(), d2.m28596g());
                    }
                }
            }
        }
    }

    /* renamed from: l */
    public final void m6344l() {
        NumberInfo e;
        Activity context = this.f27830c.getContext();
        C12328l lVar = this.f27828a;
        if (lVar != null && (e = lVar.m6365e()) != null) {
            boolean z = this.f27830c.mo6382e() == EnumC12325i.EXPANDED;
            String d = lVar.m6366d();
            String c = lVar.m6368c();
            boolean b = C14217x3.m2160b(lVar.m6370b());
            boolean h = m6348h();
            int i = (!h || !z) ? R$drawable.ic_actionbar_share : R$drawable.ic_actionbar_share_dark;
            int i2 = (!h || !z) ? R$drawable.ic_actionbar_more : R$drawable.ic_actionbar_more_dark;
            C12331a aVar = this.f27829b.get(Integer.valueOf((int) R$id.menu_share));
            if (aVar != null) {
                aVar.m6339a(Integer.valueOf(i));
            }
            C12331a aVar2 = this.f27829b.get(Integer.valueOf((int) R$id.menu_overflow));
            if (aVar2 != null) {
                aVar2.m6339a(Integer.valueOf(i2));
            }
            C12331a aVar3 = this.f27829b.get(Integer.valueOf((int) R$id.menu_tele_report));
            if (aVar3 != null) {
                boolean z2 = false;
                if (C14137r4.m2372f()) {
                    z2 = false;
                    if (!TextUtils.isEmpty(d)) {
                        z2 = false;
                        if (!C14137r4.m2382a(context, d)) {
                            z2 = false;
                            if (!b) {
                                z2 = false;
                                if (C14189u3.m2264c().m2272a(c)) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                }
                aVar3.m6340a(Boolean.valueOf(z2));
            }
            C12331a aVar4 = this.f27829b.get(Integer.valueOf((int) R$id.menu_flag));
            if (aVar4 != null) {
                aVar4.m6340a(Boolean.valueOf(e.m28312k0()));
            }
            DetailPageActionViewHolder d2 = this.f27830c.mo6383d();
            if (d2 != null) {
                C12331a aVar5 = this.f27829b.get(Integer.valueOf((int) R$id.menu_add));
                if (aVar5 != null) {
                    aVar5.m6340a(Boolean.valueOf(d2.m28602b()));
                }
                C12331a aVar6 = this.f27829b.get(Integer.valueOf((int) R$id.menu_remove));
                if (aVar6 != null) {
                    aVar6.m6340a(Boolean.valueOf(d2.m28599d()));
                }
                C12331a aVar7 = this.f27829b.get(Integer.valueOf((int) R$id.menu_block));
                if (aVar7 != null) {
                    aVar7.m6340a(Boolean.valueOf(d2.m28607a()));
                }
                C12331a aVar8 = this.f27829b.get(Integer.valueOf((int) R$id.menu_unblock));
                if (aVar8 != null) {
                    aVar8.m6340a(Boolean.valueOf(d2.m28600c()));
                }
                C12331a aVar9 = this.f27829b.get(Integer.valueOf((int) R$id.menu_claim_owner));
                if (aVar9 != null) {
                    aVar9.m6340a(Boolean.valueOf(C14125q.m2414b()));
                }
                this.f27830c.mo6378i();
            }
        }
    }

    /* renamed from: m */
    public final void m6343m() {
        String d;
        C12328l lVar;
        RowInfo f;
        RecycleSafeImageView a;
        ImageView g;
        ImageView c;
        C12328l lVar2 = this.f27828a;
        if (lVar2 != null && (d = lVar2.m6366d()) != null && (lVar = this.f27828a) != null && (f = lVar.m6364f()) != null && (a = this.f27830c.mo6389a()) != null && (g = this.f27830c.mo6380g()) != null && (c = this.f27830c.mo6384c()) != null) {
            CallUtils.m26577a(a, c, g, f, d, CallUtils.EnumC4993l.NDP);
            g.setBackgroundColor(-1);
        }
    }

    /* renamed from: n */
    public final void m6342n() {
        RowInfo f;
        C12328l lVar = this.f27828a;
        if (lVar != null && lVar.m6365e() != null) {
            boolean h = m6348h();
            C12328l lVar2 = this.f27828a;
            if (lVar2 != null && (f = lVar2.m6364f()) != null) {
                EnumC12325i e = this.f27830c.mo6382e();
                C12328l lVar3 = this.f27828a;
                if (lVar3 != null) {
                    this.f27830c.mo6388a((!h || e != EnumC12325i.EXPANDED) ? C14123p4.m2449a(CallUtils.m26582a(f, !TextUtils.isEmpty(lVar3.m6370b()))) : 0);
                    return;
                }
                C15149k.m378b();
                throw null;
            }
        }
    }
}
