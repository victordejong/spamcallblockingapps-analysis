package com.apptentive.android.sdk.util;

import com.apptentive.android.sdk.debug.Assert;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/IndentPrinter.class */
public abstract class IndentPrinter {
    private static final String INDENT = "  ";
    public static final IndentPrinter NULL = new IndentPrinter() { // from class: com.apptentive.android.sdk.util.IndentPrinter.1
        @Override // com.apptentive.android.sdk.util.IndentPrinter
        public IndentPrinter endBlock() {
            return this;
        }

        @Override // com.apptentive.android.sdk.util.IndentPrinter
        public IndentPrinter print(String str, Object... objArr) {
            return this;
        }

        @Override // com.apptentive.android.sdk.util.IndentPrinter
        protected void printInternal(String str) {
        }

        @Override // com.apptentive.android.sdk.util.IndentPrinter
        public IndentPrinter startBlock() {
            return this;
        }
    };
    private final StringBuilder indentBuffer = new StringBuilder();

    public IndentPrinter endBlock() {
        Assert.assertTrue(this.indentBuffer.length() >= INDENT.length());
        if (this.indentBuffer.length() >= INDENT.length()) {
            this.indentBuffer.setLength(this.indentBuffer.length() - INDENT.length());
        }
        return this;
    }

    public IndentPrinter print(String str, Object... objArr) {
        printInternal(((Object) this.indentBuffer) + StringUtils.format(str, objArr));
        return this;
    }

    protected abstract void printInternal(String str);

    public IndentPrinter startBlock() {
        this.indentBuffer.append(INDENT);
        return this;
    }
}
