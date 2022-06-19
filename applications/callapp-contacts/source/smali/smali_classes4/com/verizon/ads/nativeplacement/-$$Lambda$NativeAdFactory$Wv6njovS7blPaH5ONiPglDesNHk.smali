.class public final synthetic Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/nativeplacement/NativeAdFactory;

.field public final synthetic f$1:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

.field public final synthetic f$2:Lcom/verizon/ads/AdSession;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;->f$0:Lcom/verizon/ads/nativeplacement/NativeAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;->f$1:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    iput-object p3, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;->f$2:Lcom/verizon/ads/AdSession;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;->f$0:Lcom/verizon/ads/nativeplacement/NativeAdFactory;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;->f$1:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;->f$2:Lcom/verizon/ads/AdSession;

    invoke-static {v0, v1, v2, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->lambda$Wv6njovS7blPaH5ONiPglDesNHk(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
