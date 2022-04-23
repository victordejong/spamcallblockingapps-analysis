package com.sinch.verification.core.internal;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0004\u000b\f\r\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0006R\u0011\u0010\n\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\n\u0010\u0006\u0082\u0001\u0004\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationState;", "", "()V", "canInitiate", "", "getCanInitiate", "()Z", "canVerify", "getCanVerify", "isVerificationProcessFinished", "isVerified", "IDLE", "Initialization", "ManuallyStopped", "Verification", "Lcom/sinch/verification/core/internal/VerificationState$IDLE;", "Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;", "Lcom/sinch/verification/core/internal/VerificationState$Initialization;", "Lcom/sinch/verification/core/internal/VerificationState$Verification;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationState.class */
public abstract class VerificationState {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationState$IDLE;", "Lcom/sinch/verification/core/internal/VerificationState;", "()V", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationState$IDLE.class */
    public static final class IDLE extends VerificationState {
        public static final IDLE INSTANCE = new IDLE();

        private IDLE() {
            super(null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationState$Initialization;", "Lcom/sinch/verification/core/internal/VerificationState;", "status", "Lcom/sinch/verification/core/internal/VerificationStateStatus;", "(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V", "getStatus", "()Lcom/sinch/verification/core/internal/VerificationStateStatus;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationState$Initialization.class */
    public static final class Initialization extends VerificationState {
        private final VerificationStateStatus status;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Initialization(VerificationStateStatus status) {
            super(null);
            p.c(status, "status");
            this.status = status;
        }

        public static /* synthetic */ Initialization copy$default(Initialization initialization, VerificationStateStatus verificationStateStatus, int i, Object obj) {
            if ((i & 1) != 0) {
                verificationStateStatus = initialization.status;
            }
            return initialization.copy(verificationStateStatus);
        }

        public final VerificationStateStatus component1() {
            return this.status;
        }

        public final Initialization copy(VerificationStateStatus status) {
            p.c(status, "status");
            return new Initialization(status);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Initialization) && p.a(this.status, ((Initialization) obj).status);
            }
            return true;
        }

        public final VerificationStateStatus getStatus() {
            return this.status;
        }

        public final int hashCode() {
            VerificationStateStatus verificationStateStatus = this.status;
            if (verificationStateStatus != null) {
                return verificationStateStatus.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "Initialization(status=" + this.status + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;", "Lcom/sinch/verification/core/internal/VerificationState;", "()V", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationState$ManuallyStopped.class */
    public static final class ManuallyStopped extends VerificationState {
        public static final ManuallyStopped INSTANCE = new ManuallyStopped();

        private ManuallyStopped() {
            super(null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationState$Verification;", "Lcom/sinch/verification/core/internal/VerificationState;", "status", "Lcom/sinch/verification/core/internal/VerificationStateStatus;", "(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V", "getStatus", "()Lcom/sinch/verification/core/internal/VerificationStateStatus;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationState$Verification.class */
    public static final class Verification extends VerificationState {
        private final VerificationStateStatus status;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Verification(VerificationStateStatus status) {
            super(null);
            p.c(status, "status");
            this.status = status;
        }

        public static /* synthetic */ Verification copy$default(Verification verification, VerificationStateStatus verificationStateStatus, int i, Object obj) {
            if ((i & 1) != 0) {
                verificationStateStatus = verification.status;
            }
            return verification.copy(verificationStateStatus);
        }

        public final VerificationStateStatus component1() {
            return this.status;
        }

        public final Verification copy(VerificationStateStatus status) {
            p.c(status, "status");
            return new Verification(status);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Verification) && p.a(this.status, ((Verification) obj).status);
            }
            return true;
        }

        public final VerificationStateStatus getStatus() {
            return this.status;
        }

        public final int hashCode() {
            VerificationStateStatus verificationStateStatus = this.status;
            if (verificationStateStatus != null) {
                return verificationStateStatus.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "Verification(status=" + this.status + ")";
        }
    }

    private VerificationState() {
    }

    public /* synthetic */ VerificationState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean getCanInitiate() {
        if (p.a(this, IDLE.INSTANCE)) {
            return true;
        }
        if (this instanceof Initialization) {
            return ((Initialization) this).getStatus().isFinished();
        }
        return false;
    }

    public final boolean getCanVerify() {
        return !(this instanceof Verification) || ((Verification) this).getStatus() != VerificationStateStatus.SUCCESS;
    }

    public final boolean isVerificationProcessFinished() {
        if (this instanceof Verification) {
            return ((Verification) this).getStatus().isFinished();
        }
        if (this instanceof Initialization) {
            return ((Initialization) this).getStatus() == VerificationStateStatus.ERROR;
        }
        if (p.a(this, ManuallyStopped.INSTANCE)) {
            return true;
        }
        if (p.a(this, IDLE.INSTANCE)) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final boolean isVerified() {
        return p.a(this, new Verification(VerificationStateStatus.SUCCESS));
    }
}
