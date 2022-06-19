package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0007\u001a\u00020��2\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0013\u0010\u0005¨\u0006\u0016"}, d2 = {"Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;", "", "", "", "component1", "()Ljava/util/List;", "numbers", "copy", "(Ljava/util/List;)Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getNumbers", "<init>", "(Ljava/util/List;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto.class */
public final class SetWhitelistNumbersRequestDto {
    private final List<String> numbers;

    public SetWhitelistNumbersRequestDto(List<String> list) {
        l.e(list, "numbers");
        this.numbers = list;
    }

    public static /* synthetic */ SetWhitelistNumbersRequestDto copy$default(SetWhitelistNumbersRequestDto setWhitelistNumbersRequestDto, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = setWhitelistNumbersRequestDto.numbers;
        }
        return setWhitelistNumbersRequestDto.copy(list);
    }

    public final List<String> component1() {
        return this.numbers;
    }

    public final SetWhitelistNumbersRequestDto copy(List<String> list) {
        l.e(list, "numbers");
        return new SetWhitelistNumbersRequestDto(list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof SetWhitelistNumbersRequestDto) && l.a(this.numbers, ((SetWhitelistNumbersRequestDto) obj).numbers);
        }
        return true;
    }

    public final List<String> getNumbers() {
        return this.numbers;
    }

    public int hashCode() {
        List<String> list = this.numbers;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return "SetWhitelistNumbersRequestDto(numbers=" + this.numbers + ")";
    }
}
