.class public final Lcom/facebook/ads/redexgen/X/4Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrapData"
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A03:Ljava/util/ArrayList;

    .line 10972
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A00:I

    .line 10973
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A02:J

    .line 10974
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A01:J

    return-void
.end method
