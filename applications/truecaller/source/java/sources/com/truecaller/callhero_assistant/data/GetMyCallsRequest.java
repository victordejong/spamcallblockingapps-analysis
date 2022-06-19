package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;", "", "", "component1", "()I", "component2", "skip", "limit", "copy", "(II)Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getLimit", "getSkip", "<init>", "(II)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/GetMyCallsRequest.class */
public final class GetMyCallsRequest {
    private final int limit;
    private final int skip;

    public GetMyCallsRequest(int i, int i2) {
        this.skip = i;
        this.limit = i2;
    }

    public static /* synthetic */ GetMyCallsRequest copy$default(GetMyCallsRequest getMyCallsRequest, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = getMyCallsRequest.skip;
        }
        if ((i3 & 2) != 0) {
            i2 = getMyCallsRequest.limit;
        }
        return getMyCallsRequest.copy(i, i2);
    }

    public final int component1() {
        return this.skip;
    }

    public final int component2() {
        return this.limit;
    }

    public final GetMyCallsRequest copy(int i, int i2) {
        return new GetMyCallsRequest(i, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof GetMyCallsRequest)) {
                return false;
            }
            GetMyCallsRequest getMyCallsRequest = (GetMyCallsRequest) obj;
            return this.skip == getMyCallsRequest.skip && this.limit == getMyCallsRequest.limit;
        }
        return true;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final int getSkip() {
        return this.skip;
    }

    public int hashCode() {
        return (this.skip * 31) + this.limit;
    }

    public String toString() {
        return "GetMyCallsRequest(skip=" + this.skip + ", limit=" + this.limit + ")";
    }
}
