.class public final Lcom/facebook/ads/redexgen/X/3y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 10227
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    .line 10228
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Z

    .line 10229
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A03:Z

    .line 10230
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A02:Z

    .line 10231
    return-void
.end method
