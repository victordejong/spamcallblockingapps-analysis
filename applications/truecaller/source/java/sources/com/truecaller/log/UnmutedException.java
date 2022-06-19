package com.truecaller.log;

import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException.class */
public abstract class UnmutedException extends RuntimeException {

    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$AdsIllegalStateException.class */
    public static final class AdsIllegalStateException extends UnmutedException {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;", "", "", "description", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "CAMPAIGN_CONFIG_NULL_KEY", "CAMPAIGN_CONFIG_NULL_PLACEMENT", "CAMPAIGN_REQUEST_ILLEGAL_STATE", "log_release"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$AdsIllegalStateException$Cause.class */
        public enum Cause {
            CAMPAIGN_CONFIG_NULL_KEY("Key is null for campaign"),
            CAMPAIGN_CONFIG_NULL_PLACEMENT("Placement is null for campaign"),
            CAMPAIGN_REQUEST_ILLEGAL_STATE("Campaign request failed with Illegal state");
            
            private final String description;

            Cause(String str) {
                this.description = str;
            }

            public final String getDescription() {
                return this.description;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdsIllegalStateException(Cause cause) {
            super(cause.getDescription(), null);
            l.e(cause, "cause");
        }
    }

    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$InsightsExceptions.class */
    public static final class InsightsExceptions extends UnmutedException {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;", "", "", "description", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "PARSE_FAILURE", "PARSER_EXCEPTION", "PARSER_UNKNOWN_GRM_EXCEPTION", "BINDER_EXCEPTION", "UNBINDER_EXCEPTION", "ACCOUNT_MODEL_EXCEPTION", "INSIGHTS_WORKER_ERROR", "INSIGHTS_DB_ERROR", "MALFORMED_MODEL_RECEIVED", "log_release"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$InsightsExceptions$Cause.class */
        public enum Cause {
            PARSE_FAILURE("Insights parser failed to parse the message"),
            PARSER_EXCEPTION("Exception from facade of Controller.parse "),
            PARSER_UNKNOWN_GRM_EXCEPTION("Unknown grammar exception "),
            BINDER_EXCEPTION("Error in insights binder "),
            UNBINDER_EXCEPTION("Error in insights UnBinder "),
            ACCOUNT_MODEL_EXCEPTION("Error in accountmodel processing "),
            INSIGHTS_WORKER_ERROR("Error in insights worker"),
            INSIGHTS_DB_ERROR("DB error which cannot be recovered from"),
            MALFORMED_MODEL_RECEIVED("The model downloaded is malformed and could not be parsed");
            
            private final String description;

            Cause(String str) {
                this.description = str;
            }

            public final String getDescription() {
                return this.description;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InsightsExceptions(Cause cause) {
            super(cause.getDescription(), null);
            l.e(cause, "cause");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$a.class */
    public static final class C4142a extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4142a(String str, String str2) {
            super("Current authority: " + str + ", exception message: " + str2, null);
            l.e(str2, "exceptionMessage");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$b.class */
    public static final class C4143b extends UnmutedException {
        public C4143b(int i, Integer num, String str) {
            super("error: " + i + ", status: " + num + ", msg: " + str, null);
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$c.class */
    public static final class C4144c extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4144c(Set<String> set) {
            super("Scheduled worker (or work action) names should be unique, but following were repeated: " + i.O(set, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), null);
            l.e(set, "actions");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$d */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$d.class */
    public static final class C4145d extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4145d(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$e */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$e.class */
    public static final class C4146e extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4146e(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$f */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$f.class */
    public static final class C4147f extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4147f(String str) {
            super("message=" + str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$g */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$g.class */
    public static final class C4148g extends UnmutedException {
        public C4148g() {
            super("Inconsistent unread message count stats", null);
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$h */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$h.class */
    public static final class C4149h extends UnmutedException {
        public C4149h(int i, int i2) {
            super(C22128a.m8595m2("index=", i, " size=", i2), null);
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$i */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$i.class */
    public static final class C4150i extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4150i(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$j */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$j.class */
    public static final class C4151j extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4151j(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$k */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$k.class */
    public static final class C4152k extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4152k(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$l */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$l.class */
    public static final class C4153l extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4153l(String str) {
            super("Cannot find WorkAction named " + str, null);
            l.e(str, "action");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$m */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$m.class */
    public static final class C4154m extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4154m(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$n */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$n.class */
    public static final class C4155n extends UnmutedException {
        public C4155n() {
            super("Empty phone number", null);
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$o */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$o.class */
    public static final class C4156o extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4156o(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$p */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$p.class */
    public static final class C4157p extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4157p(String str) {
            super(str, null);
            l.e(str, "message");
        }
    }

    /* renamed from: com.truecaller.log.UnmutedException$q */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/UnmutedException$q.class */
    public static final class C4158q extends UnmutedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4158q(String str) {
            super("message=" + str, null);
            l.e(str, "message");
        }
    }

    public UnmutedException(String str, f fVar) {
        super(str);
    }
}
