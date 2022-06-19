.class public final enum Lcom/yanzhenjie/nohttp/rest/CacheMode;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/nohttp/rest/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanzhenjie/nohttp/rest/CacheMode;

.field public static final enum DEFAULT:Lcom/yanzhenjie/nohttp/rest/CacheMode;

.field public static final enum NONE_CACHE_REQUEST_NETWORK:Lcom/yanzhenjie/nohttp/rest/CacheMode;

.field public static final enum ONLY_READ_CACHE:Lcom/yanzhenjie/nohttp/rest/CacheMode;

.field public static final enum ONLY_REQUEST_NETWORK:Lcom/yanzhenjie/nohttp/rest/CacheMode;

.field public static final enum REQUEST_NETWORK_FAILED_READ_CACHE:Lcom/yanzhenjie/nohttp/rest/CacheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/CacheMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yanzhenjie/nohttp/rest/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yanzhenjie/nohttp/rest/CacheMode;->DEFAULT:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    .line 2
    new-instance v1, Lcom/yanzhenjie/nohttp/rest/CacheMode;

    const-string v3, "REQUEST_NETWORK_FAILED_READ_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/yanzhenjie/nohttp/rest/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yanzhenjie/nohttp/rest/CacheMode;->REQUEST_NETWORK_FAILED_READ_CACHE:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    .line 3
    new-instance v3, Lcom/yanzhenjie/nohttp/rest/CacheMode;

    const-string v5, "NONE_CACHE_REQUEST_NETWORK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/yanzhenjie/nohttp/rest/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yanzhenjie/nohttp/rest/CacheMode;->NONE_CACHE_REQUEST_NETWORK:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    .line 4
    new-instance v5, Lcom/yanzhenjie/nohttp/rest/CacheMode;

    const-string v7, "ONLY_READ_CACHE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/yanzhenjie/nohttp/rest/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yanzhenjie/nohttp/rest/CacheMode;->ONLY_READ_CACHE:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    .line 5
    new-instance v7, Lcom/yanzhenjie/nohttp/rest/CacheMode;

    const-string v9, "ONLY_REQUEST_NETWORK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/yanzhenjie/nohttp/rest/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/yanzhenjie/nohttp/rest/CacheMode;->ONLY_REQUEST_NETWORK:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/yanzhenjie/nohttp/rest/CacheMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/yanzhenjie/nohttp/rest/CacheMode;->$VALUES:[Lcom/yanzhenjie/nohttp/rest/CacheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/CacheMode;
    .locals 1

    .line 1
    const-class v0, Lcom/yanzhenjie/nohttp/rest/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/nohttp/rest/CacheMode;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/nohttp/rest/CacheMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/rest/CacheMode;->$VALUES:[Lcom/yanzhenjie/nohttp/rest/CacheMode;

    invoke-virtual {v0}, [Lcom/yanzhenjie/nohttp/rest/CacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/nohttp/rest/CacheMode;

    return-object v0
.end method
