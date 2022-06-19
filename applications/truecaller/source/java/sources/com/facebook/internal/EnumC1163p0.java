package com.facebook.internal;

import java.util.EnumSet;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\t\n\u0002\b\b\b\u0086\u0001\u0018�� \n2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/SmartLoginOption;", "", "value", "", "(Ljava/lang/String;IJ)V", "getValue", "()J", "None", "Enabled", "RequireConfirm", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.p0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/p0.class */
public enum EnumC1163p0 {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    

    /* renamed from: b */
    public static final C1164a f3175b = new C1164a(null);

    /* renamed from: c */
    public static final EnumSet<EnumC1163p0> f3176c;

    /* renamed from: a */
    public final long f3181a;

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/facebook/internal/SmartLoginOption$Companion;", "", "()V", "ALL", "Ljava/util/EnumSet;", "Lcom/facebook/internal/SmartLoginOption;", "parseOptions", "bitmask", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.p0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/p0$a.class */
    public static final class C1164a {
        public C1164a(f fVar) {
        }
    }

    static {
        EnumSet<EnumC1163p0> allOf = EnumSet.allOf(EnumC1163p0.class);
        l.d(allOf, "allOf(SmartLoginOption::class.java)");
        f3176c = allOf;
    }

    EnumC1163p0(long j) {
        this.f3181a = j;
    }
}
