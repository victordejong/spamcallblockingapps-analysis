.class Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendToDestinationMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

.field final b:Lcom/verizon/ads/AdSession;

.field final c:Lcom/verizon/ads/ErrorInfo;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    .line 233
    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/AdSession;

    .line 234
    iput-object p3, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;->c:Lcom/verizon/ads/ErrorInfo;

    return-void
.end method
