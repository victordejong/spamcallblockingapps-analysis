package io.opencensus.trace;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import p321d.p323b.p327b.C9475b;
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/Status.class */
public final class Status {

    /* renamed from: a */
    private static final List<Status> f40382a = m470b();

    /* renamed from: b */
    public static final Status f40383b = CanonicalCode.OK.toStatus();

    /* renamed from: c */
    public static final Status f40384c = CanonicalCode.CANCELLED.toStatus();

    /* renamed from: d */
    public static final Status f40385d = CanonicalCode.UNKNOWN.toStatus();

    /* renamed from: e */
    public static final Status f40386e = CanonicalCode.INVALID_ARGUMENT.toStatus();

    /* renamed from: f */
    public static final Status f40387f = CanonicalCode.DEADLINE_EXCEEDED.toStatus();

    /* renamed from: g */
    public static final Status f40388g = CanonicalCode.NOT_FOUND.toStatus();

    /* renamed from: h */
    public static final Status f40389h = CanonicalCode.ALREADY_EXISTS.toStatus();

    /* renamed from: i */
    public static final Status f40390i = CanonicalCode.PERMISSION_DENIED.toStatus();

    /* renamed from: j */
    public static final Status f40391j = CanonicalCode.UNAUTHENTICATED.toStatus();

    /* renamed from: k */
    public static final Status f40392k = CanonicalCode.RESOURCE_EXHAUSTED.toStatus();

    /* renamed from: l */
    public static final Status f40393l = CanonicalCode.FAILED_PRECONDITION.toStatus();

    /* renamed from: m */
    public static final Status f40394m = CanonicalCode.ABORTED.toStatus();

    /* renamed from: n */
    public static final Status f40395n = CanonicalCode.OUT_OF_RANGE.toStatus();

    /* renamed from: o */
    public static final Status f40396o = CanonicalCode.UNIMPLEMENTED.toStatus();

    /* renamed from: p */
    public static final Status f40397p = CanonicalCode.INTERNAL.toStatus();

    /* renamed from: q */
    public static final Status f40398q = CanonicalCode.UNAVAILABLE.toStatus();

    /* renamed from: r */
    public static final Status f40399r = CanonicalCode.DATA_LOSS.toStatus();

    /* renamed from: s */
    private final CanonicalCode f40400s;

    /* renamed from: t */
    private final String f40401t;

    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/Status$CanonicalCode.class */
    public enum CanonicalCode {
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

        CanonicalCode(int i) {
            this.value = i;
        }

        public Status toStatus() {
            return (Status) Status.f40382a.get(this.value);
        }

        public int value() {
            return this.value;
        }
    }

    private Status(CanonicalCode canonicalCode, String str) {
        this.f40400s = (CanonicalCode) C9475b.m512b(canonicalCode, "canonicalCode");
        this.f40401t = str;
    }

    /* renamed from: b */
    private static List<Status> m470b() {
        CanonicalCode[] values;
        Status status;
        TreeMap treeMap = new TreeMap();
        for (CanonicalCode canonicalCode : CanonicalCode.values()) {
            if (((Status) treeMap.put(Integer.valueOf(canonicalCode.value()), new Status(canonicalCode, null))) != null) {
                throw new IllegalStateException("Code value duplication between " + status.m469c().name() + " & " + canonicalCode.name());
            }
        }
        return Collections.unmodifiableList(new ArrayList(treeMap.values()));
    }

    /* renamed from: c */
    public CanonicalCode m469c() {
        return this.f40400s;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (this.f40400s != status.f40400s || !C9475b.m510d(this.f40401t, status.f40401t)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f40400s, this.f40401t});
    }

    public String toString() {
        return "Status{canonicalCode=" + this.f40400s + ", description=" + this.f40401t + "}";
    }
}
