.class public final Lcom/facebook/ads/redexgen/X/Mh;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/7s;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mh;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 44343
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Etf6rxr38TN0vQCp7eNtUvsDOmNclbJq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tsAjjvZCMDWdS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8hGTWRVePtIxVw2NOXuq9knVHvw3DPvW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EWxkCjZIostDvyF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5rZAWcCWfjjM2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LrhlSMt3F2A2PPkpDiBfjHpLA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jQk7ZNmPb7V9ueUuvUfiKmSE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mvg7pIDRu6IgLugvRarlC3XDTGoYv5EO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Mh;->A01:[Ljava/lang/String;

    return-void
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 5

    .line 44344
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ld;->A00()I

    move-result v4

    .line 44345
    .local p0, "currentPositionMS":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/7y;

    .line 44346
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7y;->A09(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getDuration()I

    move-result v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/7y;

    .line 44347
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7y;->A09(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getDuration()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    if-le v1, v0, :cond_0

    .line 44348
    return-void

    .line 44349
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:Lcom/facebook/ads/redexgen/X/7y;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mh;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mh;->A01:[Ljava/lang/String;

    const-string v1, "7AA42mFgyTVlZSuOszNfTs49"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Lh;->A0d(I)V

    .line 44350
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7s;",
            ">;"
        }
    .end annotation

    .line 44351
    const-class v0, Lcom/facebook/ads/redexgen/X/7s;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 44352
    check-cast p1, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mh;->A01(Lcom/facebook/ads/redexgen/X/7s;)V

    return-void
.end method
