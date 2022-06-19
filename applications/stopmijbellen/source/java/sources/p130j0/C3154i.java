package p130j0;

import java.util.ArrayList;
import p130j0.C3155j;
import p152l0.AbstractC3426a;
import p226s.C4263g;
/* renamed from: j0.i */
/* loaded from: classes-dex2jar.jar:j0/i.class */
public class C3154i implements AbstractC3426a<C3155j.C3156a> {

    /* renamed from: a */
    public final /* synthetic */ String f10612a;

    public C3154i(String str) {
        this.f10612a = str;
    }

    /* renamed from: a */
    public void accept(C3155j.C3156a c3156a) {
        synchronized (C3155j.f10615c) {
            C4263g<String, ArrayList<AbstractC3426a<C3155j.C3156a>>> c4263g = C3155j.f10616d;
            ArrayList<AbstractC3426a<C3155j.C3156a>> arrayList = c4263g.get(this.f10612a);
            if (arrayList == null) {
                return;
            }
            c4263g.remove(this.f10612a);
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).accept(c3156a);
            }
        }
    }
}
