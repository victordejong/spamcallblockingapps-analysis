package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.internal.S3RequesterChargedResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
/* renamed from: com.amazonaws.services.s3.model.AccessControlList */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/AccessControlList.class */
public class AccessControlList implements S3RequesterChargedResult, Serializable {
    private static final long serialVersionUID = 8095040648034788376L;
    private List<Grant> grantList;
    private Set<Grant> grantSet;
    private boolean isRequesterCharged;
    private Owner owner = null;

    private void checkState() {
        if (this.grantSet == null || this.grantList == null) {
            return;
        }
        throw new IllegalStateException("Both grant set and grant list cannot be null");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AccessControlList accessControlList = (AccessControlList) obj;
        Owner owner = this.owner;
        if (owner == null) {
            if (accessControlList.owner != null) {
                return false;
            }
        } else if (!owner.equals(accessControlList.owner)) {
            return false;
        }
        Set<Grant> set = this.grantSet;
        if (set == null) {
            if (accessControlList.grantSet != null) {
                return false;
            }
        } else if (!set.equals(accessControlList.grantSet)) {
            return false;
        }
        List<Grant> list = this.grantList;
        return list == null ? accessControlList.grantList == null : list.equals(accessControlList.grantList);
    }

    @Deprecated
    public Set<Grant> getGrants() {
        checkState();
        if (this.grantSet == null) {
            if (this.grantList == null) {
                this.grantSet = new HashSet();
            } else {
                this.grantSet = new HashSet(this.grantList);
                this.grantList = null;
            }
        }
        return this.grantSet;
    }

    public List<Grant> getGrantsAsList() {
        checkState();
        if (this.grantList == null) {
            if (this.grantSet == null) {
                this.grantList = new LinkedList();
            } else {
                this.grantList = new LinkedList(this.grantSet);
                this.grantSet = null;
            }
        }
        return this.grantList;
    }

    public Owner getOwner() {
        return this.owner;
    }

    public void grantAllPermissions(Grant... grantArr) {
        for (Grant grant : grantArr) {
            grantPermission(grant.getGrantee(), grant.getPermission());
        }
    }

    public void grantPermission(Grantee grantee, Permission permission) {
        getGrantsAsList().add(new Grant(grantee, permission));
    }

    public int hashCode() {
        Owner owner = this.owner;
        int i = 0;
        int hashCode = owner == null ? 0 : owner.hashCode();
        Set<Grant> set = this.grantSet;
        int hashCode2 = set == null ? 0 : set.hashCode();
        List<Grant> list = this.grantList;
        if (list != null) {
            i = list.hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public boolean isRequesterCharged() {
        return this.isRequesterCharged;
    }

    public void revokeAllPermissions(Grantee grantee) {
        ArrayList arrayList = new ArrayList();
        for (Grant grant : getGrantsAsList()) {
            if (grant.getGrantee().equals(grantee)) {
                arrayList.add(grant);
            }
        }
        this.grantList.removeAll(arrayList);
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    @Override // com.amazonaws.services.p101s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z) {
        this.isRequesterCharged = z;
    }

    public String toString() {
        return "AccessControlList [owner=" + this.owner + ", grants=" + getGrantsAsList() + "]";
    }
}
