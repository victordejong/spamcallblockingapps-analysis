package p123i3;

import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* renamed from: i3.b */
/* loaded from: classes-dex2jar.jar:i3/b.class */
public class C3092b extends FloatingActionButton.AbstractC1776a {

    /* renamed from: a */
    public final /* synthetic */ int f10468a;

    /* renamed from: b */
    public final /* synthetic */ BottomAppBar f10469b;

    /* renamed from: i3.b$a */
    /* loaded from: classes-dex2jar.jar:i3/b$a.class */
    public class C3093a extends FloatingActionButton.AbstractC1776a {
        public C3093a() {
            C3092b.this = r4;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC1776a
        /* renamed from: b */
        public void mo2655b(FloatingActionButton floatingActionButton) {
            BottomAppBar.m4755x(C3092b.this.f10469b);
        }
    }

    public C3092b(BottomAppBar bottomAppBar, int i) {
        this.f10469b = bottomAppBar;
        this.f10468a = i;
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC1776a
    /* renamed from: a */
    public void mo2656a(FloatingActionButton floatingActionButton) {
        floatingActionButton.setTranslationX(this.f10469b.m4759E(this.f10468a));
        floatingActionButton.m4574o(new C3093a(), true);
    }
}
