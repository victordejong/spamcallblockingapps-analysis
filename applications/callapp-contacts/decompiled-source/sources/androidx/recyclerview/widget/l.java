package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.a.c;
import androidx.core.view.a.d;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
public class l extends androidx.core.view.a {

    /* renamed from: b  reason: collision with root package name */
    final RecyclerView f5486b;

    /* renamed from: c  reason: collision with root package name */
    final a f5487c;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l$a.class */
    public static final class a extends androidx.core.view.a {

        /* renamed from: b  reason: collision with root package name */
        final l f5488b;

        /* renamed from: c  reason: collision with root package name */
        Map<View, androidx.core.view.a> f5489c = new WeakHashMap();

        public a(l lVar) {
            this.f5488b = lVar;
        }

        @Override // androidx.core.view.a
        public final d a(View view) {
            androidx.core.view.a aVar = this.f5489c.get(view);
            return aVar != null ? aVar.a(view) : super.a(view);
        }

        @Override // androidx.core.view.a
        public final void a(View view, int i) {
            androidx.core.view.a aVar = this.f5489c.get(view);
            if (aVar != null) {
                aVar.a(view, i);
            } else {
                super.a(view, i);
            }
        }

        @Override // androidx.core.view.a
        public final void a(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.f5489c.get(view);
            if (aVar != null) {
                aVar.a(view, accessibilityEvent);
            } else {
                super.a(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.a
        public final void a(View view, c cVar) {
            if (this.f5488b.f5486b.h() || this.f5488b.f5486b.getLayoutManager() == null) {
                super.a(view, cVar);
                return;
            }
            this.f5488b.f5486b.getLayoutManager().a(view, cVar);
            androidx.core.view.a aVar = this.f5489c.get(view);
            if (aVar != null) {
                aVar.a(view, cVar);
            } else {
                super.a(view, cVar);
            }
        }

        @Override // androidx.core.view.a
        public final boolean a(View view, int i, Bundle bundle) {
            if (this.f5488b.f5486b.h() || this.f5488b.f5486b.getLayoutManager() == null) {
                return super.a(view, i, bundle);
            }
            androidx.core.view.a aVar = this.f5489c.get(view);
            if (aVar != null) {
                if (aVar.a(view, i, bundle)) {
                    return true;
                }
            } else if (super.a(view, i, bundle)) {
                return true;
            }
            this.f5488b.f5486b.getLayoutManager();
            return false;
        }

        @Override // androidx.core.view.a
        public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.f5489c.get(viewGroup);
            return aVar != null ? aVar.a(viewGroup, view, accessibilityEvent) : super.a(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.a
        public final boolean b(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.f5489c.get(view);
            return aVar != null ? aVar.b(view, accessibilityEvent) : super.b(view, accessibilityEvent);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final androidx.core.view.a c(View view) {
            return this.f5489c.remove(view);
        }

        @Override // androidx.core.view.a
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.f5489c.get(view);
            if (aVar != null) {
                aVar.c(view, accessibilityEvent);
            } else {
                super.c(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.f5489c.get(view);
            if (aVar != null) {
                aVar.d(view, accessibilityEvent);
            } else {
                super.d(view, accessibilityEvent);
            }
        }
    }

    public l(RecyclerView recyclerView) {
        this.f5486b = recyclerView;
        a aVar = this.f5487c;
        if (aVar == null || !(aVar instanceof a)) {
            this.f5487c = new a(this);
        } else {
            this.f5487c = aVar;
        }
    }

    @Override // androidx.core.view.a
    public void a(View view, c cVar) {
        super.a(view, cVar);
        if (!this.f5486b.h() && this.f5486b.getLayoutManager() != null) {
            RecyclerView.i layoutManager = this.f5486b.getLayoutManager();
            layoutManager.a(layoutManager.q.e, layoutManager.q.I, cVar);
        }
    }

    @Override // androidx.core.view.a
    public final boolean a(View view, int i, Bundle bundle) {
        if (super.a(view, i, bundle)) {
            return true;
        }
        if (this.f5486b.h() || this.f5486b.getLayoutManager() == null) {
            return false;
        }
        RecyclerView.i layoutManager = this.f5486b.getLayoutManager();
        return layoutManager.a(layoutManager.q.e, layoutManager.q.I, i, bundle);
    }

    @Override // androidx.core.view.a
    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !this.f5486b.h()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().a(accessibilityEvent);
            }
        }
    }
}
