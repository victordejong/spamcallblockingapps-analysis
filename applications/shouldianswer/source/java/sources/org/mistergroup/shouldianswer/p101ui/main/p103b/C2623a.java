package org.mistergroup.shouldianswer.p101ui.main.p103b;

import android.graphics.Bitmap;
import android.view.ContextMenu;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p058c.AbstractC1136e;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1798an;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.p097a.AbstractC2261w;
import org.mistergroup.shouldianswer.utils.C3082b;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3116p;
import org.mistergroup.shouldianswer.utils.C3117q;
/* renamed from: org.mistergroup.shouldianswer.ui.main.b.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/a.class */
public final class C2623a extends RecyclerView.AbstractC0977w implements AbstractC1136e {

    /* renamed from: a */
    private int f7704a;

    /* renamed from: b */
    private final AbstractC2261w f7705b;

    /* renamed from: c */
    private final C2628b f7706c;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/a$a.class */
    public static final class View$OnClickListenerC2624a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ C2385ac f7708b;

        @AbstractC1634f(m3162b = "FavoriteViewItemHolder.kt", m3161c = {50}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.favorites.FavoriteViewItemHolder$bindItem$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.b.a$a$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/a$a$1.class */
        static final class C26251 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f7709a;

            /* renamed from: b */
            int f7710b;

            /* renamed from: d */
            private AbstractC1786ad f7712d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26251(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2624a.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26251) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26251 c26251 = new C26251(abstractC1641c);
                c26251.f7712d = (AbstractC1786ad) obj;
                return c26251;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object a = C1622b.m3174a();
                int i = this.f7710b;
                try {
                    if (i == 0) {
                        C1771k.m2979a(obj);
                        this.f7709a = this.f7712d;
                        this.f7710b = 1;
                        if (C1798an.m2945a(100L, this) == a) {
                            return a;
                        }
                    } else if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        AbstractC1786ad abstractC1786ad = (AbstractC1786ad) this.f7709a;
                        C1771k.m2979a(obj);
                    }
                    AbstractC1663b<C2385ac, C1775o> m676c = C2623a.this.f7706c.m676c();
                    if (m676c != null) {
                        m676c.mo138a(View$OnClickListenerC2624a.this.f7708b);
                    }
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                return C1775o.f4450a;
            }
        }

        View$OnClickListenerC2624a(C2385ac c2385ac) {
            C2623a.this = r4;
            this.f7708b = c2385ac;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C2623a.this.f7706c.m676c() != null) {
                FrameLayout frameLayout = C2623a.this.f7705b.f6313g;
                C1694h.m3122a((Object) frameLayout, "binding.llItem");
                new C3082b(frameLayout, 2130771999, 1).m200a();
                C1892g.m2677a(C1843bd.f4587a, C3084c.m192b(), null, new C26251(null), 2, null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.a$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/a$b.class */
    public static final class View$OnClickListenerC2626b implements View.OnClickListener {
        View$OnClickListenerC2626b() {
            C2623a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2623a.this.f7705b.f6309c.showContextMenu();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.a$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/a$c.class */
    public static final class View$OnCreateContextMenuListenerC2627c implements View.OnCreateContextMenuListener {

        /* renamed from: b */
        final /* synthetic */ C2302a f7715b;

        View$OnCreateContextMenuListenerC2627c(C2302a c2302a) {
            C2623a.this = r4;
            this.f7715b = c2302a;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            AbstractC1674m<ContextMenu, C2302a, C1775o> m679b;
            if (C2623a.this.f7706c.m679b() == null || (m679b = C2623a.this.f7706c.m679b()) == null) {
                return;
            }
            C1694h.m3122a((Object) contextMenu, "contextMenu");
            m679b.mo44a(contextMenu, this.f7715b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2623a(AbstractC2261w abstractC2261w, C2628b c2628b) {
        super(abstractC2261w.m5863d());
        C1694h.m3117b(abstractC2261w, "binding");
        C1694h.m3117b(c2628b, "adapter");
        this.f7705b = abstractC2261w;
        this.f7706c = c2628b;
    }

    @Override // com.p051a.p052a.p053a.p054a.p058c.AbstractC1136e
    /* renamed from: a */
    public int mo708a() {
        return this.f7704a;
    }

    @Override // com.p051a.p052a.p053a.p054a.p058c.AbstractC1136e
    /* renamed from: a */
    public void mo4116a(int i) {
        this.f7704a = i;
    }

    /* renamed from: a */
    public final void m705a(C2302a c2302a) {
        C1694h.m3117b(c2302a, "contactItem");
        if (c2302a.m1659e() != C2302a.EnumC2303a.CONTACT) {
            AppCompatTextView appCompatTextView = this.f7705b.f6315i;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvTitle");
            appCompatTextView.setText(c2302a.m1661c());
            this.f7705b.f6311e.setImageResource(2131230919);
            AppCompatTextView appCompatTextView2 = this.f7705b.f6314h;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvImageText");
            appCompatTextView2.setText("");
            return;
        }
        C2385ac m1658f = c2302a.m1658f();
        C3117q c3117q = C3117q.f9185a;
        if (m1658f == null) {
            C1694h.m3124a();
        }
        Bitmap m100c = c3117q.m100c(m1658f.m1368a());
        this.f7705b.f6311e.setImageBitmap(m100c);
        AppCompatTextView appCompatTextView3 = this.f7705b.f6314h;
        C1694h.m3122a((Object) appCompatTextView3, "binding.tvImageText");
        appCompatTextView3.setVisibility(m100c == null ? 0 : 8);
        LinearLayout linearLayout = this.f7705b.f6312f;
        C1694h.m3122a((Object) linearLayout, "binding.llGroupWithShadow");
        linearLayout.setVisibility(m100c != null ? 0 : 8);
        if (m100c == null) {
            C3116p c3116p = C3116p.f9183a;
            String m1360b = m1658f.m1360b();
            if (m1360b == null) {
                C1694h.m3124a();
            }
            this.f7705b.f6311e.setImageBitmap(c3116p.m107a(m1360b));
            AppCompatTextView appCompatTextView4 = this.f7705b.f6314h;
            C1694h.m3122a((Object) appCompatTextView4, "binding.tvImageText");
            C3116p c3116p2 = C3116p.f9183a;
            String m1360b2 = m1658f.m1360b();
            if (m1360b2 == null) {
                C1694h.m3124a();
            }
            appCompatTextView4.setText(c3116p2.m105b(m1360b2));
        }
        ImageButton imageButton = this.f7705b.f6310d;
        C1694h.m3122a((Object) imageButton, "binding.ibStar");
        imageButton.setVisibility(m1658f.m1356c() ? 0 : 8);
        AppCompatTextView appCompatTextView5 = this.f7705b.f6315i;
        C1694h.m3122a((Object) appCompatTextView5, "binding.tvTitle");
        appCompatTextView5.setText(m1658f.m1360b());
        this.f7705b.f6313g.setOnClickListener(new View$OnClickListenerC2624a(m1658f));
        this.f7705b.f6309c.setOnClickListener(new View$OnClickListenerC2626b());
        this.f7705b.f6309c.setOnCreateContextMenuListener(new View$OnCreateContextMenuListenerC2627c(c2302a));
    }
}
