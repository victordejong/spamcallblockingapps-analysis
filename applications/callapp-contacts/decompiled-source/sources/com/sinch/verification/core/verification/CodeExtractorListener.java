package com.sinch.verification.core.verification;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/sinch/verification/core/verification/CodeExtractorListener;", "", "onCodeExtracted", "", "code", "", "onCodeExtractionError", "e", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/CodeExtractorListener.class */
public interface CodeExtractorListener {
    void onCodeExtracted(String str);

    void onCodeExtractionError(Throwable th);
}
