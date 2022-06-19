.class public final enum Lcom/monet/bidder/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/monet/bidder/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/monet/bidder/b;

.field public static final enum CUSTOM_BANNER_LOAD_ERROR:Lcom/monet/bidder/b;

.field public static final enum INTERNAL_ERROR:Lcom/monet/bidder/b;

.field public static final enum NETWORK_INVALID_STATE:Lcom/monet/bidder/b;

.field public static final enum NETWORK_NO_FILL:Lcom/monet/bidder/b;

.field public static final enum NETWORK_TIMEOUT:Lcom/monet/bidder/b;

.field public static final enum NO_FILL:Lcom/monet/bidder/b;

.field public static final enum UNSPECIFIED:Lcom/monet/bidder/b;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/monet/bidder/b;

    const-string v1, "NO_FILL"

    const/4 v2, 0x0

    const-string v3, "No ads found."

    invoke-direct {v0, v1, v2, v3}, Lcom/monet/bidder/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/monet/bidder/b;->NO_FILL:Lcom/monet/bidder/b;

    new-instance v1, Lcom/monet/bidder/b;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x1

    const-string v5, "Unable to serve ad due to invalid internal state."

    invoke-direct {v1, v3, v4, v5}, Lcom/monet/bidder/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/monet/bidder/b;->INTERNAL_ERROR:Lcom/monet/bidder/b;

    new-instance v3, Lcom/monet/bidder/b;

    const-string v5, "NETWORK_TIMEOUT"

    const/4 v6, 0x2

    const-string v7, "Third-party network failed to respond in a timely manner."

    invoke-direct {v3, v5, v6, v7}, Lcom/monet/bidder/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/monet/bidder/b;->NETWORK_TIMEOUT:Lcom/monet/bidder/b;

    new-instance v5, Lcom/monet/bidder/b;

    const-string v7, "NETWORK_NO_FILL"

    const/4 v8, 0x3

    const-string v9, "Third-party network failed to provide an ad."

    invoke-direct {v5, v7, v8, v9}, Lcom/monet/bidder/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/monet/bidder/b;->NETWORK_NO_FILL:Lcom/monet/bidder/b;

    new-instance v7, Lcom/monet/bidder/b;

    const-string v9, "NETWORK_INVALID_STATE"

    const/4 v10, 0x4

    const-string v11, "Third-party network failed due to invalid internal state."

    invoke-direct {v7, v9, v10, v11}, Lcom/monet/bidder/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/monet/bidder/b;->NETWORK_INVALID_STATE:Lcom/monet/bidder/b;

    new-instance v9, Lcom/monet/bidder/b;

    const-string v11, "CUSTOM_BANNER_LOAD_ERROR"

    const/4 v12, 0x5

    const-string v13, "Custom Banner not found."

    invoke-direct {v9, v11, v12, v13}, Lcom/monet/bidder/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/monet/bidder/b;->CUSTOM_BANNER_LOAD_ERROR:Lcom/monet/bidder/b;

    new-instance v11, Lcom/monet/bidder/b;

    const-string v13, "UNSPECIFIED"

    const/4 v14, 0x6

    const-string v15, "Unspecified error."

    invoke-direct {v11, v13, v14, v15}, Lcom/monet/bidder/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/monet/bidder/b;->UNSPECIFIED:Lcom/monet/bidder/b;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/monet/bidder/b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/monet/bidder/b;->$VALUES:[Lcom/monet/bidder/b;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/monet/bidder/b;->message:Ljava/lang/String;

    return-void
.end method

.method public static parseHyBidException(Ljava/lang/Throwable;)Lcom/monet/bidder/b;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HyBid - No fill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/monet/bidder/b;->NO_FILL:Lcom/monet/bidder/b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HyBid - Server error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PNApiClient - Parse error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sget-object p0, Lcom/monet/bidder/b;->INTERNAL_ERROR:Lcom/monet/bidder/b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/monet/bidder/b;->UNSPECIFIED:Lcom/monet/bidder/b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/monet/bidder/b;
    .locals 1

    const-class v0, Lcom/monet/bidder/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/monet/bidder/b;

    return-object p0
.end method

.method public static values()[Lcom/monet/bidder/b;
    .locals 1

    sget-object v0, Lcom/monet/bidder/b;->$VALUES:[Lcom/monet/bidder/b;

    invoke-virtual {v0}, [Lcom/monet/bidder/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/monet/bidder/b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/monet/bidder/b;->message:Ljava/lang/String;

    return-object v0
.end method
