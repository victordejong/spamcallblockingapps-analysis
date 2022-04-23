package com.facebook.internal;

import java.util.EnumSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\t\n\u0002\b\b\b\u0086\u0001\u0018�� \n2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/SmartLoginOption;", "", "value", "", "(Ljava/lang/String;IJ)V", "getValue", "()J", "None", "Enabled", "RequireConfirm", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ad.class */
public enum ad {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    
    private static final EnumSet<ad> ALL;
    public static final a Companion = new a(null);
    private final long value;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/facebook/internal/SmartLoginOption$Companion;", "", "()V", "ALL", "Ljava/util/EnumSet;", "Lcom/facebook/internal/SmartLoginOption;", "parseOptions", "bitmask", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ad$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static EnumSet<ad> a(long j) {
            EnumSet<ad> result = EnumSet.noneOf(ad.class);
            Iterator it2 = ad.ALL.iterator();
            while (it2.hasNext()) {
                ad adVar = (ad) it2.next();
                if ((adVar.getValue() & j) != 0) {
                    result.add(adVar);
                }
            }
            p.b(result, "result");
            return result;
        }
    }

    static {
        EnumSet<ad> allOf = EnumSet.allOf(ad.class);
        p.b(allOf, "EnumSet.allOf(SmartLoginOption::class.java)");
        ALL = allOf;
    }

    ad(long j) {
        this.value = j;
    }

    public static final EnumSet<ad> parseOptions(long j) {
        return a.a(j);
    }

    public final long getValue() {
        return this.value;
    }
}
