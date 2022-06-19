package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.EmailAddressGrantee */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EmailAddressGrantee.class */
public class EmailAddressGrantee implements Grantee {
    private String emailAddress = null;

    public EmailAddressGrantee(String str) {
        setIdentifier(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EmailAddressGrantee emailAddressGrantee = (EmailAddressGrantee) obj;
        String str = this.emailAddress;
        return str == null ? emailAddressGrantee.emailAddress == null : str.equals(emailAddressGrantee.emailAddress);
    }

    @Override // com.amazonaws.services.p101s3.model.Grantee
    public String getIdentifier() {
        return this.emailAddress;
    }

    @Override // com.amazonaws.services.p101s3.model.Grantee
    public String getTypeIdentifier() {
        return "emailAddress";
    }

    public int hashCode() {
        String str = this.emailAddress;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    @Override // com.amazonaws.services.p101s3.model.Grantee
    public void setIdentifier(String str) {
        this.emailAddress = str;
    }

    public String toString() {
        return this.emailAddress;
    }
}
