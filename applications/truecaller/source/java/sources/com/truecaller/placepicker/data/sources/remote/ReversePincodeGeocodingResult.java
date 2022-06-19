package com.truecaller.placepicker.data.sources.remote;

import androidx.annotation.Keep;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\bR\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodingResult;", "", "", "component1", "()Ljava/lang/String;", "", "Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;", "component2", "()Ljava/util/List;", UpdateKey.STATUS, "results", "copy", "(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodingResult;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getResults", "Ljava/lang/String;", "getStatus", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "placepicker_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodingResult.class */
public final class ReversePincodeGeocodingResult {
    private final List<ReversePincodeGeocodedPlace> results;
    private final String status;

    public ReversePincodeGeocodingResult(String str, List<ReversePincodeGeocodedPlace> list) {
        l.e(str, UpdateKey.STATUS);
        l.e(list, "results");
        this.status = str;
        this.results = list;
    }

    public static /* synthetic */ ReversePincodeGeocodingResult copy$default(ReversePincodeGeocodingResult reversePincodeGeocodingResult, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = reversePincodeGeocodingResult.status;
        }
        if ((i & 2) != 0) {
            list = reversePincodeGeocodingResult.results;
        }
        return reversePincodeGeocodingResult.copy(str, list);
    }

    public final String component1() {
        return this.status;
    }

    public final List<ReversePincodeGeocodedPlace> component2() {
        return this.results;
    }

    public final ReversePincodeGeocodingResult copy(String str, List<ReversePincodeGeocodedPlace> list) {
        l.e(str, UpdateKey.STATUS);
        l.e(list, "results");
        return new ReversePincodeGeocodingResult(str, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ReversePincodeGeocodingResult)) {
                return false;
            }
            ReversePincodeGeocodingResult reversePincodeGeocodingResult = (ReversePincodeGeocodingResult) obj;
            return l.a(this.status, reversePincodeGeocodingResult.status) && l.a(this.results, reversePincodeGeocodingResult.results);
        }
        return true;
    }

    public final List<ReversePincodeGeocodedPlace> getResults() {
        return this.results;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<ReversePincodeGeocodedPlace> list = this.results;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReversePincodeGeocodingResult(status=");
        m8728C.append(this.status);
        m8728C.append(", results=");
        return C22128a.m8602l(m8728C, this.results, ")");
    }
}
