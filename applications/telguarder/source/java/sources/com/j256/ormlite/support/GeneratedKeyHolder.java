package com.j256.ormlite.support;

import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/support/GeneratedKeyHolder.class */
public interface GeneratedKeyHolder {
    void addKey(Number number) throws SQLException;

    String getColumnName();
}
