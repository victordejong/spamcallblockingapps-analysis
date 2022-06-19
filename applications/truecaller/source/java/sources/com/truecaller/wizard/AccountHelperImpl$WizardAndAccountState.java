package com.truecaller.wizard;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0003\u0018��2\u00020\u0001BK\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;", "", "", "accountSuspended", "Z", "", "wizardStartContext", "Ljava/lang/String;", "accountValid", "shownPages", "accountCreated", "wizardCurrentPage", "restoredCredentialsCheckPending", "wizardCompleted", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/AccountHelperImpl$WizardAndAccountState.class */
public final class AccountHelperImpl$WizardAndAccountState {
    private final boolean accountCreated;
    private final boolean accountSuspended;
    private final boolean accountValid;
    private final boolean restoredCredentialsCheckPending;
    private final String shownPages;
    private final boolean wizardCompleted;
    private final String wizardCurrentPage;
    private final String wizardStartContext;

    public AccountHelperImpl$WizardAndAccountState(String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        l.e(str3, "shownPages");
        this.wizardStartContext = str;
        this.wizardCurrentPage = str2;
        this.shownPages = str3;
        this.wizardCompleted = z;
        this.accountValid = z2;
        this.accountSuspended = z3;
        this.restoredCredentialsCheckPending = z4;
        this.accountCreated = z5;
    }
}
