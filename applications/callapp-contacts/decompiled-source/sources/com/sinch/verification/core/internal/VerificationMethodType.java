package com.sinch.verification.core.internal;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.j;
import kotlinx.serialization.m;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\u0001\u0018�� \u00102\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationMethodType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "allowsManualVerification", "", "getAllowsManualVerification", "()Z", "getValue", "()Ljava/lang/String;", "SMS", "FLASHCALL", "CALLOUT", "SEAMLESS", "AUTO", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationMethodType.class */
public enum VerificationMethodType {
    SMS(MRAIDNativeFeature.SMS),
    FLASHCALL("flashCall"),
    CALLOUT("callout"),
    SEAMLESS("seamless"),
    AUTO("auto");
    
    private final String value;
    public static final Companion Companion = new Companion(null);
    private static final SerialDescriptor descriptor = m.a("VerificationMethodType", (j) j.i.f38990a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001HÆ\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "serializer", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationMethodType$Companion.class */
    public static final class Companion implements KSerializer<VerificationMethodType> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // kotlinx.serialization.d
        public final VerificationMethodType deserialize(Decoder decoder) {
            p.c(decoder, "decoder");
            String decodeString = decoder.decodeString();
            Locale locale = Locale.ROOT;
            p.a((Object) locale, "Locale.ROOT");
            if (decodeString != null) {
                String lowerCase = decodeString.toLowerCase(locale);
                p.a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                String value = VerificationMethodType.SMS.getValue();
                Locale locale2 = Locale.ROOT;
                p.a((Object) locale2, "Locale.ROOT");
                if (value != null) {
                    String lowerCase2 = value.toLowerCase(locale2);
                    p.a((Object) lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    if (p.a((Object) lowerCase, (Object) lowerCase2)) {
                        return VerificationMethodType.SMS;
                    }
                    String value2 = VerificationMethodType.FLASHCALL.getValue();
                    Locale locale3 = Locale.ROOT;
                    p.a((Object) locale3, "Locale.ROOT");
                    if (value2 != null) {
                        String lowerCase3 = value2.toLowerCase(locale3);
                        p.a((Object) lowerCase3, "(this as java.lang.String).toLowerCase(locale)");
                        if (p.a((Object) lowerCase, (Object) lowerCase3)) {
                            return VerificationMethodType.FLASHCALL;
                        }
                        String value3 = VerificationMethodType.CALLOUT.getValue();
                        Locale locale4 = Locale.ROOT;
                        p.a((Object) locale4, "Locale.ROOT");
                        if (value3 != null) {
                            String lowerCase4 = value3.toLowerCase(locale4);
                            p.a((Object) lowerCase4, "(this as java.lang.String).toLowerCase(locale)");
                            if (p.a((Object) lowerCase, (Object) lowerCase4)) {
                                return VerificationMethodType.CALLOUT;
                            }
                            String value4 = VerificationMethodType.SEAMLESS.getValue();
                            Locale locale5 = Locale.ROOT;
                            p.a((Object) locale5, "Locale.ROOT");
                            if (value4 != null) {
                                String lowerCase5 = value4.toLowerCase(locale5);
                                p.a((Object) lowerCase5, "(this as java.lang.String).toLowerCase(locale)");
                                if (p.a((Object) lowerCase, (Object) lowerCase5)) {
                                    return VerificationMethodType.SEAMLESS;
                                }
                                String value5 = VerificationMethodType.AUTO.getValue();
                                Locale locale6 = Locale.ROOT;
                                p.a((Object) locale6, "Locale.ROOT");
                                if (value5 != null) {
                                    String lowerCase6 = value5.toLowerCase(locale6);
                                    p.a((Object) lowerCase6, "(this as java.lang.String).toLowerCase(locale)");
                                    if (p.a((Object) lowerCase, (Object) lowerCase6)) {
                                        return VerificationMethodType.AUTO;
                                    }
                                    throw new SerializationException("Unknown element " + decoder.decodeString(), null, 2, null);
                                }
                                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                            }
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
        public final SerialDescriptor getDescriptor() {
            return VerificationMethodType.descriptor;
        }

        public final VerificationMethodType patch(Decoder decoder, VerificationMethodType old) {
            p.c(decoder, "decoder");
            p.c(old, "old");
            return (VerificationMethodType) KSerializer.a.a(this, decoder);
        }

        public final void serialize(Encoder encoder, VerificationMethodType value) {
            p.c(encoder, "encoder");
            p.c(value, "value");
            encoder.encodeString(value.getValue());
        }

        public final KSerializer<VerificationMethodType> serializer() {
            return VerificationMethodType.Companion;
        }
    }

    VerificationMethodType(String str) {
        this.value = str;
    }

    public final boolean getAllowsManualVerification() {
        return this != SEAMLESS;
    }

    public final String getValue() {
        return this.value;
    }
}
