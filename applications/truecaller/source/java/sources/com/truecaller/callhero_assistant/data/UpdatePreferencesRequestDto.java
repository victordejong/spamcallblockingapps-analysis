package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J(\u0010\n\u001a\u00020��2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()Ljava/lang/Boolean;", "voice", "screenBlocklistNumbers", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getVoice", "Ljava/lang/Boolean;", "getScreenBlocklistNumbers", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto.class */
public final class UpdatePreferencesRequestDto {
    private final Boolean screenBlocklistNumbers;
    private final String voice;

    public UpdatePreferencesRequestDto() {
        this(null, null, 3, null);
    }

    public UpdatePreferencesRequestDto(String str, Boolean bool) {
        this.voice = str;
        this.screenBlocklistNumbers = bool;
    }

    public /* synthetic */ UpdatePreferencesRequestDto(String str, Boolean bool, int i, f fVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool);
    }

    public static /* synthetic */ UpdatePreferencesRequestDto copy$default(UpdatePreferencesRequestDto updatePreferencesRequestDto, String str, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = updatePreferencesRequestDto.voice;
        }
        if ((i & 2) != 0) {
            bool = updatePreferencesRequestDto.screenBlocklistNumbers;
        }
        return updatePreferencesRequestDto.copy(str, bool);
    }

    public final String component1() {
        return this.voice;
    }

    public final Boolean component2() {
        return this.screenBlocklistNumbers;
    }

    public final UpdatePreferencesRequestDto copy(String str, Boolean bool) {
        return new UpdatePreferencesRequestDto(str, bool);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof UpdatePreferencesRequestDto)) {
                return false;
            }
            UpdatePreferencesRequestDto updatePreferencesRequestDto = (UpdatePreferencesRequestDto) obj;
            return l.a(this.voice, updatePreferencesRequestDto.voice) && l.a(this.screenBlocklistNumbers, updatePreferencesRequestDto.screenBlocklistNumbers);
        }
        return true;
    }

    public final Boolean getScreenBlocklistNumbers() {
        return this.screenBlocklistNumbers;
    }

    public final String getVoice() {
        return this.voice;
    }

    public int hashCode() {
        String str = this.voice;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Boolean bool = this.screenBlocklistNumbers;
        if (bool != null) {
            i = bool.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "UpdatePreferencesRequestDto(voice=" + this.voice + ", screenBlocklistNumbers=" + this.screenBlocklistNumbers + ")";
    }
}
