.class public final Lcom/facebook/ads/redexgen/X/Xp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xj;->A0Q()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xp;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xj;)V
    .locals 0

    .line 65457
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xp;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RugiOdWnuQ6XykZSqa8C7rqJlbU8GqlA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "27Bicy6dPeDXsvAMpCI4phuXqFq0DUWc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qXS3UgTnPN4VtAkDNkJAjMI3WQxowuyQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X6sSgI9bb2bXkks8QeccRFzHbd5APtoz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "irr4H3GyfEou6fKsTah1jxgLEP7thJ1r"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Tb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rAVOrnkW8RnxkqeDOGQambvet6w5mExW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8vF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xp;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 65458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xp;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A03(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65459
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xp;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Xj;->A03(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xp;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xp;->A01:[Ljava/lang/String;

    const-string v1, "2w5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    .line 65460
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xp;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65461
    :goto_0
    return-object v0
.end method
