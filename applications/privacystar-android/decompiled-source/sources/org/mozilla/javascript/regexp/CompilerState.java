package org.mozilla.javascript.regexp;

import org.mozilla.javascript.Context;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/CompilerState.class */
class CompilerState {
    char[] cpbegin;
    int cpend;

    /* renamed from: cx */
    Context f830cx;
    int flags;
    int parenNesting;
    RENode result;

    /* renamed from: cp */
    int f829cp = 0;
    int backReferenceLimit = Integer.MAX_VALUE;
    int maxBackReference = 0;
    int parenCount = 0;
    int classCount = 0;
    int progLength = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompilerState(Context context, char[] cArr, int i, int i2) {
        this.f830cx = context;
        this.cpbegin = cArr;
        this.cpend = i;
        this.flags = i2;
    }
}
