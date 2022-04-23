package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AnonymousIdentity.class */
public final class AnonymousIdentity implements Identity {
    public String email;
    public String name;
    public String sdkGuid;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/AnonymousIdentity$Builder.class */
    public static class Builder {
        public String email;
        public String name;

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

    public AnonymousIdentity(Builder builder) {
        this.email = builder.email;
        this.name = builder.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AnonymousIdentity.class != obj.getClass()) {
            return false;
        }
        AnonymousIdentity anonymousIdentity = (AnonymousIdentity) obj;
        String str = this.email;
        if (str != null) {
            if (!str.equals(anonymousIdentity.email)) {
                return false;
            }
        } else if (anonymousIdentity.email != null) {
            return false;
        }
        String str2 = this.name;
        String str3 = anonymousIdentity.name;
        return str2 != null ? str2.equals(str3) : str3 == null;
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
        String str = this.email;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.name;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setSdkGuid(String str) {
        this.sdkGuid = str;
    }
}
