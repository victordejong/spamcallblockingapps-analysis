package io.opencensus.trace;

import io.opencensus.b.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final s f36330a;

    /* renamed from: b  reason: collision with root package name */
    public static final s f36331b;

    /* renamed from: c  reason: collision with root package name */
    public static final s f36332c;

    /* renamed from: d  reason: collision with root package name */
    public static final s f36333d;
    public static final s e;
    public static final s f;
    public static final s g;
    public static final s h;
    public static final s i;
    public static final s j;
    public static final s k;
    public static final s l;
    public static final s m;
    public static final s n;
    public static final s o;
    public static final s p;
    public static final s q;
    private static final List<s> r;
    private final a s;
    private final String t;

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/s$a.class */
    public enum a {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);
        
        private final int value;

        a(int i) {
            this.value = i;
        }

        public final s toStatus() {
            return (s) s.r.get(this.value);
        }

        public final int value() {
            return this.value;
        }
    }

    static {
        a[] values;
        s sVar;
        TreeMap treeMap = new TreeMap();
        for (a aVar : a.values()) {
            if (((s) treeMap.put(Integer.valueOf(aVar.value()), new s(aVar, null))) != null) {
                throw new IllegalStateException("Code value duplication between " + sVar.s.name() + " & " + aVar.name());
            }
        }
        r = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        f36330a = a.OK.toStatus();
        f36331b = a.CANCELLED.toStatus();
        f36332c = a.UNKNOWN.toStatus();
        f36333d = a.INVALID_ARGUMENT.toStatus();
        e = a.DEADLINE_EXCEEDED.toStatus();
        f = a.NOT_FOUND.toStatus();
        g = a.ALREADY_EXISTS.toStatus();
        h = a.PERMISSION_DENIED.toStatus();
        i = a.UNAUTHENTICATED.toStatus();
        j = a.RESOURCE_EXHAUSTED.toStatus();
        k = a.FAILED_PRECONDITION.toStatus();
        l = a.ABORTED.toStatus();
        m = a.OUT_OF_RANGE.toStatus();
        n = a.UNIMPLEMENTED.toStatus();
        o = a.INTERNAL.toStatus();
        p = a.UNAVAILABLE.toStatus();
        q = a.DATA_LOSS.toStatus();
    }

    private s(a aVar, String str) {
        this.s = (a) b.a(aVar, "canonicalCode");
        this.t = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.s != sVar.s) {
            return false;
        }
        String str = this.t;
        String str2 = sVar.t;
        return str == null ? str2 == null : str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.s, this.t});
    }

    public final String toString() {
        return "Status{canonicalCode=" + this.s + ", description=" + this.t + "}";
    }
}
