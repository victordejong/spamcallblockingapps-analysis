.class final Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/WaterfallProcessingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WaterfallProcessingResult"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/AdRequest;

.field final b:Lcom/verizon/ads/AdSession;

.field final c:Lcom/verizon/ads/WaterfallProcessingRunnable;


# direct methods
.method constructor <init>(Lcom/verizon/ads/AdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/WaterfallProcessingRunnable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->a:Lcom/verizon/ads/AdRequest;

    .line 38
    iput-object p2, p0, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->b:Lcom/verizon/ads/AdSession;

    .line 39
    iput-object p3, p0, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->c:Lcom/verizon/ads/WaterfallProcessingRunnable;

    return-void
.end method
