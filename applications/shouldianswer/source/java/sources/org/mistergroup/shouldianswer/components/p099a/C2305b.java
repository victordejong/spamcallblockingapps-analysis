package org.mistergroup.shouldianswer.components.p099a;

import android.content.Context;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
/* renamed from: org.mistergroup.shouldianswer.components.a.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/b.class */
public final class C2305b extends RecyclerView.AbstractC0977w {

    /* renamed from: a */
    private C2302a f6518a;

    /* renamed from: b */
    private C2385ac f6519b;

    /* renamed from: c */
    private final AbstractC2118ag f6520c;

    /* renamed from: d */
    private final C2314e f6521d;

    /* renamed from: org.mistergroup.shouldianswer.components.a.b$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/b$a.class */
    public static final class C2310a implements Observer {

        /* renamed from: b */
        final /* synthetic */ C2302a f6528b;

        C2310a(C2302a c2302a) {
            C2305b.this = r4;
            this.f6528b = c2302a;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            C2305b.this.m1652b(this.f6528b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2305b(AbstractC2118ag abstractC2118ag, C2314e c2314e) {
        super(abstractC2118ag.m5863d());
        C1694h.m3117b(abstractC2118ag, "binding");
        C1694h.m3117b(c2314e, "adapter");
        this.f6520c = abstractC2118ag;
        this.f6521d = c2314e;
        final View d = this.f6520c.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        d.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.components.a.b.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractC1663b<C2302a, C1775o> m1631d;
                C2302a c2302a = C2305b.this.f6518a;
                if (c2302a == null || c2302a.m1659e() != C2302a.EnumC2303a.CONTACT || (m1631d = C2305b.this.m1656a().m1631d()) == null) {
                    return;
                }
                m1631d.mo138a(c2302a);
            }
        });
        d.setOnCreateContextMenuListener(new View.OnCreateContextMenuListener() { // from class: org.mistergroup.shouldianswer.components.a.b.2
            @Override // android.view.View.OnCreateContextMenuListener
            public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
                if (C2305b.this.f6519b == null) {
                    return;
                }
                C1694h.m3122a((Object) view, "view");
                if (view.getId() != d.getId()) {
                    contextMenu.clear();
                    return;
                }
                AbstractC1674m<ContextMenu, C2302a, C1775o> m1633c = C2305b.this.m1656a().m1633c();
                if (m1633c == null) {
                    return;
                }
                C1694h.m3122a((Object) contextMenu, "contextMenu");
                C2302a c2302a = C2305b.this.f6518a;
                if (c2302a == null) {
                    C1694h.m3124a();
                }
                m1633c.mo44a(contextMenu, c2302a);
            }
        });
        this.f6520c.f5513c.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.components.a.b.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2385ac c2385ac = C2305b.this.f6519b;
                if (c2385ac != null) {
                    View d2 = C2305b.this.f6520c.m5863d();
                    C1694h.m3122a((Object) d2, "binding.root");
                    Context context = d2.getContext();
                    C1694h.m3122a((Object) context, "binding.root.context");
                    c2385ac.m1358b(context);
                }
            }
        });
        if (this.f6521d.m1629e()) {
            FrameLayout frameLayout = this.f6520c.f5514d;
            C1694h.m3122a((Object) frameLayout, "binding.flCall");
            ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
            if (layoutParams == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            Resources resources = d.getResources();
            C1694h.m3122a((Object) resources, "itemView.resources");
            marginLayoutParams.rightMargin = Math.round(25 * (resources.getDisplayMetrics().densityDpi / 160));
            FrameLayout frameLayout2 = this.f6520c.f5514d;
            C1694h.m3122a((Object) frameLayout2, "binding.flCall");
            frameLayout2.setLayoutParams(marginLayoutParams);
        }
        this.f6520c.f5515e.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.components.a.b.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2385ac c2385ac = C2305b.this.f6519b;
                if (c2385ac != null) {
                    View d2 = C2305b.this.f6520c.m5863d();
                    C1694h.m3122a((Object) d2, "binding.root");
                    Context context = d2.getContext();
                    C1694h.m3122a((Object) context, "binding.root.context");
                    c2385ac.m1366a(context);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00e5 A[Catch: Exception -> 0x0265, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0265, blocks: (B:2:0x0000, B:4:0x001e, B:6:0x00b1, B:8:0x00bb, B:10:0x00c8, B:17:0x00e5, B:19:0x00f2, B:26:0x010f, B:28:0x0138, B:30:0x014c, B:31:0x0155, B:33:0x015c, B:36:0x0177, B:39:0x0184, B:41:0x0189, B:42:0x0190), top: B:46:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010f A[Catch: Exception -> 0x0265, TRY_ENTER, TryCatch #0 {Exception -> 0x0265, blocks: (B:2:0x0000, B:4:0x001e, B:6:0x00b1, B:8:0x00bb, B:10:0x00c8, B:17:0x00e5, B:19:0x00f2, B:26:0x010f, B:28:0x0138, B:30:0x014c, B:31:0x0155, B:33:0x015c, B:36:0x0177, B:39:0x0184, B:41:0x0189, B:42:0x0190), top: B:46:0x0000 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1652b(org.mistergroup.shouldianswer.components.p099a.C2302a r7) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.components.p099a.C2305b.m1652b(org.mistergroup.shouldianswer.components.a.a):void");
    }

    /* renamed from: a */
    public final C2314e m1656a() {
        return this.f6521d;
    }

    /* renamed from: a */
    public final void m1655a(C2302a c2302a) {
        C1694h.m3117b(c2302a, "item");
        this.f6518a = c2302a;
        new C2310a(c2302a);
        this.f6519b = c2302a.m1658f();
        m1652b(c2302a);
    }
}
