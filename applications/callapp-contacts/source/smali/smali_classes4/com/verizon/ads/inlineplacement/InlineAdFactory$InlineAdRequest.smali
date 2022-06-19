.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InlineAdRequest"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/verizon/ads/Bid;

.field d:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

.field e:Lcom/verizon/ads/AdSession;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/AdSession;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/Bid;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)V
    .locals 1

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    .line 1082
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->c:Lcom/verizon/ads/Bid;

    .line 1083
    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->g:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->abortLoad()V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/AdSession;

    if-eqz v1, :cond_1

    .line 1095
    invoke-virtual {v1}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1096
    invoke-virtual {v1}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    .line 1097
    invoke-interface {v1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->abortLoad()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1100
    iput-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->b:Z

    return-void
.end method
