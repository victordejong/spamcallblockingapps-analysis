package p193e.p194a.p195a.p286y0;

import android.graphics.Bitmap;
import android.widget.RemoteViews;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
/* renamed from: e.a.a.y0.r */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/r.class */
public class C7344r implements AbstractC22590g<Bitmap> {

    /* renamed from: a */
    public final /* synthetic */ RemoteViews f23392a;

    public C7344r(C7345s c7345s, RemoteViews remoteViews) {
        this.f23392a = remoteViews;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Bitmap> abstractC22598k, boolean z) {
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onResourceReady(Bitmap bitmap, Object obj, AbstractC22598k<Bitmap> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
        this.f23392a.setInt(2131365240, "setBackgroundColor", 0);
        return false;
    }
}
