package org.mistergroup.shouldianswer.p101ui.search;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.AbstractC0911q;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0925w;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.components.p099a.C2321g;
import org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2454t;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2186cu;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.C2589a;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2646c;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3134x;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment.class */
public final class SearchFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2834a f8413b = new C2834a(null);

    /* renamed from: c */
    private AbstractC2186cu f8414c;

    /* renamed from: d */
    private C2844a f8415d;

    /* renamed from: e */
    private String f8416e = "";

    /* renamed from: f */
    private C2589a f8417f;

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$a.class */
    public static final class C2834a {
        private C2834a() {
        }

        public /* synthetic */ C2834a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final Bundle m433a(String str) {
            C1694h.m3117b(str, "text");
            Bundle bundle = new Bundle();
            bundle.putString("text", str);
            return bundle;
        }

        /* renamed from: a */
        public final void m434a(Context context, String str) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(str, "text");
            Intent intent = new Intent(context, SearchActivity.class);
            intent.putExtras(m433a(str));
            context.startActivity(intent);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$b.class */
    public enum EnumC2835b {
        COPY_NUMBER,
        CALL_NUMBER,
        SMS,
        CONTACT_DETAILS,
        CONTACT_CREATE
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$c.class */
    static final class C2836c extends AbstractC1695i implements AbstractC1674m<ContextMenu, C2853d, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2836c() {
            super(2);
            SearchFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo44a(ContextMenu contextMenu, C2853d c2853d) {
            m432a(contextMenu, c2853d);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m432a(ContextMenu contextMenu, C2853d c2853d) {
            C1694h.m3117b(contextMenu, "menu");
            C1694h.m3117b(c2853d, "item");
            SearchFragment.m439a(SearchFragment.this).m745a(c2853d);
            C2385ac c2385ac = null;
            C2302a m396a = c2853d.m396a();
            C2385ac c2385ac2 = c2385ac;
            String str = "";
            if (m396a != null) {
                C2385ac m1658f = m396a.m1658f();
                c2385ac2 = c2385ac;
                str = "";
                if (m1658f != null) {
                    NumberInfo m1350f = m1658f.m1350f();
                    str = "";
                    if (m1350f != null) {
                        str = m1350f.m1479b();
                    }
                    c2385ac2 = m1658f;
                }
            }
            C2646c m388b = c2853d.m388b();
            C2385ac c2385ac3 = c2385ac2;
            String str2 = str;
            if (m388b != null) {
                NumberInfo m660f = m388b.m660f();
                c2385ac3 = c2385ac2;
                str2 = str;
                if (m660f != null) {
                    Context context = SearchFragment.this.getContext();
                    if (context == null) {
                        C1694h.m3124a();
                    }
                    C1694h.m3122a((Object) context, "context!!");
                    str2 = m660f.m1483a(context);
                    c2385ac3 = m660f.m1451o();
                }
            }
            contextMenu.setHeaderTitle(str2);
            contextMenu.add(0, EnumC2835b.COPY_NUMBER.ordinal(), 0, 2131755254);
            contextMenu.add(0, EnumC2835b.CALL_NUMBER.ordinal(), 0, 2131755252);
            contextMenu.add(0, EnumC2835b.SMS.ordinal(), 0, 2131755258);
            if (c2385ac3 != null) {
                contextMenu.add(0, EnumC2835b.CONTACT_DETAILS.ordinal(), 0, 2131755253);
            } else {
                contextMenu.add(0, EnumC2835b.CONTACT_CREATE.ordinal(), 0, 2131755256);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$d.class */
    static final class C2837d<T> implements AbstractC0911q<List<C2302a>> {
        C2837d() {
            SearchFragment.this = r4;
        }

        /* renamed from: a */
        public final void mo431a(List<C2302a> list) {
            if (list != null) {
                SearchFragment.m438b(SearchFragment.this).m419a(list);
            }
        }
    }

    @AbstractC1634f(m3162b = "SearchFragment.kt", m3161c = {123, 127, 138}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.search.SearchFragment$initWithActivity$4")
    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$e.class */
    public static final class C2838e extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8426a;

        /* renamed from: b */
        Object f8427b;

        /* renamed from: c */
        Object f8428c;

        /* renamed from: d */
        Object f8429d;

        /* renamed from: e */
        Object f8430e;

        /* renamed from: f */
        Object f8431f;

        /* renamed from: g */
        Object f8432g;

        /* renamed from: h */
        int f8433h;

        /* renamed from: i */
        int f8434i;

        /* renamed from: j */
        int f8435j;

        /* renamed from: l */
        private AbstractC1786ad f8437l;

        @AbstractC1634f(m3162b = "SearchFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.search.SearchFragment$initWithActivity$4$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$e$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$e$1.class */
        public static final class C28391 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8438a;

            /* renamed from: c */
            final /* synthetic */ ArrayList f8440c;

            /* renamed from: d */
            private AbstractC1786ad f8441d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C28391(ArrayList arrayList, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2838e.this = r5;
                this.f8440c = arrayList;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C28391) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C28391 c28391 = new C28391(this.f8440c, abstractC1641c);
                c28391.f8441d = (AbstractC1786ad) obj;
                return c28391;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8438a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8441d;
                    SearchFragment.m438b(SearchFragment.this).m421a(this.f8440c);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2838e(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            SearchFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2838e) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2838e c2838e = new C2838e(abstractC1641c);
            c2838e.f8437l = (AbstractC1786ad) obj;
            return c2838e;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0150 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02f4, blocks: (B:11:0x0044, B:15:0x009f, B:18:0x00e6, B:21:0x0133, B:27:0x0150, B:33:0x019e, B:35:0x01aa, B:37:0x01b7, B:42:0x0227, B:44:0x0233, B:46:0x024b, B:47:0x025e, B:51:0x029d), top: B:60:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0233 A[Catch: Exception -> 0x02f4, TRY_ENTER, TryCatch #0 {Exception -> 0x02f4, blocks: (B:11:0x0044, B:15:0x009f, B:18:0x00e6, B:21:0x0133, B:27:0x0150, B:33:0x019e, B:35:0x01aa, B:37:0x01b7, B:42:0x0227, B:44:0x0233, B:46:0x024b, B:47:0x025e, B:51:0x029d), top: B:60:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x029d A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02f4, blocks: (B:11:0x0044, B:15:0x009f, B:18:0x00e6, B:21:0x0133, B:27:0x0150, B:33:0x019e, B:35:0x01aa, B:37:0x01b7, B:42:0x0227, B:44:0x0233, B:46:0x024b, B:47:0x025e, B:51:0x029d), top: B:60:0x000a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x021b -> B:42:0x0227). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0287 -> B:50:0x0297). Please submit an issue!!! */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 782
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.search.SearchFragment.C2838e.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$f.class */
    static final class C2840f implements StickyHeaderLayoutManager.AbstractC2332b {
        C2840f() {
            SearchFragment.this = r4;
        }

        @Override // org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager.AbstractC2332b
        /* renamed from: a */
        public final void mo429a(int i, View view, StickyHeaderLayoutManager.EnumC2331a enumC2331a, StickyHeaderLayoutManager.EnumC2331a enumC2331a2) {
            if (enumC2331a2 != StickyHeaderLayoutManager.EnumC2331a.STICKY && enumC2331a2 != StickyHeaderLayoutManager.EnumC2331a.TRAILING) {
                view.setBackgroundColor(0);
                return;
            }
            C3134x c3134x = C3134x.f9269a;
            Context context = SearchFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            view.setBackgroundColor(c3134x.m26a(context, 2130968726));
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$g.class */
    static final class C2841g extends AbstractC1695i implements AbstractC1663b<C2853d, C1775o> {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8444b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2841g(ActivityC2499a activityC2499a) {
            super(1);
            SearchFragment.this = r4;
            this.f8444b = activityC2499a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(C2853d c2853d) {
            m428a(c2853d);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m428a(C2853d c2853d) {
            C2385ac m1658f;
            NumberInfo m1350f;
            NumberInfo m660f;
            C1694h.m3117b(c2853d, "searchItem");
            int i = C2852c.f8488a[c2853d.m379j().ordinal()];
            if (i == 1) {
                C2302a m396a = c2853d.m396a();
                if (m396a == null || (m1658f = m396a.m1658f()) == null || (m1350f = m1658f.m1350f()) == null) {
                    return;
                }
                NumberDetailFragment.C2713b c2713b = NumberDetailFragment.f8028b;
                Context context = SearchFragment.this.getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context, "context!!");
                c2713b.m553b(context, m1350f);
                this.f8444b.finish();
            } else if (i == 2) {
                C2646c m388b = c2853d.m388b();
                if (m388b == null || (m660f = m388b.m660f()) == null) {
                    return;
                }
                NumberDetailFragment.C2713b c2713b2 = NumberDetailFragment.f8028b;
                Context context2 = SearchFragment.this.getContext();
                if (context2 == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context2, "context!!");
                c2713b2.m553b(context2, m660f);
                this.f8444b.finish();
            } else if (i == 3) {
                try {
                    Intent intent = new Intent("android.intent.action.INSERT");
                    intent.setType("vnd.android.cursor.dir/contact");
                    intent.putExtra("phone", c2853d.m383f());
                    SearchFragment.this.startActivity(intent);
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
            } else if (i != 4) {
            } else {
                String m383f = c2853d.m383f();
                SearchFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C2454t.f7186a.m984a().m981b() + "/search?q=" + m383f + "&src=sian&countryOperator=" + C3099f.f9116a.m177a())));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$h.class */
    static final class View$OnClickListenerC2842h implements View.OnClickListener {
        View$OnClickListenerC2842h() {
            SearchFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SearchFragment.this.m435e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchFragment$i.class */
    public static final class C2843i implements TextWatcher {
        C2843i() {
            SearchFragment.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SearchFragment.this.m435e();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ C2589a m439a(SearchFragment searchFragment) {
        C2589a c2589a = searchFragment.f8417f;
        if (c2589a == null) {
            C1694h.m3116b("model");
        }
        return c2589a;
    }

    /* renamed from: b */
    public static final /* synthetic */ C2844a m438b(SearchFragment searchFragment) {
        C2844a c2844a = searchFragment.f8415d;
        if (c2844a == null) {
            C1694h.m3116b("searchAdapter");
        }
        return c2844a;
    }

    /* renamed from: d */
    private final void m436d() {
    }

    /* renamed from: e */
    public final void m435e() {
        AbstractC2186cu abstractC2186cu = this.f8414c;
        if (abstractC2186cu == null) {
            C1694h.m3116b("binding");
        }
        BetterEditText betterEditText = abstractC2186cu.f5909d;
        C1694h.m3122a((Object) betterEditText, "binding.editSearchText");
        String valueOf = String.valueOf(betterEditText.getText());
        C2844a c2844a = this.f8415d;
        if (c2844a == null) {
            C1694h.m3116b("searchAdapter");
        }
        c2844a.m423a(valueOf);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        String str;
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC0078a b = m857b();
        if (b != null) {
            b.mo7759a("");
        }
        AbstractC0919u m5061a = C0925w.m5055a(this).m5061a(C2589a.class);
        C1694h.m3122a((Object) m5061a, "ViewModelProviders.of(th…ityViewModel::class.java)");
        this.f8417f = (C2589a) m5061a;
        try {
            Intent intent = activityC2499a.getIntent();
            str = "";
            if (intent != null) {
                if (C1694h.m3123a((Object) intent.getAction(), (Object) "android.intent.action.VIEW")) {
                    Uri data = intent.getData();
                    str = "";
                    if (data != null) {
                        C1694h.m3122a((Object) data, "uri");
                        String str2 = data.getPathSegments().get(1);
                        C1694h.m3122a((Object) str2, "uri.pathSegments[1]");
                        str = str2;
                    }
                } else {
                    Bundle extras = intent.getExtras();
                    str = "";
                    if (extras != null) {
                        if (extras.containsKey("text")) {
                            str = extras.getString("text");
                            if (str != null) {
                                C1694h.m3122a((Object) str, "it");
                            }
                        }
                        str = "";
                    }
                }
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            str = "";
        }
        this.f8415d = new C2844a();
        C2844a c2844a = this.f8415d;
        if (c2844a == null) {
            C1694h.m3116b("searchAdapter");
        }
        c2844a.m417a(new C2836c());
        C2321g.f6563e.m5137a(this, new C2837d());
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2838e(null), 2, null);
        StickyHeaderLayoutManager stickyHeaderLayoutManager = new StickyHeaderLayoutManager();
        AbstractC2186cu abstractC2186cu = this.f8414c;
        if (abstractC2186cu == null) {
            C1694h.m3116b("binding");
        }
        RecyclerView recyclerView = abstractC2186cu.f5910e;
        C1694h.m3122a((Object) recyclerView, "binding.listView");
        recyclerView.setLayoutManager(stickyHeaderLayoutManager);
        AbstractC2186cu abstractC2186cu2 = this.f8414c;
        if (abstractC2186cu2 == null) {
            C1694h.m3116b("binding");
        }
        RecyclerView recyclerView2 = abstractC2186cu2.f5910e;
        C1694h.m3122a((Object) recyclerView2, "binding.listView");
        C2844a c2844a2 = this.f8415d;
        if (c2844a2 == null) {
            C1694h.m3116b("searchAdapter");
        }
        recyclerView2.setAdapter(c2844a2);
        AbstractC2186cu abstractC2186cu3 = this.f8414c;
        if (abstractC2186cu3 == null) {
            C1694h.m3116b("binding");
        }
        registerForContextMenu(abstractC2186cu3.f5910e);
        stickyHeaderLayoutManager.m1591a(new C2840f());
        C2844a c2844a3 = this.f8415d;
        if (c2844a3 == null) {
            C1694h.m3116b("searchAdapter");
        }
        c2844a3.m418a(new C2841g(activityC2499a));
        AbstractC2186cu abstractC2186cu4 = this.f8414c;
        if (abstractC2186cu4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2186cu4.f5910e.setOnCreateContextMenuListener(this);
        AbstractC2186cu abstractC2186cu5 = this.f8414c;
        if (abstractC2186cu5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2186cu5.f5909d.setText(str);
        AbstractC2186cu abstractC2186cu6 = this.f8414c;
        if (abstractC2186cu6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2186cu6.f5909d.setOnClickListener(new View$OnClickListenerC2842h());
        C2843i c2843i = new C2843i();
        AbstractC2186cu abstractC2186cu7 = this.f8414c;
        if (abstractC2186cu7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2186cu7.f5909d.addTextChangedListener(c2843i);
        AbstractC2186cu abstractC2186cu8 = this.f8414c;
        if (abstractC2186cu8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2186cu8.f5909d.requestFocusFromTouch();
        m435e();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2186cu abstractC2186cu = this.f8414c;
        if (abstractC2186cu == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2186cu.f5908c;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C1694h.m3117b(menuItem, "item");
        try {
            C2589a c2589a = this.f8417f;
            if (c2589a == null) {
                C1694h.m3116b("model");
            }
            C2853d m738g = c2589a.m738g();
            if (m738g == null) {
                return true;
            }
            String str = null;
            C2385ac c2385ac = null;
            C2302a m396a = m738g.m396a();
            String str2 = str;
            C2385ac c2385ac2 = c2385ac;
            if (m396a != null) {
                C2385ac m1658f = m396a.m1658f();
                str2 = str;
                c2385ac2 = c2385ac;
                if (m1658f != null) {
                    NumberInfo m1350f = m1658f.m1350f();
                    str2 = str;
                    if (m1350f != null) {
                        str2 = m1350f.m1479b();
                    }
                    c2385ac2 = m1658f;
                }
            }
            C2646c m388b = m738g.m388b();
            String str3 = str2;
            C2385ac c2385ac3 = c2385ac2;
            if (m388b != null) {
                NumberInfo m660f = m388b.m660f();
                str3 = str2;
                c2385ac3 = c2385ac2;
                if (m660f != null) {
                    str3 = m660f.m1479b();
                    c2385ac3 = m660f.m1451o();
                }
            }
            if (str3 == null) {
                return true;
            }
            int i = C2852c.f8489b[EnumC2835b.values()[menuItem.getItemId()].ordinal()];
            if (i == 1) {
                C3135y.f9272b.m23a().setPrimaryClip(ClipData.newPlainText("phone number", str3));
                return true;
            } else if (i == 2) {
                C3086e c3086e = C3086e.f9028a;
                Context context = getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context, "context!!");
                c3086e.m187a(context, str3, (AbstractC1663b<? super Boolean, C1775o>) null);
                return true;
            } else if (i == 3) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("sms: " + str3));
                startActivity(intent);
                return true;
            } else if (i == 4) {
                if (c2385ac3 == null) {
                    return true;
                }
                Context context2 = getContext();
                if (context2 == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context2, "context!!");
                c2385ac3.m1366a(context2);
                return true;
            } else if (i != 5) {
                throw new NoWhenBranchMatchedException();
            } else {
                try {
                    Intent intent2 = new Intent("android.intent.action.INSERT");
                    intent2.setType("vnd.android.cursor.dir/contact");
                    intent2.putExtra("phone", str3);
                    startActivity(intent2);
                    C1775o c1775o = C1775o.f4450a;
                    return true;
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    C1775o c1775o2 = C1775o.f4450a;
                    return true;
                }
            }
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            return true;
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558500, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8414c = (AbstractC2186cu) m5843a;
        AbstractC2186cu abstractC2186cu = this.f8414c;
        if (abstractC2186cu == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2186cu.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C2844a c2844a = this.f8415d;
        if (c2844a == null) {
            C1694h.m3116b("searchAdapter");
        }
        c2844a.m423a("");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        m436d();
        super.onResume();
    }
}
