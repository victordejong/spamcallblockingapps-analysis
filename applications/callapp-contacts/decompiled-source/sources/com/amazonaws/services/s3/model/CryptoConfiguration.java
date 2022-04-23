package com.amazonaws.services.s3.model;

import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.internal.crypto.CryptoRuntime;
import java.io.Serializable;
import java.security.Provider;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CryptoConfiguration.class */
public class CryptoConfiguration implements Serializable, Cloneable {
    private static final long serialVersionUID = -8646831898339939580L;
    private transient Region awskmsRegion;
    private CryptoMode cryptoMode;
    private Provider cryptoProvider;
    private boolean ignoreMissingInstructionFile;
    private CryptoStorageMode storageMode;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly.class */
    static final class ReadOnly extends CryptoConfiguration {
        private ReadOnly() {
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
            return CryptoConfiguration.super.clone();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final boolean isReadOnly() {
            return true;
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final void setCryptoMode(CryptoMode cryptoMode) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final void setCryptoProvider(Provider provider) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final void setIgnoreMissingInstructionFile(boolean z) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final void setKmsRegion(Regions regions) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final void setStorageMode(CryptoStorageMode cryptoStorageMode) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final CryptoConfiguration withCryptoMode(CryptoMode cryptoMode) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final CryptoConfiguration withCryptoProvider(Provider provider) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final CryptoConfiguration withIgnoreMissingInstructionFile(boolean z) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final CryptoConfiguration withKmsRegion(Regions regions) {
            throw new UnsupportedOperationException();
        }

        @Override // com.amazonaws.services.s3.model.CryptoConfiguration
        public final CryptoConfiguration withStorageMode(CryptoStorageMode cryptoStorageMode) {
            throw new UnsupportedOperationException();
        }
    }

    public CryptoConfiguration() {
        this(CryptoMode.EncryptionOnly);
    }

    public CryptoConfiguration(CryptoMode cryptoMode) {
        this.ignoreMissingInstructionFile = true;
        this.storageMode = CryptoStorageMode.ObjectMetadata;
        this.cryptoProvider = null;
        this.cryptoMode = cryptoMode;
    }

    private void check(CryptoMode cryptoMode) {
        if (cryptoMode == CryptoMode.AuthenticatedEncryption || cryptoMode == CryptoMode.StrictAuthenticatedEncryption) {
            if (this.cryptoProvider == null && !CryptoRuntime.a()) {
                CryptoRuntime.b();
                if (!CryptoRuntime.a()) {
                    throw new UnsupportedOperationException("The Bouncy castle library jar is required on the classpath to enable authenticated encryption");
                }
            }
            if (!CryptoRuntime.a(this.cryptoProvider)) {
                throw new UnsupportedOperationException("More recent version of the Bouncy castle library is required to enable authenticated encryption");
            }
        }
    }

    private CryptoConfiguration copyTo(CryptoConfiguration cryptoConfiguration) {
        cryptoConfiguration.cryptoMode = this.cryptoMode;
        cryptoConfiguration.storageMode = this.storageMode;
        cryptoConfiguration.cryptoProvider = this.cryptoProvider;
        cryptoConfiguration.ignoreMissingInstructionFile = this.ignoreMissingInstructionFile;
        cryptoConfiguration.awskmsRegion = this.awskmsRegion;
        return cryptoConfiguration;
    }

    public CryptoConfiguration clone() {
        return copyTo(new CryptoConfiguration());
    }

    public Region getAwsKmsRegion() {
        return this.awskmsRegion;
    }

    public CryptoMode getCryptoMode() {
        return this.cryptoMode;
    }

    public Provider getCryptoProvider() {
        return this.cryptoProvider;
    }

    @Deprecated
    public Regions getKmsRegion() {
        Region region = this.awskmsRegion;
        if (region == null) {
            return null;
        }
        return Regions.fromName(region.f6757a);
    }

    public CryptoStorageMode getStorageMode() {
        return this.storageMode;
    }

    public boolean isIgnoreMissingInstructionFile() {
        return this.ignoreMissingInstructionFile;
    }

    public boolean isReadOnly() {
        return false;
    }

    public CryptoConfiguration readOnly() {
        return isReadOnly() ? this : copyTo(new ReadOnly());
    }

    public void setAwsKmsRegion(Region region) {
        this.awskmsRegion = region;
    }

    public void setCryptoMode(CryptoMode cryptoMode) throws UnsupportedOperationException {
        this.cryptoMode = cryptoMode;
    }

    public void setCryptoProvider(Provider provider) {
        this.cryptoProvider = provider;
        check(this.cryptoMode);
    }

    public void setIgnoreMissingInstructionFile(boolean z) {
        this.ignoreMissingInstructionFile = z;
    }

    @Deprecated
    public void setKmsRegion(Regions regions) {
        if (regions != null) {
            setAwsKmsRegion(Region.a(regions));
        } else {
            setAwsKmsRegion(null);
        }
    }

    public void setStorageMode(CryptoStorageMode cryptoStorageMode) {
        this.storageMode = cryptoStorageMode;
    }

    public CryptoConfiguration withAwsKmsRegion(Region region) {
        this.awskmsRegion = region;
        return this;
    }

    public CryptoConfiguration withCryptoMode(CryptoMode cryptoMode) {
        this.cryptoMode = cryptoMode;
        return this;
    }

    public CryptoConfiguration withCryptoProvider(Provider provider) {
        this.cryptoProvider = provider;
        check(this.cryptoMode);
        return this;
    }

    public CryptoConfiguration withIgnoreMissingInstructionFile(boolean z) {
        this.ignoreMissingInstructionFile = z;
        return this;
    }

    @Deprecated
    public CryptoConfiguration withKmsRegion(Regions regions) {
        setKmsRegion(regions);
        return this;
    }

    public CryptoConfiguration withStorageMode(CryptoStorageMode cryptoStorageMode) {
        this.storageMode = cryptoStorageMode;
        return this;
    }
}
