package com.callapp.contacts.api.helper.backup;

import com.fasterxml.jackson.annotation.JsonProperty;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B)\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020��2\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxErrorResponse;", "", "reason", "", "uploadSessionId", "tag", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getReason", "()Ljava/lang/String;", "getTag", "getUploadSessionId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxErrorResponse.class */
public final class DropBoxErrorResponse {

    /* renamed from: a */
    private final String f24758a;

    /* renamed from: b */
    private final String f24759b;

    /* renamed from: c */
    private final String f24760c;

    public DropBoxErrorResponse() {
        this(null, null, null, 7, null);
    }

    public DropBoxErrorResponse(@JsonProperty("reason") String str, @JsonProperty("upload_session_id") String str2, @JsonProperty(".tag") String str3) {
        this.f24758a = str;
        this.f24759b = str2;
        this.f24760c = str3;
    }

    public /* synthetic */ DropBoxErrorResponse(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
    }

    public final DropBoxErrorResponse copy(@JsonProperty("reason") String str, @JsonProperty("upload_session_id") String str2, @JsonProperty(".tag") String str3) {
        return new DropBoxErrorResponse(str, str2, str3);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof DropBoxErrorResponse)) {
                return false;
            }
            DropBoxErrorResponse dropBoxErrorResponse = (DropBoxErrorResponse) obj;
            return C18524p.m3850a((Object) this.f24758a, (Object) dropBoxErrorResponse.f24758a) && C18524p.m3850a((Object) this.f24759b, (Object) dropBoxErrorResponse.f24759b) && C18524p.m3850a((Object) this.f24760c, (Object) dropBoxErrorResponse.f24760c);
        }
        return true;
    }

    public final String getReason() {
        return this.f24758a;
    }

    public final int hashCode() {
        String str = this.f24758a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f24759b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f24760c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "DropBoxErrorResponse(reason=" + this.f24758a + ", uploadSessionId=" + this.f24759b + ", tag=" + this.f24760c + ")";
    }
}
