package androidx.work;

import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/i.class */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5983a = k.a("InputMerger");

    public static i a(String str) {
        try {
            return (i) Class.forName(str).newInstance();
        } catch (Exception e) {
            k.a().a(f5983a, "Trouble instantiating + ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    public abstract d a(List<d> list);
}
