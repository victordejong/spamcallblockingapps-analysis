package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AnonymousIdentity.class */
public final class AnonymousIdentity implements Identity {
    private String email;
    private String name;
    private String sdkGuid;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/AnonymousIdentity$Builder.class */
    public static class Builder {
        private String email;
        private String name;

        public Identity build() {
            return new AnonymousIdentity(this);
        }

        public Builder withEmailIdentifier(String str) {
            this.email = str;
            return this;
        }

        public Builder withNameIdentifier(String str) {
            this.name = str;
            return this;
        }
    }

    public AnonymousIdentity() {
    }

    private AnonymousIdentity(Builder builder) {
        this.email = builder.email;
        this.name = builder.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AnonymousIdentity anonymousIdentity = (AnonymousIdentity) obj;
        if (this.email != null) {
            if (!this.email.equals(anonymousIdentity.email)) {
                return false;
            }
        } else if (anonymousIdentity.email != null) {
            return false;
        }
        return this.name != null ? this.name.equals(anonymousIdentity.name) : anonymousIdentity.name == null;
    }

    @Nullable
    public String getEmail() {
        return this.email;
    }

    @Nullable
    public String getName() {
        return this.name;
    }

    @NonNull
    public String getSdkGuid() {
        return this.sdkGuid;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.email != null ? this.email.hashCode() : 0;
        if (this.name != null) {
            i = this.name.hashCode();
        }
        return (hashCode * 31) + i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSdkGuid(String str) {
        this.sdkGuid = str;
    }
}
