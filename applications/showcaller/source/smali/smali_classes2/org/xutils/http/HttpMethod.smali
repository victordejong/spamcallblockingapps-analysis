.class public final enum Lorg/xutils/http/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECT:Lorg/xutils/http/HttpMethod;

.field public static final enum COPY:Lorg/xutils/http/HttpMethod;

.field public static final enum DELETE:Lorg/xutils/http/HttpMethod;

.field public static final enum GET:Lorg/xutils/http/HttpMethod;

.field public static final enum HEAD:Lorg/xutils/http/HttpMethod;

.field public static final enum MOVE:Lorg/xutils/http/HttpMethod;

.field public static final enum OPTIONS:Lorg/xutils/http/HttpMethod;

.field public static final enum PATCH:Lorg/xutils/http/HttpMethod;

.field public static final enum POST:Lorg/xutils/http/HttpMethod;

.field public static final enum PUT:Lorg/xutils/http/HttpMethod;

.field public static final enum TRACE:Lorg/xutils/http/HttpMethod;

.field private static final synthetic d:[Lorg/xutils/http/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    .line 2
    new-instance v1, Lorg/xutils/http/HttpMethod;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    .line 3
    new-instance v3, Lorg/xutils/http/HttpMethod;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/xutils/http/HttpMethod;->PUT:Lorg/xutils/http/HttpMethod;

    .line 4
    new-instance v5, Lorg/xutils/http/HttpMethod;

    const-string v7, "PATCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/xutils/http/HttpMethod;->PATCH:Lorg/xutils/http/HttpMethod;

    .line 5
    new-instance v7, Lorg/xutils/http/HttpMethod;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/xutils/http/HttpMethod;->HEAD:Lorg/xutils/http/HttpMethod;

    .line 6
    new-instance v9, Lorg/xutils/http/HttpMethod;

    const-string v11, "MOVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/xutils/http/HttpMethod;->MOVE:Lorg/xutils/http/HttpMethod;

    .line 7
    new-instance v11, Lorg/xutils/http/HttpMethod;

    const-string v13, "COPY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/xutils/http/HttpMethod;->COPY:Lorg/xutils/http/HttpMethod;

    .line 8
    new-instance v13, Lorg/xutils/http/HttpMethod;

    const-string v15, "DELETE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/xutils/http/HttpMethod;->DELETE:Lorg/xutils/http/HttpMethod;

    .line 9
    new-instance v15, Lorg/xutils/http/HttpMethod;

    const-string v14, "OPTIONS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lorg/xutils/http/HttpMethod;->OPTIONS:Lorg/xutils/http/HttpMethod;

    .line 10
    new-instance v14, Lorg/xutils/http/HttpMethod;

    const-string v12, "TRACE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/xutils/http/HttpMethod;->TRACE:Lorg/xutils/http/HttpMethod;

    .line 11
    new-instance v12, Lorg/xutils/http/HttpMethod;

    const-string v10, "CONNECT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/xutils/http/HttpMethod;->CONNECT:Lorg/xutils/http/HttpMethod;

    const/16 v10, 0xb

    new-array v10, v10, [Lorg/xutils/http/HttpMethod;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lorg/xutils/http/HttpMethod;->d:[Lorg/xutils/http/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/xutils/http/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static permitsCache(Lorg/xutils/http/HttpMethod;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->PUT:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->PATCH:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->DELETE:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static permitsRetry(Lorg/xutils/http/HttpMethod;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/http/HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lorg/xutils/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/http/HttpMethod;

    return-object p0
.end method

.method public static values()[Lorg/xutils/http/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/http/HttpMethod;->d:[Lorg/xutils/http/HttpMethod;

    invoke-virtual {v0}, [Lorg/xutils/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/http/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
