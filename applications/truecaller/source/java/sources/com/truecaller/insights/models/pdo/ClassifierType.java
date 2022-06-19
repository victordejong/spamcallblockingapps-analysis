package com.truecaller.insights.models.pdo;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/truecaller/insights/models/pdo/ClassifierType;", "", "", "value", "I", "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "DEFAULT", "MODEL", "PARSER", "USER", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/ClassifierType.class */
public enum ClassifierType {
    DEFAULT(-1),
    MODEL(1),
    PARSER(2),
    USER(3);
    
    public static final C4067a Companion = new C4067a(null);
    private final int value;

    /* renamed from: com.truecaller.insights.models.pdo.ClassifierType$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/ClassifierType$a.class */
    public static final class C4067a {
        public C4067a(f fVar) {
        }

        /* renamed from: a */
        public final String m35222a(ClassifierType classifierType) {
            String str;
            if (classifierType == null) {
                str = "default";
            } else {
                int ordinal = classifierType.ordinal();
                str = "default";
                if (ordinal != 0) {
                    str = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? "default" : "user" : "parser" : "uc_model";
                }
            }
            return str;
        }
    }

    ClassifierType(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
