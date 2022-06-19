.class public final Lnet/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a$\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u0004H\u0000\u001a\u0010\u0010\u0005\u001a\u00020\u0002*\u0006\u0012\u0002\u0008\u00030\u0004H\u0000\u001a\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0000\u001a\u0010\u0010\t\u001a\u00020\u0002*\u0006\u0012\u0002\u0008\u00030\u0004H\u0000\u001a\u0014\u0010\n\u001a\u00020\u000b*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003H\u0000\u001a\u0014\u0010\u000c\u001a\u00020\u000b*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003H\u0000\u001a\u0014\u0010\r\u001a\u00020\u000b*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003H\u0000\u001a\u0014\u0010\u000e\u001a\u00020\u000b*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003H\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "getDataBaseField",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/reflect/KProperty1;",
        "Lkotlin/reflect/KClass;",
        "getDataBaseFieldType",
        "getDataBaseFieldValue",
        "",
        "key",
        "getTableName",
        "isDataBaseFieldAutoIncrease",
        "",
        "isDataBaseFieldGeneratedId",
        "isDataBaseFieldNonNullable",
        "isDataBaseFieldUnique",
        "hybid.sdk.voyager_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final getDataBaseField(Lkotlin/reflect/c;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "*>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/m<",
            "**>;>;"
        }
    .end annotation

    const-string v0, "$this$getDataBaseField"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-static {p0}, Lkotlin/reflect/full/b;->b(Lkotlin/reflect/c;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/m;

    .line 37
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/KProperty;

    invoke-static {v2}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    instance-of v7, v6, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_2
    instance-of v2, v6, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v6

    :goto_3
    check-cast v3, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v3, :cond_0

    .line 39
    invoke-interface {v3}, Lnet/pubnative/lite/sdk/consent/db/Schema;->field()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static final getDataBaseFieldType(Lkotlin/reflect/c;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$getDataBaseFieldType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEXT"

    return-object p0

    .line 108
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BIGINT"

    if-eqz v0, :cond_1

    return-object v1

    .line 109
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "BOOLEAN"

    return-object p0

    .line 110
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "CHAR"

    return-object p0

    .line 111
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "TINYINT"

    return-object p0

    .line 112
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "SMALLINT"

    return-object p0

    .line 113
    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "INTEGER"

    return-object p0

    .line 114
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    .line 115
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "FLOAT"

    return-object p0

    .line 116
    :cond_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "DOUBLE PRECISION"

    return-object p0

    .line 117
    :cond_9
    const-class v0, [B

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "BLOB"

    return-object p0

    .line 118
    :cond_a
    const-class v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "NUMERIC"

    return-object p0

    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public static final getDataBaseFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    const-string v0, "$this$getDataBaseFieldValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/b;->b(Lkotlin/reflect/c;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/m;

    .line 98
    check-cast v4, Lkotlin/reflect/KProperty;

    invoke-static {v4}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    instance-of v8, v7, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v3

    :goto_1
    instance-of v4, v7, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez v4, :cond_3

    move-object v7, v3

    :cond_3
    check-cast v7, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Lnet/pubnative/lite/sdk/consent/db/Schema;->field()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    invoke-static {v4, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_5
    move-object v1, v3

    .line 97
    :goto_3
    check-cast v1, Lkotlin/reflect/m;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlin/reflect/m;->a()Lkotlin/reflect/m$a;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 99
    invoke-interface {p1, v0}, Lkotlin/reflect/m$a;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v3
.end method

.method public static final getTableName(Lkotlin/reflect/c;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$getTableName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast p0, Lkotlin/reflect/b;

    .line 122
    invoke-interface {p0}, Lkotlin/reflect/b;->getAnnotations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 123
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 122
    instance-of v1, v1, Lnet/pubnative/lite/sdk/consent/db/Database;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 124
    :goto_0
    check-cast v0, Lnet/pubnative/lite/sdk/consent/db/Database;

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 27
    check-cast v0, Lnet/pubnative/lite/sdk/consent/db/Database;

    if-eqz v0, :cond_2

    .line 28
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/consent/db/Database;->tableName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    const-string p0, ""

    :cond_3
    return-object p0
.end method

.method public static final isDataBaseFieldAutoIncrease(Lkotlin/reflect/m;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/m<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "$this$isDataBaseFieldAutoIncrease"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast p0, Lkotlin/reflect/KProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    instance-of v5, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_1
    instance-of p0, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    check-cast v1, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v1}, Lnet/pubnative/lite/sdk/consent/db/Schema;->autoIncrease()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public static final isDataBaseFieldGeneratedId(Lkotlin/reflect/m;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/m<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "$this$isDataBaseFieldGeneratedId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    check-cast p0, Lkotlin/reflect/KProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    instance-of v5, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_1
    instance-of p0, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    check-cast v1, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v1, :cond_3

    .line 51
    invoke-interface {v1}, Lnet/pubnative/lite/sdk/consent/db/Schema;->generatedId()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public static final isDataBaseFieldNonNullable(Lkotlin/reflect/m;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/m<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "$this$isDataBaseFieldNonNullable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    check-cast p0, Lkotlin/reflect/KProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    instance-of v5, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_1
    instance-of p0, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    check-cast v1, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v1, :cond_3

    .line 63
    invoke-interface {v1}, Lnet/pubnative/lite/sdk/consent/db/Schema;->nonNullable()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public static final isDataBaseFieldUnique(Lkotlin/reflect/m;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/m<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "$this$isDataBaseFieldUnique"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    check-cast p0, Lkotlin/reflect/KProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/b;->a(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    instance-of v5, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_1
    instance-of p0, v4, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    check-cast v1, Lnet/pubnative/lite/sdk/consent/db/Schema;

    if-eqz v1, :cond_3

    .line 87
    invoke-interface {v1}, Lnet/pubnative/lite/sdk/consent/db/Schema;->unique()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method
