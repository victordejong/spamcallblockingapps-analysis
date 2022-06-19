package org.bouncycastle.i18n;

import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/i18n/LocalizedException.class */
public class LocalizedException extends Exception {
    private Throwable cause;
    public ErrorBundle message;

    public LocalizedException(ErrorBundle errorBundle) {
        super(errorBundle.getText(Locale.getDefault()));
        this.message = errorBundle;
    }

    public LocalizedException(ErrorBundle errorBundle, Throwable th) {
        super(errorBundle.getText(Locale.getDefault()));
        this.message = errorBundle;
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public ErrorBundle getErrorMessage() {
        return this.message;
    }
}
