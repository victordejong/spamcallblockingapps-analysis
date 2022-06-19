package com.p051a.p052a.p053a.p054a.p056b;

import android.view.View;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1117d;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1119f;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1120g;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1121h;
import com.p051a.p052a.p053a.p054a.p056b.p057a.C1112a;
import com.p051a.p052a.p053a.p054a.p056b.p057a.C1116c;
import com.p051a.p052a.p053a.p054a.p056b.p057a.C1122i;
import com.p051a.p052a.p053a.p054a.p056b.p057a.C1123j;
import java.util.List;
/* renamed from: com.a.a.a.a.b.d */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/d.class */
public class C1126d extends AbstractC1125c {

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.a.a.a.a.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/d$a.class */
    public static class C1127a extends AbstractC1117d {
        public C1127a(AbstractC1110a abstractC1110a) {
            super(abstractC1110a);
        }

        /* renamed from: a */
        public void mo4141a(C1112a c1112a) {
            C0564y m6233n = C0552u.m6233n(c1112a.f3502a.itemView);
            m6233n.m6188a(1.0f);
            m6233n.m6187a(m4198h());
            m4216a(c1112a, c1112a.f3502a, m6233n);
        }

        /* renamed from: a */
        public void mo4135c(C1112a c1112a, RecyclerView.AbstractC0977w abstractC0977w) {
        }

        @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1117d
        /* renamed from: a */
        public boolean mo4158a(RecyclerView.AbstractC0977w abstractC0977w) {
            m4203f(abstractC0977w);
            abstractC0977w.itemView.setAlpha(FlexItem.FLEX_GROW_DEFAULT);
            m4209c((C1127a) new C1112a(abstractC0977w));
            return true;
        }

        /* renamed from: b */
        public void mo4137b(C1112a c1112a, RecyclerView.AbstractC0977w abstractC0977w) {
            abstractC0977w.itemView.setAlpha(1.0f);
        }

        /* renamed from: c */
        public void mo4140a(C1112a c1112a, RecyclerView.AbstractC0977w abstractC0977w) {
            abstractC0977w.itemView.setAlpha(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.a.a.a.a.b.d$b */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/d$b.class */
    public static class C1128b extends AbstractC1119f {
        public C1128b(AbstractC1110a abstractC1110a) {
            super(abstractC1110a);
        }

        @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1119f
        /* renamed from: a */
        protected void mo4152a(C1116c c1116c) {
            C0564y m6233n = C0552u.m6233n(c1116c.f3515b.itemView);
            m6233n.m6187a(m4193h());
            m6233n.m6181b(c1116c.f3518e - c1116c.f3516c);
            m6233n.m6178c(c1116c.f3519f - c1116c.f3517d);
            m6233n.m6188a(FlexItem.FLEX_GROW_DEFAULT);
            m4216a(c1116c, c1116c.f3515b, m6233n);
        }

        /* renamed from: a */
        public void mo4135c(C1116c c1116c, RecyclerView.AbstractC0977w abstractC0977w) {
            View view = abstractC0977w.itemView;
            view.setAlpha(1.0f);
            view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
            view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
        }

        @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1119f
        /* renamed from: a */
        public boolean mo4153a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, int i, int i2, int i3, int i4) {
            float translationX = abstractC0977w.itemView.getTranslationX();
            float translationY = abstractC0977w.itemView.getTranslationY();
            float alpha = abstractC0977w.itemView.getAlpha();
            m4203f(abstractC0977w);
            int i5 = (int) ((i3 - i) - translationX);
            int i6 = (int) ((i4 - i2) - translationY);
            abstractC0977w.itemView.setTranslationX(translationX);
            abstractC0977w.itemView.setTranslationY(translationY);
            abstractC0977w.itemView.setAlpha(alpha);
            if (abstractC0977w2 != null) {
                m4203f(abstractC0977w2);
                abstractC0977w2.itemView.setTranslationX(-i5);
                abstractC0977w2.itemView.setTranslationY(-i6);
                abstractC0977w2.itemView.setAlpha(FlexItem.FLEX_GROW_DEFAULT);
            }
            m4209c((C1128b) new C1116c(abstractC0977w, abstractC0977w2, i, i2, i3, i4));
            return true;
        }

        @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1119f
        /* renamed from: b */
        protected void mo4150b(C1116c c1116c) {
            C0564y m6233n = C0552u.m6233n(c1116c.f3514a.itemView);
            m6233n.m6181b(FlexItem.FLEX_GROW_DEFAULT);
            m6233n.m6178c(FlexItem.FLEX_GROW_DEFAULT);
            m6233n.m6187a(m4193h());
            m6233n.m6188a(1.0f);
            m4216a(c1116c, c1116c.f3514a, m6233n);
        }

        /* renamed from: b */
        public void mo4137b(C1116c c1116c, RecyclerView.AbstractC0977w abstractC0977w) {
            View view = abstractC0977w.itemView;
            view.setAlpha(1.0f);
            view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
            view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
        }

        /* renamed from: c */
        public void mo4140a(C1116c c1116c, RecyclerView.AbstractC0977w abstractC0977w) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.a.a.a.a.b.d$c */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/d$c.class */
    public static class C1129c extends AbstractC1120g {
        public C1129c(AbstractC1110a abstractC1110a) {
            super(abstractC1110a);
        }

        /* renamed from: a */
        public void mo4141a(C1122i c1122i) {
            View view = c1122i.f3520a.itemView;
            int i = c1122i.f3523d;
            int i2 = c1122i.f3521b;
            int i3 = c1122i.f3524e;
            int i4 = c1122i.f3522c;
            if (i - i2 != 0) {
                C0552u.m6233n(view).m6181b(FlexItem.FLEX_GROW_DEFAULT);
            }
            if (i3 - i4 != 0) {
                C0552u.m6233n(view).m6178c(FlexItem.FLEX_GROW_DEFAULT);
            }
            C0564y m6233n = C0552u.m6233n(view);
            m6233n.m6187a(m4189h());
            m4216a(c1122i, c1122i.f3520a, m6233n);
        }

        /* renamed from: a */
        public void mo4135c(C1122i c1122i, RecyclerView.AbstractC0977w abstractC0977w) {
        }

        @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1120g
        /* renamed from: a */
        public boolean mo4147a(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4) {
            View view = abstractC0977w.itemView;
            int translationX = (int) (i + abstractC0977w.itemView.getTranslationX());
            int translationY = (int) (i2 + abstractC0977w.itemView.getTranslationY());
            m4203f(abstractC0977w);
            int i5 = i3 - translationX;
            int i6 = i4 - translationY;
            C1122i c1122i = new C1122i(abstractC0977w, translationX, translationY, i3, i4);
            if (i5 == 0 && i6 == 0) {
                mo4186e(c1122i, c1122i.f3520a);
                c1122i.mo4180a(c1122i.f3520a);
                return false;
            }
            if (i5 != 0) {
                view.setTranslationX(-i5);
            }
            if (i6 != 0) {
                view.setTranslationY(-i6);
            }
            m4209c((C1129c) c1122i);
            return true;
        }

        /* renamed from: b */
        public void mo4137b(C1122i c1122i, RecyclerView.AbstractC0977w abstractC0977w) {
            View view = abstractC0977w.itemView;
            view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
        }

        /* renamed from: c */
        public void mo4140a(C1122i c1122i, RecyclerView.AbstractC0977w abstractC0977w) {
            View view = abstractC0977w.itemView;
            int i = c1122i.f3523d - c1122i.f3521b;
            int i2 = c1122i.f3524e - c1122i.f3522c;
            if (i != 0) {
                C0552u.m6233n(view).m6181b(FlexItem.FLEX_GROW_DEFAULT);
            }
            if (i2 != 0) {
                C0552u.m6233n(view).m6178c(FlexItem.FLEX_GROW_DEFAULT);
            }
            if (i != 0) {
                view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
            }
            if (i2 != 0) {
                view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.a.a.a.a.b.d$d */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/d$d.class */
    public static class C1130d extends AbstractC1121h {
        public C1130d(AbstractC1110a abstractC1110a) {
            super(abstractC1110a);
        }

        /* renamed from: a */
        public void mo4141a(C1123j c1123j) {
            C0564y m6233n = C0552u.m6233n(c1123j.f3525a.itemView);
            m6233n.m6187a(m4182h());
            m6233n.m6188a(FlexItem.FLEX_GROW_DEFAULT);
            m4216a(c1123j, c1123j.f3525a, m6233n);
        }

        /* renamed from: a */
        public void mo4135c(C1123j c1123j, RecyclerView.AbstractC0977w abstractC0977w) {
            abstractC0977w.itemView.setAlpha(1.0f);
        }

        @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1121h
        /* renamed from: a */
        public boolean mo4142a(RecyclerView.AbstractC0977w abstractC0977w) {
            m4203f(abstractC0977w);
            m4209c((C1130d) new C1123j(abstractC0977w));
            return true;
        }

        /* renamed from: b */
        public void mo4137b(C1123j c1123j, RecyclerView.AbstractC0977w abstractC0977w) {
            abstractC0977w.itemView.setAlpha(1.0f);
        }

        /* renamed from: c */
        public void mo4140a(C1123j c1123j, RecyclerView.AbstractC0977w abstractC0977w) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: a */
    public boolean mo4161a(RecyclerView.AbstractC0977w abstractC0977w, List<Object> list) {
        return !list.isEmpty() || super.mo4161a(abstractC0977w, list);
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.AbstractC1125c
    /* renamed from: l */
    public void mo4160l() {
        m4175a(new C1127a(this));
        m4172a(new C1130d(this));
        m4174a(new C1128b(this));
        m4173a(new C1129c(this));
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.AbstractC1125c
    /* renamed from: n */
    protected void mo4159n() {
        m4164o();
    }
}
