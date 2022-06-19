.class public final Lcom/facebook/ads/redexgen/X/GH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueStyle"
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 33394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33395
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GH;->A01:I

    .line 33396
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/GH;->A02:Z

    .line 33397
    iput p3, p0, Lcom/facebook/ads/redexgen/X/GH;->A00:I

    .line 33398
    return-void
.end method
