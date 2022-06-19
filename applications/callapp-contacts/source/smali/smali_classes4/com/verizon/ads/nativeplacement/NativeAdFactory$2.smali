.class final Lcom/verizon/ads/nativeplacement/NativeAdFactory$2;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/BidRequestListener;

.field final synthetic b:Lcom/verizon/ads/ErrorInfo;


# direct methods
.method constructor <init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$2;->a:Lcom/verizon/ads/BidRequestListener;

    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$2;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final safeRun()V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$2;->a:Lcom/verizon/ads/BidRequestListener;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$2;->b:Lcom/verizon/ads/ErrorInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
