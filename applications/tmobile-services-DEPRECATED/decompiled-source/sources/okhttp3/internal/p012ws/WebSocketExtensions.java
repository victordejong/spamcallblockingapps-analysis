package okhttp3.internal.p012ws;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018�� #:\u0001#BG\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0001\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0001\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0001¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0003J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\b\u0010\u0006J\u0010\u0010\t\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\t\u0010\u0003J\u0010\u0010\n\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\n\u0010\u0003JP\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\r\u001a\u00020\u00012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00012\b\b\u0002\u0010\u0010\u001a\u00020\u0001HÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u001eR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001fR\u0016\u0010\r\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010 R\u0016\u0010\u000b\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010 R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001fR\u0016\u0010\u000f\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010 R\u0016\u0010\u0010\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010 ¨\u0006$"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "component1", "()Z", "", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "perMessageDeflate", "clientMaxWindowBits", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "copy", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)Lokhttp3/internal/ws/WebSocketExtensions;", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "clientOriginated", "noContextTakeover", "(Z)Z", "", "toString", "()Ljava/lang/String;", "Ljava/lang/Integer;", "Z", "<init>", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: okhttp3.internal.ws.WebSocketExtensions */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketExtensions.class */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    @JvmField
    @Nullable
    public final Integer clientMaxWindowBits;
    @JvmField
    public final boolean clientNoContextTakeover;
    @JvmField
    public final boolean perMessageDeflate;
    @JvmField
    @Nullable
    public final Integer serverMaxWindowBits;
    @JvmField
    public final boolean serverNoContextTakeover;
    @JvmField
    public final boolean unknownValues;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "Lokhttp3/Headers;", "responseHeaders", "Lokhttp3/internal/ws/WebSocketExtensions;", "parse", "(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;", "", "HEADER_WEB_SOCKET_EXTENSION", "Ljava/lang/String;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: okhttp3.internal.ws.WebSocketExtensions$Companion */
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketExtensions$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final WebSocketExtensions parse(@NotNull Headers responseHeaders) throws IOException {
            boolean p;
            boolean p2;
            boolean p3;
            boolean p4;
            boolean p5;
            boolean p6;
            Intrinsics.m1830e(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            boolean z = false;
            Integer num = null;
            boolean z2 = false;
            Integer num2 = null;
            boolean z3 = false;
            boolean z4 = false;
            for (int i = 0; i < size; i++) {
                p = StringsKt__StringsJVMKt.m1487p(responseHeaders.name(i), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION, true);
                if (!p) {
                    z = z;
                    num = num;
                    z2 = z2;
                    num2 = num2;
                    z3 = z3;
                    z4 = z4;
                } else {
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
                            p2 = StringsKt__StringsJVMKt.m1487p(Util.trimSubstring(value, i2, delimiterOffset), "permessage-deflate", true);
                            if (p2) {
                                i2 = i3;
                                Integer num3 = num;
                                boolean z5 = z2;
                                Integer num4 = num2;
                                boolean z6 = z3;
                                if (z) {
                                    z4 = true;
                                    z6 = z3;
                                    num4 = num2;
                                    z5 = z2;
                                    num3 = num;
                                    i2 = i3;
                                }
                                while (i2 < delimiterOffset$default) {
                                    int delimiterOffset2 = Util.delimiterOffset(value, ';', i2, delimiterOffset$default);
                                    int delimiterOffset3 = Util.delimiterOffset(value, '=', i2, delimiterOffset2);
                                    String trimSubstring = Util.trimSubstring(value, i2, delimiterOffset3);
                                    String l0 = delimiterOffset3 < delimiterOffset2 ? StringsKt__StringsKt.m1436l0(Util.trimSubstring(value, delimiterOffset3 + 1, delimiterOffset2), "\"") : null;
                                    p3 = StringsKt__StringsJVMKt.m1487p(trimSubstring, "client_max_window_bits", true);
                                    if (p3) {
                                        if (num3 != null) {
                                            z4 = true;
                                        }
                                        Integer i4 = l0 != null ? StringsKt__StringNumberConversionsKt.m1497i(l0) : null;
                                        num3 = i4;
                                        z5 = z5;
                                        num4 = num4;
                                        z6 = z6;
                                        if (i4 == null) {
                                            num3 = i4;
                                            num4 = num4;
                                            z4 = true;
                                            z6 = z6;
                                            z5 = z5;
                                            i2 = delimiterOffset2 + 1;
                                        } else {
                                            i2 = delimiterOffset2 + 1;
                                        }
                                    } else {
                                        p4 = StringsKt__StringsJVMKt.m1487p(trimSubstring, "client_no_context_takeover", true);
                                        if (p4) {
                                            if (z5) {
                                                z4 = true;
                                            }
                                            if (l0 != null) {
                                                z4 = true;
                                            }
                                            z5 = true;
                                            num3 = num3;
                                            num4 = num4;
                                            z6 = z6;
                                        } else {
                                            p5 = StringsKt__StringsJVMKt.m1487p(trimSubstring, "server_max_window_bits", true);
                                            if (p5) {
                                                if (num4 != null) {
                                                    z4 = true;
                                                }
                                                num4 = l0 != null ? StringsKt__StringNumberConversionsKt.m1497i(l0) : null;
                                                num3 = num3;
                                                z5 = z5;
                                                num4 = num4;
                                                z6 = z6;
                                                if (num4 == null) {
                                                    num3 = num3;
                                                    z4 = true;
                                                    z6 = z6;
                                                    z5 = z5;
                                                }
                                            } else {
                                                num3 = num3;
                                                num4 = num4;
                                                p6 = StringsKt__StringsJVMKt.m1487p(trimSubstring, "server_no_context_takeover", true);
                                                if (p6) {
                                                    if (z6) {
                                                        z4 = true;
                                                    }
                                                    if (l0 != null) {
                                                        z4 = true;
                                                    }
                                                    z6 = true;
                                                    num3 = num3;
                                                    z5 = z5;
                                                    num4 = num4;
                                                }
                                                z4 = true;
                                                z6 = z6;
                                                z5 = z5;
                                            }
                                        }
                                        i2 = delimiterOffset2 + 1;
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

    public WebSocketExtensions(boolean z, @Nullable Integer num, boolean z2, @Nullable Integer num2, boolean z3, boolean z4) {
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
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p012ws.WebSocketExtensions.<init>(boolean, java.lang.Integer, boolean, java.lang.Integer, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
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

    @Nullable
    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    @Nullable
    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    @NotNull
    public final WebSocketExtensions copy(boolean z, @Nullable Integer num, boolean z2, @Nullable Integer num2, boolean z3, boolean z4) {
        return new WebSocketExtensions(z, num, z2, num2, z3, z4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && Intrinsics.m1834a(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && Intrinsics.m1834a(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
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
        int i5 = z2 ? 1 : 0;
        int i6 = z2 ? 1 : 0;
        return (((((((((i5 * 31) + hashCode) * 31) + i3) * 31) + i2) * 31) + i4) * 31) + i;
    }

    public final boolean noContextTakeover(boolean z) {
        return z ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    @NotNull
    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ")";
    }
}
