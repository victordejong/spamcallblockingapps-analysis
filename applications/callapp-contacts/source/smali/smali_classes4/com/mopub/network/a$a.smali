.class final enum Lcom/mopub/network/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/network/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/network/a$a;

.field public static final enum AD_LOADED:Lcom/mopub/network/a$a;

.field public static final enum INVALID_DATA:Lcom/mopub/network/a$a;

.field public static final enum MISSING_ADAPTER:Lcom/mopub/network/a$a;

.field public static final enum TIMEOUT:Lcom/mopub/network/a$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 23
    new-instance v0, Lcom/mopub/network/a$a;

    const-string v1, "AD_LOADED"

    const/4 v2, 0x0

    const-string v3, "ad_loaded"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/network/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/network/a$a;->AD_LOADED:Lcom/mopub/network/a$a;

    .line 24
    new-instance v1, Lcom/mopub/network/a$a;

    const-string v3, "MISSING_ADAPTER"

    const/4 v4, 0x1

    const-string v5, "missing_adapter"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/network/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/network/a$a;->MISSING_ADAPTER:Lcom/mopub/network/a$a;

    .line 25
    new-instance v3, Lcom/mopub/network/a$a;

    const-string v5, "TIMEOUT"

    const/4 v6, 0x2

    const-string v7, "timeout"

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/network/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mopub/network/a$a;->TIMEOUT:Lcom/mopub/network/a$a;

    .line 26
    new-instance v5, Lcom/mopub/network/a$a;

    const-string v7, "INVALID_DATA"

    const/4 v8, 0x3

    const-string v9, "invalid_data"

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/network/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mopub/network/a$a;->INVALID_DATA:Lcom/mopub/network/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mopub/network/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 22
    sput-object v7, Lcom/mopub/network/a$a;->$VALUES:[Lcom/mopub/network/a$a;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/mopub/network/a$a;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/network/a$a;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mopub/network/a$a;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/network/a$a;
    .locals 1

    .line 22
    const-class v0, Lcom/mopub/network/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/network/a$a;

    return-object p0
.end method

.method public static values()[Lcom/mopub/network/a$a;
    .locals 1

    .line 22
    sget-object v0, Lcom/mopub/network/a$a;->$VALUES:[Lcom/mopub/network/a$a;

    invoke-virtual {v0}, [Lcom/mopub/network/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/network/a$a;

    return-object v0
.end method
