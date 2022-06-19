package com.j256.ormlite.dao;

import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/dao/DatabaseResultsMapper.class */
public interface DatabaseResultsMapper<T> {
    T mapRow(DatabaseResults databaseResults) throws SQLException;
}
