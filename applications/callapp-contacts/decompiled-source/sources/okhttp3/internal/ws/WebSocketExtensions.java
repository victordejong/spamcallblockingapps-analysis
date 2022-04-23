package okhttp3.internal.ws;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import okhttp3.Headers;
import okhttp3.internal.Util;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018�� \u001c2\u00020\u0001:\u0001\u001cBE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003JN\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "perMessageDeflate", "", "clientMaxWindowBits", "", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "Ljava/lang/Integer;", "component1", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "copy", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)Lokhttp3/internal/ws/WebSocketExtensions;", "equals", "other", "hashCode", "noContextTakeover", "clientOriginated", "toString", "", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketExtensions.class */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "", "()V", "HEADER_WEB_SOCKET_EXTENSION", "", "parse", "Lokhttp3/internal/ws/WebSocketExtensions;", "responseHeaders", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketExtensions$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WebSocketExtensions parse(Headers responseHeaders) throws IOException {
            String str;
            p.d(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            boolean z = false;
            Integer num = null;
            boolean z2 = false;
            Integer num2 = null;
            boolean z3 = false;
            boolean z4 = false;
            for (int i = 0; i < size; i++) {
                z = z;
                num = num;
                z2 = z2;
                num2 = num2;
                z3 = z3;
                z4 = z4;
                if (kotlin.h.p.a(responseHeaders.name(i), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION)) {
                    String value = responseHeaders.value(i);
                    int i2 = 0;
                    while (true) {
                        z = z;
                        num = num;
                        z2 = z2;
                        num2 = num2;
                        z3 = z3;
                        z4 = z4;
                        if (i2 < value.length()) {
                            int delimiterOffset$default = Util.delimiterOffset$default(value, ',', i2, 0, 4, (Object) null);
                            int delimiterOffset = Util.delimiterOffset(value, ';', i2, delimiterOffset$default);
                            int i3 = delimiterOffset + 1;
                            if (kotlin.h.p.a(Util.trimSubstring(value, i2, delimiterOffset), "permessage-deflate")) {
                                Integer num3 = num;
                                boolean z5 = z2;
                                Integer num4 = num2;
                                boolean z6 = z3;
                                i2 = i3;
                                if (z) {
                                    z4 = true;
                                    i2 = i3;
                                    z6 = z3;
                                    num4 = num2;
                                    z5 = z2;
                                    num3 = num;
                                }
                                while (i2 < delimiterOffset$default) {
                                    int delimiterOffset2 = Util.delimiterOffset(value, ';', i2, delimiterOffset$default);
                                    int delimiterOffset3 = Util.delimiterOffset(value, '=', i2, delimiterOffset2);
                                    String trimSubstring = Util.trimSubstring(value, i2, delimiterOffset3);
                                    if (delimiterOffset3 < delimiterOffset2) {
                                        String removeSurrounding = Util.trimSubstring(value, delimiterOffset3 + 1, delimiterOffset2);
                                        p.d(removeSurrounding, "$this$removeSurrounding");
                                        p.d(suffix, "delimiter");
                                        p.d(removeSurrounding, "$this$removeSurrounding");
                                        p.d(suffix, "prefix");
                                        p.d(suffix, "suffix");
                                        if (removeSurrounding.length() >= suffix.length() + suffix.length()) {
                                            String str2 = removeSurrounding;
                                            str = removeSurrounding;
                                            if (kotlin.h.p.a((CharSequence) str2, (CharSequence) suffix, false)) {
                                                str = removeSurrounding;
                                                if (kotlin.h.p.b((CharSequence) str2, (CharSequence) suffix, false)) {
                                                    str = removeSurrounding.substring(suffix.length(), removeSurrounding.length() - suffix.length());
                                                    p.b(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                                }
                                            }
                                        } else {
                                            str = removeSurrounding;
                                        }
                                    } else {
                                        str = null;
                                    }
                                    i2 = delimiterOffset2 + 1;
                                    if (kotlin.h.p.a(trimSubstring, "client_max_window_bits")) {
                                        if (num3 != null) {
                                            z4 = true;
                                        }
                                        Integer e = str != null ? kotlin.h.p.e(str) : null;
                                        num3 = e;
                                        num4 = num4;
                                        if (e == null) {
                                            num3 = e;
                                            num4 = num4;
                                            z4 = true;
                                        }
                                    } else if (kotlin.h.p.a(trimSubstring, "client_no_context_takeover")) {
                                        if (z5) {
                                            z4 = true;
                                        }
                                        if (str != null) {
                                            z4 = true;
                                        }
                                        z5 = true;
                                    } else {
                                        if (kotlin.h.p.a(trimSubstring, "server_max_window_bits")) {
                                            if (num4 != null) {
                                                z4 = true;
                                            }
                                            Integer e2 = str != null ? kotlin.h.p.e(str) : null;
                                            num3 = num3;
                                            num4 = e2;
                                            if (e2 == null) {
                                                num3 = num3;
                                                num4 = e2;
                                            }
                                        } else {
                                            num3 = num3;
                                            num4 = num4;
                                            if (kotlin.h.p.a(trimSubstring, "server_no_context_takeover")) {
                                                if (z6) {
                                                    z4 = true;
                                                }
                                                if (str != null) {
                                                    z4 = true;
                                                }
                                                z6 = true;
                                            }
                                        }
                                        z4 = true;
                                    }
                                }
                                z = true;
                                num = num3;
                                z2 = z5;
                                num2 = num4;
                                z3 = z6;
                            } else {
                                i2 = i3;
                                z4 = true;
                            }
                        }
                    }
                }
            }
            return new WebSocketExtensions(z, num, z2, num2, z3, z4);
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

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ WebSocketExtensions(boolean r9, java.lang.Integer r10, boolean r11, java.lang.Integer r12, boolean r13, boolean r14, int r15, kotlin.jvm.internal.DefaultConstructorMarker r16) {
        /*
            r8 = this;
            r0 = r15
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000c
            r0 = 0
            r9 = r0
            goto L_0x000c
        L_0x000c:
            r0 = 0
            r16 = r0
            r0 = r15
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 0
            r10 = r0
            goto L_0x001b
        L_0x001b:
            r0 = r15
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0027
            r0 = 0
            r11 = r0
            goto L_0x0027
        L_0x0027:
            r0 = r15
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0036
            r0 = r16
            r12 = r0
            goto L_0x0036
        L_0x0036:
            r0 = r15
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0044
            r0 = 0
            r13 = r0
            goto L_0x0044
        L_0x0044:
            r0 = r15
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0052
            r0 = 0
            r14 = r0
            goto L_0x0052
        L_0x0052:
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.WebSocketExtensions.<init>(boolean, java.lang.Integer, boolean, java.lang.Integer, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && p.a(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && p.a(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    public final int hashCode() {
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
        int i5 = z2 ? 1 : 0;
        int i6 = z2 ? 1 : 0;
        return (((((((((i5 * 31) + hashCode) * 31) + i3) * 31) + i2) * 31) + i4) * 31) + i;
    }

    public final boolean noContextTakeover(boolean z) {
        return z ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    public final String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ")";
    }
}
