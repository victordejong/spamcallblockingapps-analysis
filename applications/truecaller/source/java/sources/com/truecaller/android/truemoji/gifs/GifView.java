package com.truecaller.android.truemoji.gifs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.truemoji.C2886R;
import e.m.d.y.n;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1221t.p1222a.p1223a.C20244d;
import p193e.p194a.p1221t.p1222a.p1223a.EnumC20266r;
import p193e.p194a.p1221t.p1222a.p1223a.View$OnClickListenerC20260l;
import p193e.p194a.p1221t.p1222a.p1228y.C20345c;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\fJ\u001b\u0010\u0010\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R%\u0010\u001e\u001a\n \u001a*\u0004\u0018\u00010\u00190\u00198B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR%\u0010\"\u001a\n \u001a*\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b \u0010!R%\u0010'\u001a\n \u001a*\u0004\u0018\u00010#0#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001b\u001a\u0004\b%\u0010&R\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006*"}, d2 = {"Lcom/truecaller/android/truemoji/gifs/GifView;", "Landroid/widget/RelativeLayout;", "Le/a/t/a/a/d;", "adapter", "Ls1/s;", "setAdapter", "(Le/a/t/a/a/d;)V", "", C22021b.f61237c, "()Z", "visible", "d", "(Z)V", AbstractC2405c.f7629a, "Lkotlin/Function0;", "onNoInternetClicked", "setonNoInternetClicked", "(Ls1/z/b/a;)V", "Le/a/t/a/a/r;", "Le/a/t/a/a/r;", "state", "Landroidx/recyclerview/widget/StaggeredGridLayoutManager;", "f", "Landroidx/recyclerview/widget/StaggeredGridLayoutManager;", "staggeredGridLayoutManager", "Landroidx/recyclerview/widget/RecyclerView;", "kotlin.jvm.PlatformType", "Ls1/g;", "getRvGif", "()Landroidx/recyclerview/widget/RecyclerView;", "rvGif", "Landroid/view/View;", "getProgressGifs", "()Landroid/view/View;", "progressGifs", "Landroid/widget/TextView;", "e", "getViewStatus", "()Landroid/widget/TextView;", "viewStatus", "a", "Ls1/z/b/a;", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/gifs/GifView.class */
public final class GifView extends RelativeLayout {

    /* renamed from: a */
    public a<s> f10054a;

    /* renamed from: b */
    public EnumC20266r f10055b;

    /* renamed from: c */
    public final g f10056c = C19286f.m13660s(this, C2886R.C2888id.progressGifs);

    /* renamed from: d */
    public final g f10057d = C19286f.m13660s(this, C2886R.C2888id.rvGif);

    /* renamed from: e */
    public final g f10058e = C19286f.m13660s(this, C2886R.C2888id.viewStatus);

    /* renamed from: f */
    public final StaggeredGridLayoutManager f10059f;

    /* renamed from: com.truecaller.android.truemoji.gifs.GifView$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/gifs/GifView$a.class */
    public static final class C2891a extends RecyclerView.AbstractC0320i {

        /* renamed from: b */
        public final /* synthetic */ C20244d f10061b;

        public C2891a(C20244d c20244d) {
            GifView.this = r4;
            this.f10061b = c20244d;
        }

        /* renamed from: a */
        public final void m35911a() {
            TextView viewStatus = GifView.this.getViewStatus();
            l.d(viewStatus, "viewStatus");
            C19286f.m13683U(viewStatus, this.f10061b.getItemCount() == 0);
            TextView viewStatus2 = GifView.this.getViewStatus();
            l.d(viewStatus2, "viewStatus");
            EnumC20266r enumC20266r = EnumC20266r.EMPTY_STATE;
            n.d(viewStatus2, enumC20266r);
            GifView.this.f10055b = enumC20266r;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onChanged() {
            super.onChanged();
            m35911a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeInserted(int i, int i2) {
            super.onItemRangeInserted(i, i2);
            m35911a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeRemoved(int i, int i2) {
            super.onItemRangeRemoved(i, i2);
            m35911a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GifView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(2, 1);
        this.f10059f = staggeredGridLayoutManager;
        RelativeLayout.inflate(C17422k.m16113E(context, true), C2886R.layout.view_gif, this);
        RecyclerView rvGif = getRvGif();
        l.d(rvGif, "rvGif");
        rvGif.setLayoutManager(staggeredGridLayoutManager);
        getRvGif().addItemDecoration(new C20345c(C8605o.m28238b(context, 8.0f)));
        getViewStatus().setOnClickListener(new View$OnClickListenerC20260l(this));
    }

    private final View getProgressGifs() {
        return (View) this.f10056c.getValue();
    }

    private final RecyclerView getRvGif() {
        return (RecyclerView) this.f10057d.getValue();
    }

    public final TextView getViewStatus() {
        return (TextView) this.f10058e.getValue();
    }

    /* renamed from: b */
    public final boolean m35914b() {
        RecyclerView rvGif = getRvGif();
        l.d(rvGif, "rvGif");
        RecyclerView.AbstractC0317g adapter = rvGif.getAdapter();
        boolean z = true;
        if (adapter != null) {
            l.d(adapter, "it");
            z = adapter.getItemCount() == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final void m35913c(boolean z) {
        View progressGifs = getProgressGifs();
        l.d(progressGifs, "progressGifs");
        C19286f.m13683U(progressGifs, z);
    }

    /* renamed from: d */
    public final void m35912d(boolean z) {
        TextView viewStatus = getViewStatus();
        l.d(viewStatus, "viewStatus");
        C19286f.m13683U(viewStatus, z);
        TextView viewStatus2 = getViewStatus();
        l.d(viewStatus2, "viewStatus");
        EnumC20266r enumC20266r = EnumC20266r.NO_INTERNET;
        n.d(viewStatus2, enumC20266r);
        this.f10055b = enumC20266r;
    }

    public final void setAdapter(C20244d c20244d) {
        l.e(c20244d, "adapter");
        c20244d.registerAdapterDataObserver(new C2891a(c20244d));
        RecyclerView rvGif = getRvGif();
        l.d(rvGif, "rvGif");
        rvGif.setAdapter(c20244d);
    }

    public final void setonNoInternetClicked(a<s> aVar) {
        l.e(aVar, "onNoInternetClicked");
        this.f10054a = aVar;
    }
}
