.class public final Lcom/facebook/ads/redexgen/X/VP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VQ;)V
    .locals 2

    .line 60205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60206
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A02:Lcom/facebook/ads/redexgen/X/IM;

    .line 60207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VP;->A02:Lcom/facebook/ads/redexgen/X/IM;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A02:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A00:I

    .line 60209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A02:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A01:I

    .line 60210
    return-void
.end method


# virtual methods
.method public final A75()I
    .locals 1

    .line 60211
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A01:I

    return v0
.end method

.method public final A84()Z
    .locals 1

    .line 60212
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A00:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACq()I
    .locals 1

    .line 60213
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A00:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VP;->A02:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    :cond_0
    return v0
.end method
