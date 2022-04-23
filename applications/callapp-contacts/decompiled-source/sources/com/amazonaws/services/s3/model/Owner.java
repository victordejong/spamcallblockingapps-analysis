package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Owner.class */
public class Owner implements Serializable {
    private static final long serialVersionUID = -8916731456944569115L;
    private String displayName;
    private String id;

    public Owner() {
    }

    public Owner(String str, String str2) {
        this.id = str;
        this.displayName = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Owner)) {
            return false;
        }
        Owner owner = (Owner) obj;
        String id = owner.getId();
        String displayName = owner.getDisplayName();
        String id2 = getId();
        String displayName2 = getDisplayName();
        String str = id;
        if (id == null) {
            str = "";
        }
        String str2 = displayName;
        if (displayName == null) {
            str2 = "";
        }
        String str3 = id2;
        if (id2 == null) {
            str3 = "";
        }
        String str4 = displayName2;
        if (displayName2 == null) {
            str4 = "";
        }
        return str.equals(str3) && str2.equals(str4);
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getId() {
        return this.id;
    }

    public int hashCode() {
        String str = this.id;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String toString() {
        return "S3Owner [name=" + getDisplayName() + ",id=" + getId() + "]";
    }
}
