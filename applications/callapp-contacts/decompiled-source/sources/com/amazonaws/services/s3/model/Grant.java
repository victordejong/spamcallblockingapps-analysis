package com.amazonaws.services.s3.model;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Grant.class */
public class Grant {
    private Grantee grantee;
    private Permission permission;

    public Grant(Grantee grantee, Permission permission) {
        this.grantee = null;
        this.permission = null;
        this.grantee = grantee;
        this.permission = permission;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Grant grant = (Grant) obj;
        Grantee grantee = this.grantee;
        if (grantee == null) {
            if (grant.grantee != null) {
                return false;
            }
        } else if (!grantee.equals(grant.grantee)) {
            return false;
        }
        return this.permission == grant.permission;
    }

    public Grantee getGrantee() {
        return this.grantee;
    }

    public Permission getPermission() {
        return this.permission;
    }

    public int hashCode() {
        Grantee grantee = this.grantee;
        int i = 0;
        int hashCode = grantee == null ? 0 : grantee.hashCode();
        Permission permission = this.permission;
        if (permission != null) {
            i = permission.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public String toString() {
        return "Grant [grantee=" + this.grantee + ", permission=" + this.permission + "]";
    }
}
