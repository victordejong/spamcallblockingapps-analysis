package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Bucket.class */
public class Bucket implements Serializable {
    private static final long serialVersionUID = -8646831898339939580L;
    private Date creationDate;
    private String name;
    private Owner owner;

    public Bucket() {
        this.name = null;
        this.owner = null;
        this.creationDate = null;
    }

    public Bucket(String str) {
        this.name = null;
        this.owner = null;
        this.creationDate = null;
        this.name = str;
    }

    public Date getCreationDate() {
        return this.creationDate;
    }

    public String getName() {
        return this.name;
    }

    public Owner getOwner() {
        return this.owner;
    }

    public void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public String toString() {
        return "S3Bucket [name=" + getName() + ", creationDate=" + getCreationDate() + ", owner=" + getOwner() + "]";
    }
}
