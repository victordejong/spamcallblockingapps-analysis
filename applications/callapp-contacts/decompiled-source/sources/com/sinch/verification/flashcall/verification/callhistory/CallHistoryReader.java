package com.sinch.verification.flashcall.verification.callhistory;

import java.util.List;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\bf\u0018��2\u00020\u0001J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, d2 = {"Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;", "", "readIncomingCalls", "", "", "sinceEpoch", "", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/callhistory/CallHistoryReader.class */
public interface CallHistoryReader {
    List<String> readIncomingCalls(long j);
}
