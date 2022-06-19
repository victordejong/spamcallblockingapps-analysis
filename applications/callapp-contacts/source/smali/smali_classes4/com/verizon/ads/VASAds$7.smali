.class final Lcom/verizon/ads/VASAds$7;
.super Lcom/verizon/ads/events/EventReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/VASAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1209
    invoke-direct {p0}, Lcom/verizon/ads/events/EventReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent$645b3fe5(Ljava/lang/Object;)V
    .locals 0

    .line 1213
    check-cast p1, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;

    invoke-static {p1}, Lcom/verizon/ads/VASAds;->a(Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;)V

    return-void
.end method
