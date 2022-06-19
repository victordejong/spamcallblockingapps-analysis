.class public abstract Lcom/facebook/ads/redexgen/X/bl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RVCacheListener"
.end annotation


# instance fields
.field public final A00:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 70241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70242
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bl;->A00:Z

    .line 70243
    return-void
.end method


# virtual methods
.method public abstract A00()V
.end method

.method public abstract A01(Z)V
.end method

.method public final A9g()V
    .locals 1

    .line 70244
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bl;->A00:Z

    if-eqz v0, :cond_0

    .line 70245
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bl;->A00()V

    .line 70246
    :goto_0
    return-void

    .line 70247
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bl;->A01(Z)V

    goto :goto_0
.end method

.method public final A9n()V
    .locals 1

    .line 70248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bl;->A01(Z)V

    .line 70249
    return-void
.end method
