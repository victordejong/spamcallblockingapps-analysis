package androidx.core.view;
/* loaded from: classes-dex2jar.jar:androidx/core/view/DisplayCutoutCompat.class */
public final class DisplayCutoutCompat {

    /* renamed from: a */
    private final Object f3222a;

    private DisplayCutoutCompat(Object obj) {
        this.f3222a = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static DisplayCutoutCompat m19317a(Object obj) {
        return obj == null ? null : new DisplayCutoutCompat(obj);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        DisplayCutoutCompat displayCutoutCompat = (DisplayCutoutCompat) obj;
        Object obj2 = this.f3222a;
        if (obj2 != null) {
            z = obj2.equals(displayCutoutCompat.f3222a);
        } else if (displayCutoutCompat.f3222a != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Object obj = this.f3222a;
        return obj == null ? 0 : obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f3222a + "}";
    }
}
