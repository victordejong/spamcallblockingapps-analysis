package kotlin.jvm.internal;

import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.c;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/n.class */
public class n extends m {
    public n(int i, Class cls, String str, String str2, int i2) {
        super(i, NO_RECEIVER, cls, str, str2, i2);
    }

    public n(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2, i2);
    }

    public n(int i, KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(i, NO_RECEIVER, ((g) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof c) ? 1 : 0);
    }
}
