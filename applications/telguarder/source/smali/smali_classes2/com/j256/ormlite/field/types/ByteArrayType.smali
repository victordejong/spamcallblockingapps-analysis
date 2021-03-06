.class public Lcom/j256/ormlite/field/types/ByteArrayType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "ByteArrayType.java"


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/ByteArrayType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/j256/ormlite/field/types/ByteArrayType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/ByteArrayType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/ByteArrayType;->singleTon:Lcom/j256/ormlite/field/types/ByteArrayType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    return-void
.end method

.method private getBytesImpl(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not convert default string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/ByteArrayType;
    .locals 1

    .line 22
    sget-object v0, Lcom/j256/ormlite/field/types/ByteArrayType;->singleTon:Lcom/j256/ormlite/field/types/ByteArrayType;

    return-object v0
.end method


# virtual methods
.method public dataIsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    .line 58
    :cond_2
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getPrimaryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    const-class v0, [B

    return-object v0
.end method

.method public isArgumentHolderRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/ByteArrayType;->getBytesImpl(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/ByteArrayType;->getBytesImpl(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getBytes(I)[B

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
