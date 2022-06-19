.class final Lcom/verizon/ads/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/verizon/ads/WaterfallProvider;

.field final b:Lcom/verizon/ads/Bid;

.field final c:I

.field final d:Lcom/verizon/ads/VASAds$AdRequestListener;

.field final e:Lcom/verizon/ads/RequestMetadata;

.field final f:Ljava/lang/Class;

.field g:Z

.field h:Z

.field i:Z

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/WaterfallProcessingRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/verizon/ads/WaterfallProvider;Lcom/verizon/ads/Bid;Lcom/verizon/ads/RequestMetadata;Ljava/lang/Class;ILcom/verizon/ads/VASAds$AdRequestListener;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/verizon/ads/AdRequest;->a:Lcom/verizon/ads/WaterfallProvider;

    .line 34
    iput-object p2, p0, Lcom/verizon/ads/AdRequest;->b:Lcom/verizon/ads/Bid;

    .line 35
    iput-object p3, p0, Lcom/verizon/ads/AdRequest;->e:Lcom/verizon/ads/RequestMetadata;

    .line 36
    iput p5, p0, Lcom/verizon/ads/AdRequest;->c:I

    .line 37
    iput-object p6, p0, Lcom/verizon/ads/AdRequest;->d:Lcom/verizon/ads/VASAds$AdRequestListener;

    .line 38
    iput-object p4, p0, Lcom/verizon/ads/AdRequest;->f:Ljava/lang/Class;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/AdRequest;->j:Ljava/util/List;

    return-void
.end method
