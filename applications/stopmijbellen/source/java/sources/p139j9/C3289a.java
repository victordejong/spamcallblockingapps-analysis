package p139j9;

import android.support.p012v4.media.C0082b;
import java.util.Iterator;
import java.util.LinkedList;
/* renamed from: j9.a */
/* loaded from: classes2-dex2jar.jar:j9/a.class */
public class C3289a {

    /* renamed from: a */
    public LinkedList<C3293c> f11129a = new LinkedList<>();

    /* renamed from: b */
    public boolean f11130b;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder m8752j = C0082b.m8752j("bulletedList=");
        m8752j.append(this.f11130b);
        sb.append(m8752j.toString());
        sb.append("\n");
        LinkedList<C3293c> linkedList = this.f11129a;
        if (linkedList != null) {
            Iterator<C3293c> it2 = linkedList.iterator();
            while (it2.hasNext()) {
                sb.append("row=[");
                sb.append(it2.next().toString());
                sb.append("]\n");
            }
        } else {
            sb.append("rows:none");
        }
        return sb.toString();
    }
}
