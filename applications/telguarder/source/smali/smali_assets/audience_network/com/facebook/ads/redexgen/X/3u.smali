.class public final Lcom/facebook/ads/redexgen/X/3u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/El;

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 10029
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3u;->A04:Z

    .line 10030
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 10031
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    .line 10032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3u;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10033
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 10034
    return-void
.end method
