package org.threeten.p040bp.format;
/* renamed from: org.threeten.bp.format.SignStyle */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/SignStyle.class */
public enum SignStyle {
    NORMAL,
    ALWAYS,
    NEVER,
    NOT_NEGATIVE,
    EXCEEDS_PAD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean parse(boolean z, boolean z2, boolean z3) {
        int ordinal = ordinal();
        if (ordinal == 4) {
            return true;
        }
        boolean z4 = false;
        switch (ordinal) {
            case 0:
                if (!z || !z2) {
                    z4 = true;
                }
                return z4;
            case 1:
                return true;
            default:
                boolean z5 = false;
                if (!z2) {
                    z5 = false;
                    if (!z3) {
                        z5 = true;
                    }
                }
                return z5;
        }
    }
}
