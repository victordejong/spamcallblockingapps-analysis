.class public Lcom/j256/ormlite/table/DatabaseTableConfig;
.super Ljava/lang/Object;
.source "DatabaseTableConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;


# instance fields
.field private dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private fieldConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;"
        }
    .end annotation
.end field

.field private fieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private schemaName:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "javax.persistence.Entity"

    .line 38
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.j256.ormlite.misc.JavaxPersistenceImpl"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    sput-object v0, Lcom/j256/ormlite/table/DatabaseTableConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/j256/ormlite/table/DatabaseTableConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 85
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 86
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->schemaName:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-static {p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractSchemaName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 76
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->schemaName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->schemaName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    return-void
.end method

.method private convertFieldConfigs(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    const/4 v2, 0x0

    .line 259
    iget-object v3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    :goto_1
    if-eqz v3, :cond_1

    .line 262
    :try_start_0
    invoke-virtual {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 268
    new-instance v8, Lcom/j256/ormlite/field/FieldType;

    iget-object v7, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/j256/ormlite/field/FieldType;-><init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V

    goto :goto_2

    .line 259
    :catch_0
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 277
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find declared field with name \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/j256/ormlite/field/FieldType;

    return-object p1

    .line 280
    :cond_4
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No fields were configured for class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static extractFieldTypes(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 240
    invoke-static {p0, p2, v5, p1}, Lcom/j256/ormlite/field/FieldType;->createFieldType(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 242
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 246
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/j256/ormlite/field/FieldType;

    return-object p0

    .line 247
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No fields have a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/j256/ormlite/field/DatabaseField;

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " annotation in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractSchemaName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 227
    const-class v0, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/table/DatabaseTable;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {p0}, Lcom/j256/ormlite/table/DatabaseTable;->schemaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    invoke-interface {p0}, Lcom/j256/ormlite/table/DatabaseTable;->schemaName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    const-class v0, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTable;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 209
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 211
    sget-object v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    if-eqz v1, :cond_1

    .line 212
    invoke-interface {v1, p1}, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;->getEntityName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    if-nez p0, :cond_2

    .line 218
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/j256/ormlite/db/DatabaseType;->downCaseString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static fromClass(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractSchemaName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-interface {p0, v0}, Lcom/j256/ormlite/db/DatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {p0, v1}, Lcom/j256/ormlite/db/DatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v6, v0

    move-object v5, v1

    .line 198
    new-instance v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 199
    invoke-static {p0, p1, v6}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    return-object v0
.end method

.method public static fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->fromClass(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public extractFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->convertFieldConfigs(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    :cond_1
    :goto_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)[Lcom/j256/ormlite/field/FieldType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    if-eqz p1, :cond_0

    return-object p1

    .line 160
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Field types have not been extracted in table config"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->schemaName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-static {v1, v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    :cond_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataClass was never set on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDataClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    return-void
.end method

.method public setDatabaseType(Lcom/j256/ormlite/db/DatabaseType;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    return-void
.end method

.method public setFieldConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    return-void
.end method

.method public setSchemaName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->schemaName:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    return-void
.end method
