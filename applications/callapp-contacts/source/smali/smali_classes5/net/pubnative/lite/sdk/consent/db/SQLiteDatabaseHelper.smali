.class public abstract Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 22\u00020\u0001:\u00012B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ/\u0010\r\u001a\u00020\t2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000f2\u001b\u0008\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0013J\u0012\u0010\u0014\u001a\u00020\u000c2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fJ\u000e\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017J;\u0010\u0015\u001a\u00020\u000c\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00172\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\u0008\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0013J\u0017\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0000\u00a2\u0006\u0002\u0008\u001bJ2\u0010\u001c\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001d\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00172\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u000f2\u0006\u0010\u001f\u001a\u00020\u0005JC\u0010 \u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001d\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00172\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\u0008\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0013J.\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001d\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00172\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u000f2\u0006\u0010\"\u001a\u00020#H\u0002J%\u0010$\u001a\u00020%2\u001b\u0008\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0013H\u0002J\u000e\u0010&\u001a\u00020\'2\u0006\u0010\u0016\u001a\u00020\u0017J\u0017\u0010(\u001a\u00020\'2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0000\u00a2\u0006\u0002\u0008)J\u000e\u0010*\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017J+\u0010*\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00172\u001b\u0008\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0013J_\u0010*\u001a\u00020\u000c\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00172\"\u0010+\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170,j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0017`-2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\u0008\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0013J\u0017\u0010.\u001a\u00020\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0000\u00a2\u0006\u0002\u0008/J\u0014\u00100\u001a\u0002012\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u000fH\u0002\u00a8\u00063"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "context",
        "Landroid/content/Context;",
        "name",
        "",
        "factory",
        "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;",
        "version",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V",
        "closeDatabase",
        "",
        "count",
        "tableClass",
        "Lkotlin/reflect/KClass;",
        "where",
        "Lkotlin/Function1;",
        "Lnet/pubnative/lite/sdk/consent/db/Where;",
        "Lkotlin/ExtensionFunctionType;",
        "createTable",
        "delete",
        "obj",
        "",
        "T",
        "kClass",
        "deleteObject",
        "deleteObject$hybid_sdk_voyager_release",
        "execRawSQL",
        "",
        "objClass",
        "sqlString",
        "get",
        "getCursorObjects",
        "c",
        "Landroid/database/Cursor;",
        "getWhereStatement",
        "Lnet/pubnative/lite/sdk/consent/db/Statements;",
        "insert",
        "",
        "insertObj",
        "insertObj$hybid_sdk_voyager_release",
        "update",
        "updateFieldMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "updateObject",
        "updateObject$hybid_sdk_voyager_release",
        "validateValidClass",
        "Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;",
        "Companion",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final AUTO_INCREMENT:Ljava/lang/String;

.field private static final COUNT_SQL_QUERY:Ljava/lang/String;

.field private static final CREATE_TABLE:Ljava/lang/String;

.field public static final Companion:Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion;

.field private static final IF_EXIST:Ljava/lang/String;

.field private static final IF_NOT_EXIST:Ljava/lang/String;

.field private static final NOT_NULL:Ljava/lang/String;

.field private static final ORDER_BY:Ljava/lang/String;

.field private static final PRIMARY_KEY:Ljava/lang/String;

.field private static final SPACE:Ljava/lang/String;

.field private static final UNIQUE:Ljava/lang/String;

.field private static final WHERE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->Companion:Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion;

    const-string v0, " "

    .line 40
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->SPACE:Ljava/lang/String;

    const-string v0, "CREATE TABLE"

    .line 42
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->CREATE_TABLE:Ljava/lang/String;

    const-string v0, "IF NOT EXISTS"

    .line 43
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->IF_NOT_EXIST:Ljava/lang/String;

    const-string v0, "IF EXISTS"

    .line 44
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->IF_EXIST:Ljava/lang/String;

    const-string v0, "not null"

    .line 45
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->NOT_NULL:Ljava/lang/String;

    const-string v0, "primary key"

    .line 46
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->PRIMARY_KEY:Ljava/lang/String;

    const-string v0, "autoincrement"

    .line 47
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->AUTO_INCREMENT:Ljava/lang/String;

    const-string v0, "unique"

    .line 48
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->UNIQUE:Ljava/lang/String;

    const-string v0, "WHERE"

    .line 50
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->WHERE:Ljava/lang/String;

    const-string v0, "ORDER BY"

    .line 51
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->ORDER_BY:Ljava/lang/String;

    const-string v0, "SELECT 1 FROM "

    .line 52
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->COUNT_SQL_QUERY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static final synthetic access$getAUTO_INCREMENT$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->AUTO_INCREMENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCOUNT_SQL_QUERY$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->COUNT_SQL_QUERY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCREATE_TABLE$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->CREATE_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getIF_EXIST$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->IF_EXIST:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getIF_NOT_EXIST$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->IF_NOT_EXIST:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNOT_NULL$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->NOT_NULL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getORDER_BY$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->ORDER_BY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPRIMARY_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->PRIMARY_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSPACE$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->SPACE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUNIQUE$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->UNIQUE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getWHERE$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->WHERE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic count$default(Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 318
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->count(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: count"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic delete$default(Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 242
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->delete(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic execRawSQL$default(Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;Lkotlin/reflect/c;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 342
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->execRawSQL(Lkotlin/reflect/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: execRawSQL"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic get$default(Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 297
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->get(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: get"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getCursorObjects(Lkotlin/reflect/c;Landroid/database/Cursor;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 377
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 378
    invoke-static {p1}, Lkotlin/reflect/full/b;->a(Lkotlin/reflect/c;)Lkotlin/reflect/KFunction;

    move-result-object v1

    .line 379
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    .line 381
    invoke-static {p1}, Lkotlin/reflect/full/b;->b(Lkotlin/reflect/c;)Ljava/util/Collection;

    move-result-object v3

    .line 382
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/m;

    .line 383
    move-object v5, v4

    check-cast v5, Lkotlin/reflect/KProperty;

    invoke-static {v5}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v8, v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v5, v9

    instance-of v11, v10, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move-object v10, v7

    :goto_3
    instance-of v5, v10, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez v5, :cond_4

    move-object v10, v7

    :cond_4
    check-cast v10, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v10, :cond_5

    invoke-interface {v10}, Lnet/pubnative/lite/sdk/consent/db/Schema;->field()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v7

    :goto_4
    const/4 v8, 0x1

    if-eqz v5, :cond_6

    .line 384
    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_1

    .line 385
    invoke-interface {v4}, Lkotlin/reflect/m;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v9

    invoke-static {v9}, Lkotlin/reflect/jvm/a;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/c;

    move-result-object v9

    .line 386
    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto/16 :goto_6

    .line 387
    :cond_7
    const-class v10, Ljava/util/Date;

    invoke-static {v10}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v6, Ljava/util/Date;

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v7, v6

    check-cast v7, Ljava/io/Serializable;

    goto/16 :goto_6

    .line 388
    :cond_8
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v8, :cond_9

    const/4 v6, 0x1

    :cond_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto/16 :goto_6

    .line 389
    :cond_a
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto/16 :goto_6

    .line 390
    :cond_b
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto/16 :goto_6

    .line 391
    :cond_c
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto/16 :goto_6

    .line 392
    :cond_d
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto/16 :goto_6

    .line 393
    :cond_e
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto :goto_6

    .line 394
    :cond_f
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto :goto_6

    .line 395
    :cond_10
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto :goto_6

    .line 396
    :cond_11
    const-class v6, [B

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/io/Serializable;

    goto :goto_6

    .line 397
    :cond_12
    const-class v6, Ljava/math/BigDecimal;

    invoke-static {v6}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    new-instance v6, Ljava/math/BigDecimal;

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v7, v6

    check-cast v7, Ljava/io/Serializable;

    .line 400
    :cond_13
    :goto_6
    move-object v5, v1

    check-cast v5, Lkotlin/reflect/KCallable;

    invoke-interface {v4}, Lkotlin/reflect/m;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/reflect/full/a;->a(Lkotlin/reflect/KCallable;Ljava/lang/String;)Lkotlin/reflect/k;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 402
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 406
    :cond_14
    check-cast v2, Ljava/util/Map;

    invoke-interface {v1, v2}, Lkotlin/reflect/KFunction;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    return-object v0
.end method

.method private final getWhereStatement(Lkotlin/jvm/functions/Function1;)Lnet/pubnative/lite/sdk/consent/db/Statements;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            ">;)",
            "Lnet/pubnative/lite/sdk/consent/db/Statements;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 444
    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/consent/db/Where;-><init>()V

    .line 445
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/Where;->getClauseString$hybid_sdk_voyager_release()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/Where;->getArgs$hybid_sdk_voyager_release()[Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/Where;->getOrder$hybid_sdk_voyager_release()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v1, p1

    .line 450
    :goto_0
    new-instance v2, Lnet/pubnative/lite/sdk/consent/db/Statements;

    invoke-direct {v2, v0, v1, p1}, Lnet/pubnative/lite/sdk/consent/db/Statements;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic getWhereStatement$default(Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Statements;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWhereStatement(Lkotlin/jvm/functions/Function1;)Lnet/pubnative/lite/sdk/consent/db/Statements;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getWhereStatement"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic update$default(Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->update(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: update"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic update$default(Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;Ljava/util/HashMap;Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 223
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->update(Ljava/util/HashMap;Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: update"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "*>;)",
            "Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;"
        }
    .end annotation

    .line 418
    invoke-interface {p1}, Lkotlin/reflect/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    invoke-static {p1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getTableName(Lkotlin/reflect/c;)Ljava/lang/String;

    move-result-object v0

    .line 422
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 425
    invoke-static {p1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseField(Lkotlin/reflect/c;)Ljava/util/HashMap;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    invoke-direct {v1, v0, p1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v1

    .line 427
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object Must Be Contain Field(s)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 423
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object Must Be Contain Table Name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 419
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object Must Be Instance of Data Class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public final closeDatabase()V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "writableDatabase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 362
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "readableDatabase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return-void
.end method

.method public final count(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            ">;)I"
        }
    .end annotation

    const-string v0, "tableClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 321
    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWhereStatement(Lkotlin/jvm/functions/Function1;)Lnet/pubnative/lite/sdk/consent/db/Statements;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component2()[Ljava/lang/String;

    move-result-object p2

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->COUNT_SQL_QUERY:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 325
    sget-object p1, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->SPACE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    sget-object v3, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->WHERE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "c"

    .line 331
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 332
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2
.end method

.method public final createTable(Lkotlin/reflect/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "tableClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component2()Ljava/util/HashMap;

    move-result-object p1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    sget-object v2, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v2, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-object v3, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->IF_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "fieldMap.keys"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 487
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_0
    check-cast v4, Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/m;

    if-eqz v6, :cond_6

    .line 72
    invoke-interface {v6}, Lkotlin/reflect/m;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/a;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/c;

    move-result-object v7

    invoke-static {v7}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldType(Lkotlin/reflect/c;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_6

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v4, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v6}, Lkotlin/reflect/m;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/a;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/c;

    move-result-object v7

    invoke-static {v7}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldType(Lkotlin/reflect/c;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v6}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->isDataBaseFieldGeneratedId(Lkotlin/reflect/m;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    sget-object v7, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->PRIMARY_KEY:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    invoke-static {v6}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->isDataBaseFieldAutoIncrease(Lkotlin/reflect/m;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    sget-object v7, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->AUTO_INCREMENT:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    invoke-static {v6}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->isDataBaseFieldNonNullable(Lkotlin/reflect/m;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    sget-object v7, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->NOT_NULL:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    invoke-static {v6}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->isDataBaseFieldUnique(Lkotlin/reflect/m;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 90
    sget-object v6, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->UNIQUE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_5
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v4, v8

    if-eq v3, v4, :cond_6

    const-string v3, ","

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move v3, v5

    goto/16 :goto_0

    :cond_7
    const-string p1, ");"

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final delete(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 257
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->deleteObject$hybid_sdk_voyager_release(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->deleteObject$hybid_sdk_voyager_release(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final delete(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWhereStatement(Lkotlin/jvm/functions/Function1;)Lnet/pubnative/lite/sdk/consent/db/Statements;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component2()[Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final deleteObject$hybid_sdk_voyager_release(Ljava/lang/Object;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component2()Ljava/util/HashMap;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/m;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    check-cast v5, Lkotlin/reflect/KProperty;

    invoke-static {v5}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v5, v8

    instance-of v10, v9, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-object v9, v4

    :goto_1
    instance-of v5, v9, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez v5, :cond_4

    move-object v9, v4

    :cond_4
    check-cast v9, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v9, :cond_1

    .line 279
    invoke-interface {v9}, Lnet/pubnative/lite/sdk/consent/db/Schema;->generatedId()Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 280
    invoke-interface {v9}, Lnet/pubnative/lite/sdk/consent/db/Schema;->field()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "key"

    .line 281
    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lnet/pubnative/lite/sdk/consent/db/Schema;->field()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->getEqual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    .line 283
    invoke-static {p1, v3}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    move-object v4, v0

    goto :goto_2

    :cond_5
    move-object v2, v4

    .line 288
    :goto_2
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final execRawSQL(Lkotlin/reflect/c;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sqlString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 344
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    return-object v0

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component2()Ljava/util/HashMap;

    .line 348
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string v0, "c"

    .line 349
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getCursorObjects(Lkotlin/reflect/c;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 350
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public final get(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component2()Ljava/util/HashMap;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_5

    .line 301
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    const-string v8, "fieldMap.keys"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    const-string v8, "$this$elementAt"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_0

    .line 1086
    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 1087
    :cond_0
    new-instance v9, Lkotlin/a/x$b;

    invoke-direct {v9, v6}, Lkotlin/a/x$b;-><init>(I)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const-string v10, "$this$elementAtOrElse"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultValue"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_2

    .line 1107
    check-cast v7, Ljava/util/List;

    if-ltz v6, :cond_1

    invoke-static {v7}, Lkotlin/a/n;->a(Ljava/util/List;)I

    move-result v8

    if-gt v6, v8, :cond_1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_2
    if-ltz v6, :cond_4

    .line 1110
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    .line 1112
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1113
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    if-ne v6, v8, :cond_3

    move-object v7, v10

    goto :goto_2

    :cond_3
    move v8, v11

    goto :goto_1

    .line 1117
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 301
    :goto_2
    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 304
    :cond_5
    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWhereStatement(Lkotlin/jvm/functions/Function1;)Lnet/pubnative/lite/sdk/consent/db/Statements;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component2()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component3()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v4

    move-object v4, v0

    .line 306
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string v0, "c"

    .line 307
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getCursorObjects(Lkotlin/reflect/c;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 308
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public final insert(Ljava/lang/Object;)J
    .locals 2

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->insertObj$hybid_sdk_voyager_release(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 115
    :cond_1
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->insertObj$hybid_sdk_voyager_release(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final insertObj$hybid_sdk_voyager_release(Ljava/lang/Object;)J
    .locals 11

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component2()Ljava/util/HashMap;

    move-result-object v0

    .line 131
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 132
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/m;

    if-eqz v6, :cond_3

    check-cast v6, Lkotlin/reflect/KProperty;

    invoke-static {v6}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    instance-of v10, v9, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v5

    :goto_2
    instance-of v6, v9, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v9

    :goto_3
    check-cast v5, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lnet/pubnative/lite/sdk/consent/db/Schema;->generatedId()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    goto :goto_0

    :cond_5
    const-string v5, "key"

    .line 136
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 138
    invoke-static {v2, v4, v5}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelperKt;->access$put(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_6
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final update(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->updateObject$hybid_sdk_voyager_release(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->updateObject$hybid_sdk_voyager_release(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final update(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            ">;)V"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    const-class v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/full/b;->a(Lkotlin/reflect/c;Lkotlin/reflect/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component2()Ljava/util/HashMap;

    move-result-object v0

    .line 204
    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWhereStatement(Lkotlin/jvm/functions/Function1;)Lnet/pubnative/lite/sdk/consent/db/Statements;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component2()[Ljava/lang/String;

    move-result-object p2

    .line 206
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 207
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "key"

    .line 208
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 210
    invoke-static {v3, v4, v5}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelperKt;->access$put(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, v1, v3, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final update(Ljava/util/HashMap;Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/reflect/c<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            "Lnet/pubnative/lite/sdk/consent/db/Where;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateFieldMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-direct {p0, p3}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWhereStatement(Lkotlin/jvm/functions/Function1;)Lnet/pubnative/lite/sdk/consent/db/Statements;

    move-result-object p3

    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/consent/db/Statements;->component2()[Ljava/lang/String;

    move-result-object p3

    .line 226
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "key"

    .line 230
    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelperKt;->access$put(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final updateObject$hybid_sdk_voyager_release(Ljava/lang/Object;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->validateValidClass(Lkotlin/reflect/c;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->component2()Ljava/util/HashMap;

    move-result-object v0

    .line 173
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 174
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/m;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    check-cast v8, Lkotlin/reflect/KProperty;

    invoke-static {v8}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    aget-object v12, v8, v11

    instance-of v13, v12, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object v12, v4

    :goto_2
    instance-of v8, v12, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez v8, :cond_4

    move-object v12, v4

    :cond_4
    check-cast v12, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v12, :cond_5

    .line 176
    invoke-interface {v12}, Lnet/pubnative/lite/sdk/consent/db/Schema;->generatedId()Z

    move-result v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    const-string v10, "key"

    if-eqz v8, :cond_7

    if-eqz v12, :cond_6

    .line 177
    invoke-interface {v12}, Lnet/pubnative/lite/sdk/consent/db/Schema;->field()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v4

    :goto_4
    if-eqz v8, :cond_1

    .line 178
    invoke-static {v7, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Lnet/pubnative/lite/sdk/consent/db/Schema;->field()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    invoke-virtual {v6}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->getEqual()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 180
    invoke-static {p1, v7}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    goto :goto_0

    .line 184
    :cond_7
    invoke-static {v7, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;->getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 186
    invoke-static {v2, v7, v8}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelperKt;->access$put(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 189
    :cond_8
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
