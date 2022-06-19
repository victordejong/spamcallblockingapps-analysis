package net.pubnative.lite.sdk.models;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m4298d2 = {"Lnet/pubnative/lite/sdk/models/CreativeType;", "", "", "toString", "()Ljava/lang/String;", "creativeTypeValue", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "HTML", "VAST", "hybid.sdk_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/CreativeType.class */
public enum CreativeType {
    HTML("HTML"),
    VAST("VAST");
    
    private final String creativeTypeValue;

    CreativeType(String str) {
        this.creativeTypeValue = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.creativeTypeValue;
    }
}
