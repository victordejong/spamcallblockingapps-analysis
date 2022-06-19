package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.C0865a;
import androidx.core.view.p038a.C0869c;
import androidx.core.view.p038a.C0874d;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
public class C2699l extends C0865a {

    /* renamed from: b */
    final RecyclerView f10303b;

    /* renamed from: c */
    final C2700a f10304c;

    /* renamed from: androidx.recyclerview.widget.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l$a.class */
    public static final class C2700a extends C0865a {

        /* renamed from: b */
        final C2699l f10305b;

        /* renamed from: c */
        Map<View, C0865a> f10306c = new WeakHashMap();

        public C2700a(C2699l c2699l) {
            this.f10305b = c2699l;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final C0874d mo40053a(View view) {
            C0865a c0865a = this.f10306c.get(view);
            return c0865a != null ? c0865a.mo40053a(view) : super.mo40053a(view);
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo40052a(View view, int i) {
            C0865a c0865a = this.f10306c.get(view);
            if (c0865a != null) {
                c0865a.mo40052a(view, i);
            } else {
                super.mo40052a(view, i);
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo40051a(View view, AccessibilityEvent accessibilityEvent) {
            C0865a c0865a = this.f10306c.get(view);
            if (c0865a != null) {
                c0865a.mo40051a(view, accessibilityEvent);
            } else {
                super.mo40051a(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            if (this.f10305b.f10303b.m40434h() || this.f10305b.f10303b.getLayoutManager() == null) {
                super.mo9886a(view, c0869c);
                return;
            }
            this.f10305b.f10303b.getLayoutManager().m40383a(view, c0869c);
            C0865a c0865a = this.f10306c.get(view);
            if (c0865a != null) {
                c0865a.mo9886a(view, c0869c);
            } else {
                super.mo9886a(view, c0869c);
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final boolean mo10179a(View view, int i, Bundle bundle) {
            if (this.f10305b.f10303b.m40434h() || this.f10305b.f10303b.getLayoutManager() == null) {
                return super.mo10179a(view, i, bundle);
            }
            C0865a c0865a = this.f10306c.get(view);
            if (c0865a != null) {
                if (c0865a.mo10179a(view, i, bundle)) {
                    return true;
                }
            } else if (super.mo10179a(view, i, bundle)) {
                return true;
            }
            this.f10305b.f10303b.getLayoutManager();
            return false;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final boolean mo39917a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            C0865a c0865a = this.f10306c.get(viewGroup);
            return c0865a != null ? c0865a.mo39917a(viewGroup, view, accessibilityEvent) : super.mo39917a(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: b */
        public final boolean mo40050b(View view, AccessibilityEvent accessibilityEvent) {
            C0865a c0865a = this.f10306c.get(view);
            return c0865a != null ? c0865a.mo40050b(view, accessibilityEvent) : super.mo40050b(view, accessibilityEvent);
        }

        /* renamed from: c */
        public final C0865a m40049c(View view) {
            return this.f10306c.remove(view);
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: c */
        public final void mo9962c(View view, AccessibilityEvent accessibilityEvent) {
            C0865a c0865a = this.f10306c.get(view);
            if (c0865a != null) {
                c0865a.mo9962c(view, accessibilityEvent);
            } else {
                super.mo9962c(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: d */
        public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
            C0865a c0865a = this.f10306c.get(view);
            if (c0865a != null) {
                c0865a.mo10621d(view, accessibilityEvent);
            } else {
                super.mo10621d(view, accessibilityEvent);
            }
        }
    }

    public C2699l(RecyclerView recyclerView) {
        this.f10303b = recyclerView;
        C2700a c2700a = this.f10304c;
        if (c2700a == null || !(c2700a instanceof C2700a)) {
            this.f10304c = new C2700a(this);
        } else {
            this.f10304c = c2700a;
        }
    }

    @Override // androidx.core.view.C0865a
    /* renamed from: a */
    public void mo9886a(View view, C0869c c0869c) {
        super.mo9886a(view, c0869c);
        if (this.f10303b.m40434h() || this.f10303b.getLayoutManager() == null) {
            return;
        }
        RecyclerView.AbstractC2637i layoutManager = this.f10303b.getLayoutManager();
        layoutManager.mo39556a(layoutManager.f10027q.f9972e, layoutManager.f10027q.f9925I, c0869c);
    }

    @Override // androidx.core.view.C0865a
    /* renamed from: a */
    public final boolean mo10179a(View view, int i, Bundle bundle) {
        if (super.mo10179a(view, i, bundle)) {
            return true;
        }
        if (this.f10303b.m40434h() || this.f10303b.getLayoutManager() == null) {
            return false;
        }
        RecyclerView.AbstractC2637i layoutManager = this.f10303b.getLayoutManager();
        return layoutManager.mo39557a(layoutManager.f10027q.f9972e, layoutManager.f10027q.f9925I, i, bundle);
    }

    @Override // androidx.core.view.C0865a
    /* renamed from: d */
    public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
        super.mo10621d(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f10303b.m40434h()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().mo40269a(accessibilityEvent);
    }
}
