package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.class */
final class AutoValue_PersistedInstallationEntry extends PersistedInstallationEntry {
    private final String authToken;
    private final long expiresInSecs;
    private final String firebaseInstallationId;
    private final String fisError;
    private final String refreshToken;
    private final PersistedInstallation.RegistrationStatus registrationStatus;
    private final long tokenCreationEpochInSecs;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder.class */
    public static final class Builder extends PersistedInstallationEntry.Builder {
        private String authToken;
        private Long expiresInSecs;
        private String firebaseInstallationId;
        private String fisError;
        private String refreshToken;
        private PersistedInstallation.RegistrationStatus registrationStatus;
        private Long tokenCreationEpochInSecs;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
        }

        private Builder(PersistedInstallationEntry persistedInstallationEntry) {
            this.firebaseInstallationId = persistedInstallationEntry.getFirebaseInstallationId();
            this.registrationStatus = persistedInstallationEntry.getRegistrationStatus();
            this.authToken = persistedInstallationEntry.getAuthToken();
            this.refreshToken = persistedInstallationEntry.getRefreshToken();
            this.expiresInSecs = Long.valueOf(persistedInstallationEntry.getExpiresInSecs());
            this.tokenCreationEpochInSecs = Long.valueOf(persistedInstallationEntry.getTokenCreationEpochInSecs());
            this.fisError = persistedInstallationEntry.getFisError();
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry build() {
            String str = "";
            if (this.registrationStatus == null) {
                str = " registrationStatus";
            }
            String str2 = str;
            if (this.expiresInSecs == null) {
                str2 = str + " expiresInSecs";
            }
            String str3 = str2;
            if (this.tokenCreationEpochInSecs == null) {
                str3 = str2 + " tokenCreationEpochInSecs";
            }
            if (str3.isEmpty()) {
                return new AutoValue_PersistedInstallationEntry(this.firebaseInstallationId, this.registrationStatus, this.authToken, this.refreshToken, this.expiresInSecs.longValue(), this.tokenCreationEpochInSecs.longValue(), this.fisError);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setAuthToken(@Nullable String str) {
            this.authToken = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setExpiresInSecs(long j) {
            this.expiresInSecs = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setFirebaseInstallationId(String str) {
            this.firebaseInstallationId = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setFisError(@Nullable String str) {
            this.fisError = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setRefreshToken(@Nullable String str) {
            this.refreshToken = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setRegistrationStatus(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus != null) {
                this.registrationStatus = registrationStatus;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setTokenCreationEpochInSecs(long j) {
            this.tokenCreationEpochInSecs = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_PersistedInstallationEntry(@Nullable String str, PersistedInstallation.RegistrationStatus registrationStatus, @Nullable String str2, @Nullable String str3, long j, long j2, @Nullable String str4) {
        this.firebaseInstallationId = str;
        this.registrationStatus = registrationStatus;
        this.authToken = str2;
        this.refreshToken = str3;
        this.expiresInSecs = j;
        this.tokenCreationEpochInSecs = j2;
        this.fisError = str4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
        if ((r0 = r5.refreshToken) != null) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
        if (r5.expiresInSecs != r0.getExpiresInSecs()) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        if (r5.tokenCreationEpochInSecs != r0.getTokenCreationEpochInSecs()) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009b, code lost:
        if ((r0 = r5.fisError) != null) goto L_0x00a8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r6
            boolean r0 = r0 instanceof com.google.firebase.installations.local.PersistedInstallationEntry
            if (r0 == 0) goto L_0x00ba
            r0 = r6
            com.google.firebase.installations.local.PersistedInstallationEntry r0 = (com.google.firebase.installations.local.PersistedInstallationEntry) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.firebaseInstallationId
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0028
            r0 = r6
            java.lang.String r0 = r0.getFirebaseInstallationId()
            if (r0 != 0) goto L_0x00b6
            goto L_0x0033
        L_0x0028:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.getFirebaseInstallationId()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x0033:
            r0 = r5
            com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus r0 = r0.registrationStatus
            r1 = r6
            com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus r1 = r1.getRegistrationStatus()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
            r0 = r5
            java.lang.String r0 = r0.authToken
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0054
            r0 = r6
            java.lang.String r0 = r0.getAuthToken()
            if (r0 != 0) goto L_0x00b6
            goto L_0x005f
        L_0x0054:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.getAuthToken()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x005f:
            r0 = r5
            java.lang.String r0 = r0.refreshToken
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0072
            r0 = r6
            java.lang.String r0 = r0.getRefreshToken()
            if (r0 != 0) goto L_0x00b6
            goto L_0x007d
        L_0x0072:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.getRefreshToken()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x007d:
            r0 = r5
            long r0 = r0.expiresInSecs
            r1 = r6
            long r1 = r1.getExpiresInSecs()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b6
            r0 = r5
            long r0 = r0.tokenCreationEpochInSecs
            r1 = r6
            long r1 = r1.getTokenCreationEpochInSecs()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b6
            r0 = r5
            java.lang.String r0 = r0.fisError
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x00a8
            r0 = r6
            java.lang.String r0 = r0.getFisError()
            if (r0 != 0) goto L_0x00b6
            goto L_0x00b8
        L_0x00a8:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.getFisError()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
            goto L_0x00b8
        L_0x00b6:
            r0 = 0
            r7 = r0
        L_0x00b8:
            r0 = r7
            return r0
        L_0x00ba:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.local.AutoValue_PersistedInstallationEntry.equals(java.lang.Object):boolean");
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getAuthToken() {
        return this.authToken;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public long getExpiresInSecs() {
        return this.expiresInSecs;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getFirebaseInstallationId() {
        return this.firebaseInstallationId;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getFisError() {
        return this.fisError;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getRefreshToken() {
        return this.refreshToken;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @NonNull
    public PersistedInstallation.RegistrationStatus getRegistrationStatus() {
        return this.registrationStatus;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public long getTokenCreationEpochInSecs() {
        return this.tokenCreationEpochInSecs;
    }

    public int hashCode() {
        String str = this.firebaseInstallationId;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.registrationStatus.hashCode();
        String str2 = this.authToken;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.refreshToken;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        long j = this.expiresInSecs;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.tokenCreationEpochInSecs;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        String str4 = this.fisError;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public PersistedInstallationEntry.Builder toBuilder() {
        return new Builder(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.firebaseInstallationId + ", registrationStatus=" + this.registrationStatus + ", authToken=" + this.authToken + ", refreshToken=" + this.refreshToken + ", expiresInSecs=" + this.expiresInSecs + ", tokenCreationEpochInSecs=" + this.tokenCreationEpochInSecs + ", fisError=" + this.fisError + "}";
    }
}
