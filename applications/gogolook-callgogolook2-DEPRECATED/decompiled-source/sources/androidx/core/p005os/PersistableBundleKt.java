package androidx.core.p005os;

import android.os.Build;
import android.os.PersistableBundle;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010��\n\u0002\b\u0002\u001a=\u0010��\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m815d2 = {"persistableBundleOf", "Landroid/os/PersistableBundle;", "pairs", "", "Lkotlin/Pair;", "", "", "([Lkotlin/Pair;)Landroid/os/PersistableBundle;", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* renamed from: androidx.core.os.PersistableBundleKt */
/* loaded from: classes-dex2jar.jar:androidx/core/os/PersistableBundleKt.class */
public final class PersistableBundleKt {
    @RequiresApi(21)
    public static final PersistableBundle persistableBundleOf(C14978j<String, ? extends Object>... jVarArr) {
        C15149k.m377b(jVarArr, "pairs");
        PersistableBundle persistableBundle = new PersistableBundle(jVarArr.length);
        for (C14978j<String, ? extends Object> jVar : jVarArr) {
            String a = jVar.m661a();
            Object b = jVar.m660b();
            if (b == null) {
                persistableBundle.putString(a, null);
            } else if (b instanceof Boolean) {
                if (Build.VERSION.SDK_INT >= 22) {
                    persistableBundle.putBoolean(a, ((Boolean) b).booleanValue());
                } else {
                    throw new IllegalArgumentException("Illegal value type boolean for key \"" + a + '\"');
                }
            } else if (b instanceof Double) {
                persistableBundle.putDouble(a, ((Number) b).doubleValue());
            } else if (b instanceof Integer) {
                persistableBundle.putInt(a, ((Number) b).intValue());
            } else if (b instanceof Long) {
                persistableBundle.putLong(a, ((Number) b).longValue());
            } else if (b instanceof String) {
                persistableBundle.putString(a, (String) b);
            } else if (b instanceof boolean[]) {
                if (Build.VERSION.SDK_INT >= 22) {
                    persistableBundle.putBooleanArray(a, (boolean[]) b);
                } else {
                    throw new IllegalArgumentException("Illegal value type boolean[] for key \"" + a + '\"');
                }
            } else if (b instanceof double[]) {
                persistableBundle.putDoubleArray(a, (double[]) b);
            } else if (b instanceof int[]) {
                persistableBundle.putIntArray(a, (int[]) b);
            } else if (b instanceof long[]) {
                persistableBundle.putLongArray(a, (long[]) b);
            } else if (b instanceof Object[]) {
                Class<?> componentType = b.getClass().getComponentType();
                if (componentType != null) {
                    C15149k.m383a((Object) componentType, "value::class.java.componentType!!");
                    if (!String.class.isAssignableFrom(componentType)) {
                        throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + a + '\"');
                    } else if (b != null) {
                        persistableBundle.putStringArray(a, (String[]) b);
                    } else {
                        throw new C14986p("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                    }
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else {
                throw new IllegalArgumentException("Illegal value type " + b.getClass().getCanonicalName() + " for key \"" + a + '\"');
            }
        }
        return persistableBundle;
    }
}
