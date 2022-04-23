package com.sinch.verification.core.internal.error;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.b.ad;
import kotlinx.serialization.b.bk;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087\b\u0018�� $2\u00020\u0001:\u0003#$%B=\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB)\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J2\u0010\u001d\u001a\u00020��2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\u00152\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\u0006HÖ\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0010\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0018\u0010\r\u001a\u0004\b\u0019\u0010\u0013¨\u0006&"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData;", "", "seen1", "", "errorCode", "message", "", "reference", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "errorCode$annotations", "()V", "getErrorCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "message$annotations", "getMessage", "()Ljava/lang/String;", "mightBePhoneFormattingError", "", "getMightBePhoneFormattingError", "()Z", "reference$annotations", "getReference", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/sinch/verification/core/internal/error/ApiErrorData;", "equals", "other", "hashCode", "toString", "$serializer", "Companion", "ErrorCodes", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData.class */
public final class ApiErrorData {
    public static final Companion Companion = new Companion(null);
    private final Integer errorCode;
    private final String message;
    private final String reference;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/internal/error/ApiErrorData;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<ApiErrorData> serializer() {
            return ApiErrorData$$serializer.INSTANCE;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\r\bÆ\u0002\u0018��2\u00020\u0001:\u000b\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u000e"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;", "", "()V", "BadRequest", "Conflict", "Forbidden", "InternalServerError", "NotFound", "NotImplemented", "PaymentRequired", "ServiceUnavailable", "TooManyRequests", "Unauthorized", "UnprocessableEntity", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes.class */
    public static final class ErrorCodes {
        public static final ErrorCodes INSTANCE = new ErrorCodes();

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$BadRequest;", "", "()V", "InvalidAuthorizationKey", "", "InvalidRequest", "NumberMissingLeadingPlus", "ParameterValidation", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$BadRequest.class */
        public static final class BadRequest {
            public static final BadRequest INSTANCE = new BadRequest();
            public static final int InvalidAuthorizationKey = 40004;
            public static final int InvalidRequest = 40003;
            public static final int NumberMissingLeadingPlus = 40005;
            public static final int ParameterValidation = 40001;

            private BadRequest() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Conflict;", "", "()V", "RequestConflict", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Conflict.class */
        public static final class Conflict {
            public static final Conflict INSTANCE = new Conflict();
            public static final int RequestConflict = 40900;

            private Conflict() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;", "", "()V", "ForbiddenRequest", "", "InsufficientPrivileges", "InvalidScheme", "RestrictedAction", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden.class */
        public static final class Forbidden {
            public static final int ForbiddenRequest = 40300;
            public static final Forbidden INSTANCE = new Forbidden();
            public static final int InsufficientPrivileges = 40302;
            public static final int InvalidScheme = 40301;
            public static final int RestrictedAction = 40303;

            private Forbidden() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$InternalServerError;", "", "()V", "InternalError", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$InternalServerError.class */
        public static final class InternalServerError {
            public static final InternalServerError INSTANCE = new InternalServerError();
            public static final int InternalError = 50000;

            private InternalServerError() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$NotFound;", "", "()V", "ResourceNotFound", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$NotFound.class */
        public static final class NotFound {
            public static final NotFound INSTANCE = new NotFound();
            public static final int ResourceNotFound = 40400;

            private NotFound() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$NotImplemented;", "", "()V", "MethodNotImplemented", "", "StatusNotImplemented", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$NotImplemented.class */
        public static final class NotImplemented {
            public static final NotImplemented INSTANCE = new NotImplemented();
            public static final int MethodNotImplemented = 50100;
            public static final int StatusNotImplemented = 50101;

            private NotImplemented() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$PaymentRequired;", "", "()V", "NotEnoughCredit", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$PaymentRequired.class */
        public static final class PaymentRequired {
            public static final PaymentRequired INSTANCE = new PaymentRequired();
            public static final int NotEnoughCredit = 40200;

            private PaymentRequired() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$ServiceUnavailable;", "", "()V", "ConfigurationError", "", "TemporaryDown", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$ServiceUnavailable.class */
        public static final class ServiceUnavailable {
            public static final int ConfigurationError = 50301;
            public static final ServiceUnavailable INSTANCE = new ServiceUnavailable();
            public static final int TemporaryDown = 50300;

            private ServiceUnavailable() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$TooManyRequests;", "", "()V", "CapacityExceeded", "", "VelocityConstraint", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$TooManyRequests.class */
        public static final class TooManyRequests {
            public static final int CapacityExceeded = 42900;
            public static final TooManyRequests INSTANCE = new TooManyRequests();
            public static final int VelocityConstraint = 42901;

            private TooManyRequests() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;", "", "()V", "AlreadyAuthorized", "", "AuthorizationHeader", "AuthorizationRequired", "Expired", "InvalidAuthorization", "InvalidCredentials", "InvalidSignature", "TimestampHeader", "UserBarred", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized.class */
        public static final class Unauthorized {
            public static final int AlreadyAuthorized = 40103;
            public static final int AuthorizationHeader = 40100;
            public static final int AuthorizationRequired = 40104;
            public static final int Expired = 40105;
            public static final Unauthorized INSTANCE = new Unauthorized();
            public static final int InvalidAuthorization = 40107;
            public static final int InvalidCredentials = 40108;
            public static final int InvalidSignature = 40102;
            public static final int TimestampHeader = 40101;
            public static final int UserBarred = 40106;

            private Unauthorized() {
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$UnprocessableEntity;", "", "()V", "ApplicationConfiguration", "", "InvalidCallbackResponse", "Unavailable", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$UnprocessableEntity.class */
        public static final class UnprocessableEntity {
            public static final int ApplicationConfiguration = 42200;
            public static final UnprocessableEntity INSTANCE = new UnprocessableEntity();
            public static final int InvalidCallbackResponse = 42202;
            public static final int Unavailable = 42201;

            private UnprocessableEntity() {
            }
        }

        private ErrorCodes() {
        }
    }

    public ApiErrorData() {
        this((Integer) null, (String) null, (String) null, 7, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ ApiErrorData(int i, Integer num, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.errorCode = num;
        } else {
            this.errorCode = null;
        }
        if ((i & 2) != 0) {
            this.message = str;
        } else {
            this.message = null;
        }
        if ((i & 4) != 0) {
            this.reference = str2;
        } else {
            this.reference = null;
        }
    }

    public ApiErrorData(Integer num, String str, String str2) {
        this.errorCode = num;
        this.message = str;
        this.reference = str2;
    }

    public /* synthetic */ ApiErrorData(Integer num, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public static /* synthetic */ ApiErrorData copy$default(ApiErrorData apiErrorData, Integer num, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = apiErrorData.errorCode;
        }
        if ((i & 2) != 0) {
            str = apiErrorData.message;
        }
        if ((i & 4) != 0) {
            str2 = apiErrorData.reference;
        }
        return apiErrorData.copy(num, str, str2);
    }

    public static /* synthetic */ void errorCode$annotations() {
    }

    public static /* synthetic */ void message$annotations() {
    }

    public static /* synthetic */ void reference$annotations() {
    }

    public static final void write$Self(ApiErrorData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        if ((!p.a(self.errorCode, (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 0)) {
            output.encodeNullableSerializableElement(serialDesc, 0, ad.f38876a, self.errorCode);
        }
        if ((!p.a((Object) self.message, (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 1)) {
            output.encodeNullableSerializableElement(serialDesc, 1, bk.f38928a, self.message);
        }
        if ((!p.a((Object) self.reference, (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 2)) {
            output.encodeNullableSerializableElement(serialDesc, 2, bk.f38928a, self.reference);
        }
    }

    public final Integer component1() {
        return this.errorCode;
    }

    public final String component2() {
        return this.message;
    }

    public final String component3() {
        return this.reference;
    }

    public final ApiErrorData copy(Integer num, String str, String str2) {
        return new ApiErrorData(num, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApiErrorData)) {
            return false;
        }
        ApiErrorData apiErrorData = (ApiErrorData) obj;
        return p.a(this.errorCode, apiErrorData.errorCode) && p.a((Object) this.message, (Object) apiErrorData.message) && p.a((Object) this.reference, (Object) apiErrorData.reference);
    }

    public final Integer getErrorCode() {
        return this.errorCode;
    }

    public final String getMessage() {
        return this.message;
    }

    public final boolean getMightBePhoneFormattingError() {
        Integer num = this.errorCode;
        if (num != null && num.intValue() == 40001) {
            return true;
        }
        Integer num2 = this.errorCode;
        return num2 != null && num2.intValue() == 40005;
    }

    public final String getReference() {
        return this.reference;
    }

    public final int hashCode() {
        Integer num = this.errorCode;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.message;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.reference;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "ApiErrorData(errorCode=" + this.errorCode + ", message=" + this.message + ", reference=" + this.reference + ")";
    }
}
