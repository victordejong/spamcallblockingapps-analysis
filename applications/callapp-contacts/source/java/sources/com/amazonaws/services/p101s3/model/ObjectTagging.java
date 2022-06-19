package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.ObjectTagging */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ObjectTagging.class */
public class ObjectTagging implements Serializable {
    private List<Tag> tagSet;

    public ObjectTagging(List<Tag> list) {
        this.tagSet = list;
    }

    private ObjectTagging withTagSet(List<Tag> list) {
        this.tagSet = list;
        return this;
    }

    public List<Tag> getTagSet() {
        return this.tagSet;
    }

    public void setTagSet(List<Tag> list) {
        this.tagSet = list;
    }
}
