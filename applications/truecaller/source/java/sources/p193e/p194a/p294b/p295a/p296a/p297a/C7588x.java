package p193e.p194a.p294b.p295a.p296a.p297a;

import android.widget.CheckBox;
import android.widget.Spinner;
import s1.s;
import s1.z.b.q;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.a.a.x */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/x.class */
public final class C7588x extends m implements q<CheckBox, Spinner, Spinner, s> {

    /* renamed from: b */
    public static final C7588x f23914b = new C7588x();

    public C7588x() {
        super(3);
    }

    /* renamed from: h */
    public Object m29505h(Object obj, Object obj2, Object obj3) {
        CheckBox checkBox = (CheckBox) obj;
        Spinner spinner = (Spinner) obj2;
        Spinner spinner2 = (Spinner) obj3;
        l.e(checkBox, "chk");
        l.e(spinner, "openSpinner");
        l.e(spinner2, "closeSpinner");
        checkBox.setOnCheckedChangeListener(new C7587w(spinner, spinner2));
        return s.a;
    }
}
