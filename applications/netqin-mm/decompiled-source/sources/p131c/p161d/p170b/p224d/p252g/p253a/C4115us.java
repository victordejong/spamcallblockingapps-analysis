package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdgu;
import com.google.android.gms.internal.ads.zzdvu;
import java.util.ArrayList;
/* renamed from: c.d.b.d.g.a.us */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/us.class */
public final /* synthetic */ class C4115us implements zzdvu {

    /* renamed from: a */
    public static final zzdvu f15669a = new C4115us();

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final Object apply(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzdgu(arrayList) { // from class: c.d.b.d.g.a.vs

            /* renamed from: a */
            public final ArrayList f15883a;

            {
                this.f15883a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f15883a);
            }
        };
    }
}
