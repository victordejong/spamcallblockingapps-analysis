package p193e.p194a.p294b.p295a.p308b.p310j;

import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.components.images.BusinessImageListWidget;
import p193e.p194a.p294b.p355m.C8064f1;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.b.a.b.j.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/j/d.class */
public final class C7660d extends m implements a<C8064f1> {

    /* renamed from: b */
    public final /* synthetic */ BusinessImageListWidget f24040b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7660d(BusinessImageListWidget businessImageListWidget) {
        super(0);
        this.f24040b = businessImageListWidget;
    }

    public Object invoke() {
        BusinessImageListWidget businessImageListWidget = this.f24040b;
        int i = C3478R.C3480id.imageList;
        RecyclerView recyclerView = (RecyclerView) businessImageListWidget.findViewById(i);
        if (recyclerView != null) {
            return new C8064f1(businessImageListWidget, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(businessImageListWidget.getResources().getResourceName(i)));
    }
}
