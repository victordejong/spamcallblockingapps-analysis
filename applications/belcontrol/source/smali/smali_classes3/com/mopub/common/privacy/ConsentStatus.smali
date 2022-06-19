.class public final enum Lcom/mopub/common/privacy/ConsentStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/privacy/ConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DNT:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final synthetic b:[Lcom/mopub/common/privacy/ConsentStatus;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "EXPLICIT_YES"

    const/4 v2, 0x0

    const-string v3, "explicit_yes"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    new-instance v1, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v3, "EXPLICIT_NO"

    const/4 v4, 0x1

    const-string v5, "explicit_no"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    new-instance v3, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    const-string v7, "unknown"

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    new-instance v5, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v7, "POTENTIAL_WHITELIST"

    const/4 v8, 0x3

    const-string v9, "potential_whitelist"

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    new-instance v7, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v9, "DNT"

    const/4 v10, 0x4

    const-string v11, "dnt"

    invoke-direct {v7, v9, v10, v11}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mopub/common/privacy/ConsentStatus;->b:[Lcom/mopub/common/privacy/ConsentStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentStatus;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mopub/common/privacy/ConsentStatus;->values()[Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1

    const-class v0, Lcom/mopub/common/privacy/ConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->b:[Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0}, [Lcom/mopub/common/privacy/ConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentStatus;->a:Ljava/lang/String;

    return-object v0
.end method
