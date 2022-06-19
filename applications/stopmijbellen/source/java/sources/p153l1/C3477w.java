package p153l1;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import p153l1.AbstractC3451g;
/* renamed from: l1.w */
/* loaded from: classes-dex2jar.jar:l1/w.class */
public class C3477w extends C3458j {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f11578a;

    /* renamed from: b */
    public final /* synthetic */ View f11579b;

    /* renamed from: c */
    public final /* synthetic */ View f11580c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC3478x f11581d;

    public C3477w(AbstractC3478x abstractC3478x, ViewGroup viewGroup, View view, View view2) {
        this.f11581d = abstractC3478x;
        this.f11578a = viewGroup;
        this.f11579b = view;
        this.f11580c = view2;
    }

    @Override // p153l1.C3458j, p153l1.AbstractC3451g.AbstractC3455d
    /* renamed from: c */
    public void mo2234c(AbstractC3451g abstractC3451g) {
        this.f11578a.getOverlay().remove(this.f11579b);
    }

    @Override // p153l1.AbstractC3451g.AbstractC3455d
    /* renamed from: d */
    public void mo2233d(AbstractC3451g abstractC3451g) {
        this.f11580c.setTag(2131296982, null);
        this.f11578a.getOverlay().remove(this.f11579b);
        abstractC3451g.mo2251v(this);
    }

    @Override // p153l1.C3458j, p153l1.AbstractC3451g.AbstractC3455d
    /* renamed from: e */
    public void mo2232e(AbstractC3451g abstractC3451g) {
        if (this.f11579b.getParent() == null) {
            this.f11578a.getOverlay().add(this.f11579b);
            return;
        }
        AbstractC3478x abstractC3478x = this.f11581d;
        int size = abstractC3478x.f11533m.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            abstractC3478x.f11533m.get(size).cancel();
        }
        ArrayList<AbstractC3451g.AbstractC3455d> arrayList = abstractC3478x.f11537q;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) abstractC3478x.f11537q.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((AbstractC3451g.AbstractC3455d) arrayList2.get(i)).mo2236a(abstractC3478x);
        }
    }
}
