.class public final Lcom/facebook/ads/redexgen/X/R9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/84;->A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/84;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R9;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 49722
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:Lcom/facebook/ads/redexgen/X/84;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "smDzL72Lp9jy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aqv1OL0iDFIUwjRWdAmCZR4JATmqobOO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "b6FR1mkPQsD6JPX8m1C7hDiFcGTPRsRw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "topu8Mm7IbV9lX8QYuVczDnGSYjB99Ff"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hQrLPo4TyYZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "A7tCnLF6x1a8HwpqFo6qqY84V4CGdZj2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "knkJsprLkBZPcl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R9;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7w()Z
    .locals 6

    .line 49723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SR;->A0b()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 49724
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:Lcom/facebook/ads/redexgen/X/84;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/50;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/R9;->A02:[Ljava/lang/String;

    const-string v1, "bJPvCN7oCNsDoshmxyi9CD599S85VEAd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "j2nn8jnMUXhv04roOe6lyDRgKPs046af"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/SR;->A0a(Lcom/facebook/ads/redexgen/X/50;)V

    .line 49725
    return v5

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49726
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0L(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49727
    return v5

    .line 49728
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0M(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    return v0
.end method
