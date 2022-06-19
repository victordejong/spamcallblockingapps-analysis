package p153l1;

import android.support.p012v4.media.C0082b;
import android.view.View;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: l1.n */
/* loaded from: classes-dex2jar.jar:l1/n.class */
public class C3466n {

    /* renamed from: b */
    public View f11567b;

    /* renamed from: a */
    public final Map<String, Object> f11566a = new HashMap();

    /* renamed from: c */
    public final ArrayList<AbstractC3451g> f11568c = new ArrayList<>();

    @Deprecated
    public C3466n() {
    }

    public C3466n(View view) {
        this.f11567b = view;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C3466n) {
            C3466n c3466n = (C3466n) obj;
            return this.f11567b == c3466n.f11567b && this.f11566a.equals(c3466n.f11566a);
        }
        return false;
    }

    public int hashCode() {
        return this.f11566a.hashCode() + (this.f11567b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("TransitionValues@");
        m8752j.append(Integer.toHexString(hashCode()));
        m8752j.append(":\n");
        StringBuilder m7624k = C0608b.m7624k(m8752j.toString(), "    view = ");
        m7624k.append(this.f11567b);
        m7624k.append("\n");
        String m4789h = C1676a.m4789h(m7624k.toString(), "    values:");
        for (String str : this.f11566a.keySet()) {
            m4789h = m4789h + "    " + str + ": " + this.f11566a.get(str) + "\n";
        }
        return m4789h;
    }
}
