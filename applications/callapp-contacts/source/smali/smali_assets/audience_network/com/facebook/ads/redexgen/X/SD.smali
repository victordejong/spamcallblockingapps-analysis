.class public abstract Lcom/facebook/ads/redexgen/X/SD;
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

    .line 52063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52064
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Z

    .line 52065
    return-void
.end method


# virtual methods
.method public abstract A00()V
.end method

.method public abstract A01(Z)V
.end method

.method public final A9h()V
    .locals 1

    .line 52066
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Z

    if-eqz v0, :cond_0

    .line 52067
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->A00()V

    .line 52068
    :goto_0
    return-void

    .line 52069
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SD;->A01(Z)V

    goto :goto_0
.end method

.method public final A9o()V
    .locals 1

    .line 52070
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SD;->A01(Z)V

    .line 52071
    return-void
.end method
