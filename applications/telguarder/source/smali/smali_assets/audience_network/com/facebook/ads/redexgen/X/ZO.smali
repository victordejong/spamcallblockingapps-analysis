.class public final Lcom/facebook/ads/redexgen/X/ZO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZM;->A0Q()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZO;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZM;)V
    .locals 0

    .line 66311
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OfLvE70M9fi4MDJ4xWk1od4RZixqIkyL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DzU6oaKN9bbKpPcZm3apQF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7guAp8OeWcpC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "S4kesvjfLTAkYwJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IlBvsKrAtoq8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 66312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A02(Lcom/facebook/ads/redexgen/X/ZM;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66313
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/ZM;->A02(Lcom/facebook/ads/redexgen/X/ZM;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A01:[Ljava/lang/String;

    const-string v1, "zdD2hiaPVddVgREEGiOVzB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66314
    :goto_0
    return-object v0

    .line 66315
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
