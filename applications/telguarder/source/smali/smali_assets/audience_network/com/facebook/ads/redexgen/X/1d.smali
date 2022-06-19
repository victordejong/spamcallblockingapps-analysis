.class public final Lcom/facebook/ads/redexgen/X/1d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoCacheData"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 3499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3500
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1d;->A01:Ljava/lang/String;

    .line 3501
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/1d;->A00:J

    .line 3502
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 3503
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1d;->A00:J

    return-wide v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 3504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1d;->A01:Ljava/lang/String;

    return-object v0
.end method
