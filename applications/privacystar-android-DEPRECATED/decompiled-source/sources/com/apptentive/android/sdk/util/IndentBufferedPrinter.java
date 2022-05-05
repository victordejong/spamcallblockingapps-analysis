package com.apptentive.android.sdk.util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/IndentBufferedPrinter.class */
public class IndentBufferedPrinter extends IndentPrinter {
    private final StringBuilder buffer = new StringBuilder();

    @Override // com.apptentive.android.sdk.util.IndentPrinter
    protected void printInternal(String str) {
        if (this.buffer.length() > 0) {
            this.buffer.append('\n');
        }
        this.buffer.append(str);
    }

    public String toString() {
        return this.buffer.toString();
    }
}
