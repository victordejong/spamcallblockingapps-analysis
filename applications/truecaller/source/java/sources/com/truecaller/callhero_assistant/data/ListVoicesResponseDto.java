package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u0019\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;", "", "", "component1", "()Z", "", "Lcom/truecaller/callhero_assistant/data/Voice;", "component2", "()Ljava/util/List;", AnalyticsConstants.SUCCESS, "voices", "copy", "(ZLjava/util/List;)Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getSuccess", "Ljava/util/List;", "getVoices", "<init>", "(ZLjava/util/List;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/ListVoicesResponseDto.class */
public final class ListVoicesResponseDto {
    private final boolean success;
    private final List<Voice> voices;

    public ListVoicesResponseDto(boolean z, List<Voice> list) {
        l.e(list, "voices");
        this.success = z;
        this.voices = list;
    }

    public static /* synthetic */ ListVoicesResponseDto copy$default(ListVoicesResponseDto listVoicesResponseDto, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = listVoicesResponseDto.success;
        }
        if ((i & 2) != 0) {
            list = listVoicesResponseDto.voices;
        }
        return listVoicesResponseDto.copy(z, list);
    }

    public final boolean component1() {
        return this.success;
    }

    public final List<Voice> component2() {
        return this.voices;
    }

    public final ListVoicesResponseDto copy(boolean z, List<Voice> list) {
        l.e(list, "voices");
        return new ListVoicesResponseDto(z, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ListVoicesResponseDto)) {
                return false;
            }
            ListVoicesResponseDto listVoicesResponseDto = (ListVoicesResponseDto) obj;
            return this.success == listVoicesResponseDto.success && l.a(this.voices, listVoicesResponseDto.voices);
        }
        return true;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final List<Voice> getVoices() {
        return this.voices;
    }

    public int hashCode() {
        boolean z = this.success;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        List<Voice> list = this.voices;
        return ((z2 ? 1 : 0) * 31) + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "ListVoicesResponseDto(success=" + this.success + ", voices=" + this.voices + ")";
    }
}
