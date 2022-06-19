package com.truecaller.wizard;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/wizard/WizardVerificationMode;", "", "", "value", "I", "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "PRIMARY_NUMBER", "SECONDARY_NUMBER", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/WizardVerificationMode.class */
public enum WizardVerificationMode {
    PRIMARY_NUMBER(0),
    SECONDARY_NUMBER(1);
    
    public static final C4866a Companion = new C4866a(null);
    private final int value;

    /* renamed from: com.truecaller.wizard.WizardVerificationMode$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/WizardVerificationMode$a.class */
    public static final class C4866a {
        public C4866a(f fVar) {
        }
    }

    WizardVerificationMode(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
