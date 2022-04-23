package com.sinch.verification.core.initiation;

import com.mopub.common.AdType;
import com.sinch.metadata.model.PhoneMetadata;
import com.sinch.verification.core.internal.VerificationMethodType;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0005¨\u0006\u0018"}, d2 = {"Lcom/sinch/verification/core/initiation/VerificationInitiationData;", "", AdType.CUSTOM, "", "getCustom", "()Ljava/lang/String;", "honourEarlyReject", "", "getHonourEarlyReject", "()Z", "identity", "Lcom/sinch/verification/core/initiation/VerificationIdentity;", "getIdentity", "()Lcom/sinch/verification/core/initiation/VerificationIdentity;", "metadata", "Lcom/sinch/metadata/model/PhoneMetadata;", "getMetadata", "()Lcom/sinch/metadata/model/PhoneMetadata;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "reference", "getReference", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/VerificationInitiationData.class */
public interface VerificationInitiationData {
    String getCustom();

    boolean getHonourEarlyReject();

    VerificationIdentity getIdentity();

    PhoneMetadata getMetadata();

    VerificationMethodType getMethod();

    String getReference();
}
