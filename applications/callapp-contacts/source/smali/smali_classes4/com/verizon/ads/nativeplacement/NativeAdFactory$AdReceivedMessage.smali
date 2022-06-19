.class Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdReceivedMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

.field final b:Lcom/verizon/ads/AdSession;

.field final c:Lcom/verizon/ads/ErrorInfo;

.field final d:Z


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    .line 216
    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    .line 217
    iput-object p3, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    .line 218
    iput-boolean p4, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->d:Z

    return-void
.end method
