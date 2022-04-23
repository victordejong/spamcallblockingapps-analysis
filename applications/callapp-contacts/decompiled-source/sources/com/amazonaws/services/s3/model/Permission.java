package com.amazonaws.services.s3.model;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Permission.class */
public enum Permission {
    FullControl("FULL_CONTROL", "x-amz-grant-full-control"),
    Read("READ", "x-amz-grant-read"),
    Write("WRITE", "x-amz-grant-write"),
    ReadAcp("READ_ACP", "x-amz-grant-read-acp"),
    WriteAcp("WRITE_ACP", "x-amz-grant-write-acp");
    
    private String headerName;
    private String permissionString;

    Permission(String str, String str2) {
        this.permissionString = str;
        this.headerName = str2;
    }

    public static Permission parsePermission(String str) {
        Permission[] values;
        for (Permission permission : values()) {
            if (permission.permissionString.equals(str)) {
                return permission;
            }
        }
        return null;
    }

    public final String getHeaderName() {
        return this.headerName;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.permissionString;
    }
}
