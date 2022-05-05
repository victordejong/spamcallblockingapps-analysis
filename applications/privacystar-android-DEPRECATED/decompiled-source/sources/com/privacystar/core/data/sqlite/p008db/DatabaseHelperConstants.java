package com.privacystar.core.data.sqlite.p008db;
/* renamed from: com.privacystar.core.data.sqlite.db.DatabaseHelperConstants */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/DatabaseHelperConstants.class */
public final class DatabaseHelperConstants {
    public static final String ARG_WILDCARD = "%";

    /* renamed from: AS */
    public static final String f267AS = " AS ";
    public static final String AUTOINCREMENT = " AUTOINCREMENT";

    /* renamed from: CM */
    public static final char f268CM = ',';
    public static final String COLLATE = " COLLATE";
    public static final String CONSTRAINT = " CONSTRAINT ";

    /* renamed from: CP */
    public static final char f269CP = ')';
    public static final String CREATE_TABLE = "CREATE TABLE ";
    public static final String CURRENT_TIMESTAMP = " CURRENT_TIMESTAMP";
    public static final String DATETIME_TYPE = " DATETIME";
    public static final String DEFAULT = " DEFAULT";
    public static final String DROP_TABLE = "DROP TABLE ";
    public static final String DROP_TABLE_EXISTS = "DROP TABLE IF EXISTS ";
    public static final String EMPTY_STRING = " ''";
    public static final String INSERT = "INSERT into ";
    public static final String INTEGER_TYPE = " INTEGER";
    public static final String INT_TYPE = " INT";
    public static final String NOCASE = " NOCASE";

    /* renamed from: OP */
    public static final char f270OP = '(';
    public static final String PRIMARY_KEY = " PRIMARY KEY";
    public static final String REPLACE = "REPLACE into ";

    /* renamed from: SC */
    public static final char f271SC = ';';
    public static final String SELECT = " SELECT ";
    public static final String SELECT_GREATER = "SELECT %s FROM %s WHERE %s > ?";
    public static final String SELECT_LESSER = "SELECT %s FROM %s WHERE %s < ?";
    public static final String SELECT_LIKE = "SELECT %s FROM %s WHERE %s LIKE ?";
    public static final String SELECT_STANDARD = "SELECT %s FROM %s WHERE %s = ?";
    public static final String SMALL_INT_TYPE = " SMALLINT";

    /* renamed from: SP */
    public static final char f272SP = ' ';
    public static final String TEXT_TYPE = " TEXT";
    public static final String UNIQUE = " UNIQUE";
    public static final String U_SELECT = " UNION SELECT ";

    /* renamed from: WC */
    public static final char f273WC = '*';
    public static final String WILDCARD = "*";

    public static String VARCHAR(int i) {
        return " VARCHAR(" + Integer.toString(i) + ")";
    }
}
