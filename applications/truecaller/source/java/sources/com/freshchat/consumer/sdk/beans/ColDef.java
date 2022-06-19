package com.freshchat.consumer.sdk.beans;

import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/ColDef.class */
public class ColDef {
    private String columnConstraint;
    private String columnName;
    private String columnType;
    private boolean nullable;
    private int versionNumber;

    public ColDef(String str, String str2, boolean z, int i) {
        this.columnConstraint = "";
        this.columnName = str;
        this.columnType = str2;
        this.nullable = z;
        this.versionNumber = i;
    }

    public ColDef(String str, String str2, boolean z, int i, String str3) {
        this.columnConstraint = "";
        this.columnName = str;
        this.columnType = str2;
        this.nullable = z;
        this.versionNumber = i;
        this.columnConstraint = str3;
    }

    public String getColumnConstraint() {
        return this.columnConstraint;
    }

    public String getColumnDefForQuery() {
        StringBuilder sb = new StringBuilder();
        sb.append(getColumnName());
        sb.append(StringConstant.SPACE);
        sb.append(getColumnType());
        sb.append(StringConstant.SPACE);
        sb.append(isNullable() ? "" : " NOT NULL ");
        sb.append(getColumnConstraint());
        return sb.toString();
    }

    public String getColumnName() {
        return this.columnName;
    }

    public String getColumnType() {
        return this.columnType;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }

    public boolean isNullable() {
        return this.nullable;
    }
}
