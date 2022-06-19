.class public Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBMetricReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BidWrapper"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;->b:Ljava/lang/String;

    return-void
.end method
