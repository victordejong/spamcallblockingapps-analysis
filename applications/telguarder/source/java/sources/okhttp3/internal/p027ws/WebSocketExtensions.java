package okhttp3.internal.p027ws;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.internal.Util;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018�� \u001c2\u00020\u0001:\u0001\u001cBE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003JN\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, m400d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "perMessageDeflate", "", "clientMaxWindowBits", "", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "Ljava/lang/Integer;", "component1", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "copy", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)Lokhttp3/internal/ws/WebSocketExtensions;", "equals", "other", "hashCode", "noContextTakeover", "clientOriginated", "toString", "", "Companion", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
/* renamed from: okhttp3.internal.ws.WebSocketExtensions */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/ws/WebSocketExtensions.class */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\t"}, m400d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "", "()V", "HEADER_WEB_SOCKET_EXTENSION", "", "parse", "Lokhttp3/internal/ws/WebSocketExtensions;", "responseHeaders", "Lokhttp3/Headers;", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
    /* renamed from: okhttp3.internal.ws.WebSocketExtensions$Companion */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/ws/WebSocketExtensions$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WebSocketExtensions parse(Headers responseHeaders) throws IOException {
            boolean z;
            boolean z2;
            Integer num;
            boolean z3;
            Integer num2;
            boolean z4;
            Integer num3;
            Integer num4;
            boolean z5;
            boolean z6;
            Integer num5;
            Integer num6;
            Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
            Integer num7 = null;
            int size = responseHeaders.size();
            Integer num8 = num7;
            int i = 0;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            while (true) {
                boolean z11 = z10;
                if (i < size) {
                    if (!StringsKt.equals(responseHeaders.name(i), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION, true)) {
                        z4 = z7;
                        num2 = num7;
                        z3 = z8;
                        num = num8;
                        z2 = z9;
                        z = z11;
                    } else {
                        String value = responseHeaders.value(i);
                        int i2 = 0;
                        while (true) {
                            z4 = z7;
                            num2 = num7;
                            z3 = z8;
                            num = num8;
                            z2 = z9;
                            z = z11;
                            if (i2 < value.length()) {
                                int delimiterOffset$default = Util.delimiterOffset$default(value, ',', i2, 0, 4, (Object) null);
                                int delimiterOffset = Util.delimiterOffset(value, ';', i2, delimiterOffset$default);
                                int i3 = delimiterOffset + 1;
                                if (StringsKt.equals(Util.trimSubstring(value, i2, delimiterOffset), "permessage-deflate", true)) {
                                    i2 = i3;
                                    num4 = num7;
                                    boolean z12 = z8;
                                    num3 = num8;
                                    boolean z13 = z9;
                                    if (z7) {
                                        z11 = true;
                                        z13 = z9;
                                        num3 = num8;
                                        z12 = z8;
                                        num4 = num7;
                                        i2 = i3;
                                    }
                                    while (i2 < delimiterOffset$default) {
                                        int delimiterOffset2 = Util.delimiterOffset(value, ';', i2, delimiterOffset$default);
                                        int delimiterOffset3 = Util.delimiterOffset(value, '=', i2, delimiterOffset2);
                                        String trimSubstring = Util.trimSubstring(value, i2, delimiterOffset3);
                                        String removeSurrounding = delimiterOffset3 < delimiterOffset2 ? StringsKt.removeSurrounding(Util.trimSubstring(value, delimiterOffset3 + 1, delimiterOffset2), (CharSequence) "\"") : null;
                                        if (StringsKt.equals(trimSubstring, "client_max_window_bits", true)) {
                                            if (num4 != null) {
                                                z11 = true;
                                            }
                                            Integer intOrNull = removeSurrounding != null ? StringsKt.toIntOrNull(removeSurrounding) : null;
                                            Integer num9 = intOrNull;
                                            num6 = num9;
                                            z5 = z12;
                                            num5 = num3;
                                            z6 = z13;
                                            if (intOrNull == null) {
                                                num6 = num9;
                                                num5 = num3;
                                                z11 = true;
                                                z6 = z13;
                                                z5 = z12;
                                                i2 = delimiterOffset2 + 1;
                                                num4 = num6;
                                                z12 = z5;
                                                num3 = num5;
                                                z13 = z6;
                                            } else {
                                                i2 = delimiterOffset2 + 1;
                                                num4 = num6;
                                                z12 = z5;
                                                num3 = num5;
                                                z13 = z6;
                                            }
                                        } else {
                                            if (StringsKt.equals(trimSubstring, "client_no_context_takeover", true)) {
                                                if (z12) {
                                                    z11 = true;
                                                }
                                                if (removeSurrounding != null) {
                                                    z11 = true;
                                                }
                                                z5 = true;
                                                num6 = num4;
                                                num5 = num3;
                                                z6 = z13;
                                            } else if (StringsKt.equals(trimSubstring, "server_max_window_bits", true)) {
                                                if (num3 != null) {
                                                    z11 = true;
                                                }
                                                Integer intOrNull2 = removeSurrounding != null ? StringsKt.toIntOrNull(removeSurrounding) : null;
                                                Integer num10 = intOrNull2;
                                                num6 = num4;
                                                z5 = z12;
                                                num5 = num10;
                                                z6 = z13;
                                                if (intOrNull2 == null) {
                                                    num6 = num4;
                                                    num5 = num10;
                                                    z11 = true;
                                                    z6 = z13;
                                                    z5 = z12;
                                                }
                                            } else {
                                                num6 = num4;
                                                num5 = num3;
                                                if (StringsKt.equals(trimSubstring, "server_no_context_takeover", true)) {
                                                    if (z13) {
                                                        z11 = true;
                                                    }
                                                    if (removeSurrounding != null) {
                                                        z11 = true;
                                                    }
                                                    z6 = true;
                                                    num6 = num4;
                                                    z5 = z12;
                                                    num5 = num3;
                                                }
                                                z11 = true;
                                                z6 = z13;
                                                z5 = z12;
                                            }
                                            i2 = delimiterOffset2 + 1;
                                            num4 = num6;
                                            z12 = z5;
                                            num3 = num5;
                                            z13 = z6;
                                        }
                                    }
                                    z7 = true;
                                    z8 = z12;
                                    z9 = z13;
                                } else {
                                    i2 = i3;
                                    z11 = true;
                                    num3 = num8;
                                    num4 = num7;
                                }
                                num7 = num4;
                                num8 = num3;
                            }
                        }
                    }
                    i++;
                    z7 = z4;
                    num7 = num2;
                    z8 = z3;
                    num8 = num;
                    z9 = z2;
                    z10 = z;
                } else {
                    return new WebSocketExtensions(z7, num7, z8, num8, z9, z11);
                }
            }
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        this.perMessageDeflate = z;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z2;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z3;
        this.unknownValues = z4;
    }

    public /* synthetic */ WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : num, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? null : num2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? false : z4);
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            z = webSocketExtensions.perMessageDeflate;
        }
        if ((i & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        if ((i & 4) != 0) {
            z2 = webSocketExtensions.clientNoContextTakeover;
        }
        if ((i & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        if ((i & 16) != 0) {
            z3 = webSocketExtensions.serverNoContextTakeover;
        }
        if ((i & 32) != 0) {
            z4 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z, num, z2, num2, z3, z4);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    public final WebSocketExtensions copy(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        return new WebSocketExtensions(z, num, z2, num2, z3, z4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof WebSocketExtensions)) {
                return false;
            }
            WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
            return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && Intrinsics.areEqual(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && Intrinsics.areEqual(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.perMessageDeflate;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        Integer num = this.clientMaxWindowBits;
        int i2 = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        boolean z3 = this.clientNoContextTakeover;
        int i3 = z3 ? 1 : 0;
        if (z3) {
            i3 = 1;
        }
        Integer num2 = this.serverMaxWindowBits;
        if (num2 != null) {
            i2 = num2.hashCode();
        }
        boolean z4 = this.serverNoContextTakeover;
        int i4 = z4 ? 1 : 0;
        if (z4) {
            i4 = 1;
        }
        boolean z5 = this.unknownValues;
        if (!z5) {
            i = z5 ? 1 : 0;
        }
        return ((((((((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i3) * 31) + i2) * 31) + i4) * 31) + i;
    }

    public final boolean noContextTakeover(boolean z) {
        return z ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ")";
    }
}
