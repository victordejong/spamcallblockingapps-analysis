package com.truecaller.wizard.framework;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/wizard/framework/WizardCompletionType;", "", "", "type", "I", "getType", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "NORMAL", "SECONDARY_NUMBER", "BACKGROUND", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/framework/WizardCompletionType.class */
public enum WizardCompletionType {
    NORMAL(1),
    SECONDARY_NUMBER(2),
    BACKGROUND(3);
    
    public static final C4870a Companion = new C4870a(null);
    private final int type;

    /* renamed from: com.truecaller.wizard.framework.WizardCompletionType$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/framework/WizardCompletionType$a.class */
    public static final class C4870a {
        public C4870a(f fVar) {
        }
    }

    WizardCompletionType(int i) {
        this.type = i;
    }

    public final int getType() {
        return this.type;
    }
}
