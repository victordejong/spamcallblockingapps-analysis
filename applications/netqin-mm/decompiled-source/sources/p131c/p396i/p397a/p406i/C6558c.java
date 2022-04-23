package p131c.p396i.p397a.p406i;

import com.library.p518ad.data.bean.PlaceConfig;
import com.library.p518ad.data.bean.RequestConfig;
import java.util.ArrayList;
import p131c.p396i.p397a.p406i.p407d.AbstractC6560b;
import p131c.p396i.p397a.p406i.p407d.C6563d;
import p131c.p396i.p397a.p406i.p407d.C6565e;
import p131c.p396i.p397a.p406i.p407d.C6567f;
import p131c.p396i.p397a.p406i.p407d.C6570g;
import p131c.p396i.p397a.p406i.p407d.C6572h;
import p131c.p396i.p397a.p406i.p407d.C6574i;
/* renamed from: c.i.a.i.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/c.class */
public class C6558c {
    /* renamed from: a */
    public static AbstractC6560b m20499a(PlaceConfig placeConfig) {
        AbstractC6560b bVar;
        ArrayList<RequestConfig> arrayList;
        if (placeConfig != null && (arrayList = placeConfig.adList) != null) {
            switch (placeConfig.model) {
                case 1:
                    bVar = new C6563d(placeConfig.placeId, arrayList);
                    break;
                case 2:
                    bVar = new C6565e(placeConfig.placeId, arrayList);
                    break;
                case 3:
                    bVar = new C6567f(placeConfig.placeId, arrayList);
                    break;
                case 4:
                    bVar = new C6570g(placeConfig.placeId, arrayList);
                    break;
                case 5:
                    bVar = new C6572h(placeConfig.placeId, arrayList);
                    break;
                case 6:
                    bVar = new C6574i(placeConfig.placeId, arrayList);
                    break;
                default:
                    bVar = new C6565e(placeConfig.placeId, arrayList);
                    break;
            }
        } else {
            bVar = new C6565e(placeConfig.placeId, null);
        }
        bVar.m20490a(placeConfig.adSyId);
        bVar.m20487b(placeConfig.testType);
        return bVar;
    }
}
