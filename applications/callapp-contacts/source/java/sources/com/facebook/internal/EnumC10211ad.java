package com.facebook.internal;

import java.util.EnumSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\t\n\u0002\b\b\b\u0086\u0001\u0018�� \n2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, m4298d2 = {"Lcom/facebook/internal/SmartLoginOption;", "", "value", "", "(Ljava/lang/String;IJ)V", "getValue", "()J", "None", "Enabled", "RequireConfirm", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.ad */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ad.class */
public enum EnumC10211ad {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    
    private static final EnumSet<EnumC10211ad> ALL;
    public static final C10212a Companion = new C10212a(null);
    private final long value;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/facebook/internal/SmartLoginOption$Companion;", "", "()V", "ALL", "Ljava/util/EnumSet;", "Lcom/facebook/internal/SmartLoginOption;", "parseOptions", "bitmask", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ad$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ad$a.class */
    public static final class C10212a {
        private C10212a() {
        }

        public /* synthetic */ C10212a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static EnumSet<EnumC10211ad> m23251a(long j) {
            EnumSet<EnumC10211ad> result = EnumSet.noneOf(EnumC10211ad.class);
            Iterator it2 = EnumC10211ad.ALL.iterator();
            while (it2.hasNext()) {
                EnumC10211ad enumC10211ad = (EnumC10211ad) it2.next();
                if ((enumC10211ad.getValue() & j) != 0) {
                    result.add(enumC10211ad);
                }
            }
            C18524p.m3843b(result, "result");
            return result;
        }
    }

    static {
        EnumSet<EnumC10211ad> allOf = EnumSet.allOf(EnumC10211ad.class);
        C18524p.m3843b(allOf, "EnumSet.allOf(SmartLoginOption::class.java)");
        ALL = allOf;
    }

    EnumC10211ad(long j) {
        this.value = j;
    }

    public static final EnumSet<EnumC10211ad> parseOptions(long j) {
        return C10212a.m23251a(j);
    }

    public final long getValue() {
        return this.value;
    }
}
