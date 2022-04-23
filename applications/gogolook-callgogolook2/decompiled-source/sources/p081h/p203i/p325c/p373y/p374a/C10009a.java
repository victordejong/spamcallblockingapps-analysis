package p081h.p203i.p325c.p373y.p374a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p325c.C9445h;
/* renamed from: h.i.c.y.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/a.class */
public class C10009a extends C9445h {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10009a(@NonNull String str, int i) {
        super(str);
        C7021t.m21287a(str, (Object) "Provided message must not be empty.");
        C7021t.m21285a(i != 0, "A FirebaseMLException should never be thrown for OK");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10009a(@NonNull String str, int i, @Nullable Throwable th) {
        super(str, th);
        C7021t.m21287a(str, (Object) "Provided message must not be empty.");
        C7021t.m21285a(i != 0, "A FirebaseMLException should never be thrown for OK");
    }
}
