package io.realm;
/* loaded from: classes2-dex2jar.jar:io/realm/ObjectChangeSet.class */
public interface ObjectChangeSet {
    String[] getChangedFields();

    boolean isDeleted();

    boolean isFieldChanged(String str);
}
