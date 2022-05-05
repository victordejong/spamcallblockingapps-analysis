package com.amazonaws.services.p017s3.model;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.Owner */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Owner.class */
public class Owner implements Serializable {
    public String displayName;

    /* renamed from: id */
    public String f817id;

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
        boolean z = false;
        if (str.equals(str3)) {
            z = false;
            if (str2.equals(str4)) {
                z = true;
            }
        }
        return z;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getId() {
        return this.f817id;
    }

    public int hashCode() {
        String str = this.f817id;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setId(String str) {
        this.f817id = str;
    }

    public String toString() {
        return "S3Owner [name=" + getDisplayName() + ",id=" + getId() + "]";
    }
}
