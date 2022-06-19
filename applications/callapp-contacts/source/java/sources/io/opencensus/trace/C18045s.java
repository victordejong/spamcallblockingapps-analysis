package io.opencensus.trace;

import io.opencensus.p507b.C17993b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
/* renamed from: io.opencensus.trace.s */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/s.class */
public final class C18045s {

    /* renamed from: a */
    public static final C18045s f62951a;

    /* renamed from: b */
    public static final C18045s f62952b;

    /* renamed from: c */
    public static final C18045s f62953c;

    /* renamed from: d */
    public static final C18045s f62954d;

    /* renamed from: e */
    public static final C18045s f62955e;

    /* renamed from: f */
    public static final C18045s f62956f;

    /* renamed from: g */
    public static final C18045s f62957g;

    /* renamed from: h */
    public static final C18045s f62958h;

    /* renamed from: i */
    public static final C18045s f62959i;

    /* renamed from: j */
    public static final C18045s f62960j;

    /* renamed from: k */
    public static final C18045s f62961k;

    /* renamed from: l */
    public static final C18045s f62962l;

    /* renamed from: m */
    public static final C18045s f62963m;

    /* renamed from: n */
    public static final C18045s f62964n;

    /* renamed from: o */
    public static final C18045s f62965o;

    /* renamed from: p */
    public static final C18045s f62966p;

    /* renamed from: q */
    public static final C18045s f62967q;

    /* renamed from: r */
    private static final List<C18045s> f62968r;

    /* renamed from: s */
    private final EnumC18046a f62969s;

    /* renamed from: t */
    private final String f62970t;

    /* renamed from: io.opencensus.trace.s$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/s$a.class */
    public enum EnumC18046a {
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

        EnumC18046a(int i) {
            this.value = i;
        }

        public final C18045s toStatus() {
            return (C18045s) C18045s.f62968r.get(this.value);
        }

        public final int value() {
            return this.value;
        }
    }

    static {
        EnumC18046a[] values;
        C18045s c18045s;
        TreeMap treeMap = new TreeMap();
        for (EnumC18046a enumC18046a : EnumC18046a.values()) {
            if (((C18045s) treeMap.put(Integer.valueOf(enumC18046a.value()), new C18045s(enumC18046a, null))) != null) {
                throw new IllegalStateException("Code value duplication between " + c18045s.f62969s.name() + " & " + enumC18046a.name());
            }
        }
        f62968r = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        f62951a = EnumC18046a.OK.toStatus();
        f62952b = EnumC18046a.CANCELLED.toStatus();
        f62953c = EnumC18046a.UNKNOWN.toStatus();
        f62954d = EnumC18046a.INVALID_ARGUMENT.toStatus();
        f62955e = EnumC18046a.DEADLINE_EXCEEDED.toStatus();
        f62956f = EnumC18046a.NOT_FOUND.toStatus();
        f62957g = EnumC18046a.ALREADY_EXISTS.toStatus();
        f62958h = EnumC18046a.PERMISSION_DENIED.toStatus();
        f62959i = EnumC18046a.UNAUTHENTICATED.toStatus();
        f62960j = EnumC18046a.RESOURCE_EXHAUSTED.toStatus();
        f62961k = EnumC18046a.FAILED_PRECONDITION.toStatus();
        f62962l = EnumC18046a.ABORTED.toStatus();
        f62963m = EnumC18046a.OUT_OF_RANGE.toStatus();
        f62964n = EnumC18046a.UNIMPLEMENTED.toStatus();
        f62965o = EnumC18046a.INTERNAL.toStatus();
        f62966p = EnumC18046a.UNAVAILABLE.toStatus();
        f62967q = EnumC18046a.DATA_LOSS.toStatus();
    }

    private C18045s(EnumC18046a enumC18046a, String str) {
        this.f62969s = (EnumC18046a) C17993b.m4562a(enumC18046a, "canonicalCode");
        this.f62970t = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C18045s)) {
            return false;
        }
        C18045s c18045s = (C18045s) obj;
        if (this.f62969s != c18045s.f62969s) {
            return false;
        }
        String str = this.f62970t;
        String str2 = c18045s.f62970t;
        return str == null ? str2 == null : str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f62969s, this.f62970t});
    }

    public final String toString() {
        return "Status{canonicalCode=" + this.f62969s + ", description=" + this.f62970t + "}";
    }
}
