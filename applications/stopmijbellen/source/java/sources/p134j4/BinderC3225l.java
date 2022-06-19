package p134j4;

import android.os.Bundle;
import com.google.android.play.core.assetpacks.AssetPackState;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p117h8.C3035k;
import p220r4.C4203l;
/* renamed from: j4.l */
/* loaded from: classes-dex2jar.jar:j4/l.class */
public final class BinderC3225l extends BinderC3213i {

    /* renamed from: c */
    public final /* synthetic */ C3238p f10868c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC3225l(C3238p c3238p, C4203l c4203l) {
        super(c3238p, c4203l);
        this.f10868c = c3238p;
    }

    @Override // p134j4.BinderC3213i, p189o4.AbstractC3867f0
    /* renamed from: e */
    public final void mo1752e(List list) {
        this.f10823b.f10913d.m1747c(this.f10822a);
        C3238p.f10908g.m1507e("onGetSessionStates", new Object[0]);
        C3238p c3238p = this.f10868c;
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Bundle bundle = (Bundle) it2.next();
            C3245r0 c3245r0 = c3238p.f10911b;
            C3246r1 c3246r1 = c3238p.f10912c;
            ArrayList arrayList2 = new ArrayList();
            C3035k c3035k = C3035k.f10213E;
            ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
            HashMap hashMap = new HashMap();
            int size = stringArrayList.size();
            for (int i = 0; i < size; i++) {
                String str = stringArrayList.get(i);
                hashMap.put(str, AssetPackState.m4476i(bundle, str, c3245r0, c3246r1, c3035k));
            }
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                String str2 = (String) it3.next();
                hashMap.put(str2, AssetPackState.m4477h(str2, 4, 0, 0L, 0L, 0.0d, 1, "", ""));
            }
            bundle.getLong("total_bytes_to_download");
            AssetPackState assetPackState = (AssetPackState) hashMap.values().iterator().next();
            if (assetPackState == null) {
                C3238p.f10908g.m1509c("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            int mo2569d = assetPackState.mo2569d();
            boolean z = true;
            if (mo2569d != 1) {
                z = true;
                if (mo2569d != 7) {
                    if (mo2569d == 2) {
                        z = true;
                    } else {
                        z = true;
                        if (mo2569d != 3) {
                            z = false;
                        }
                    }
                }
            }
            if (z) {
                arrayList.add(assetPackState.mo2570c());
            }
        }
        this.f10822a.m1293b(arrayList);
    }
}
