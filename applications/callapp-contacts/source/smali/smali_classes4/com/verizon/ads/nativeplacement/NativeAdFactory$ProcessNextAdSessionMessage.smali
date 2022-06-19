.class Lcom/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessNextAdSessionMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V
    .locals 0

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    return-void
.end method
