.class final Lcom/verizon/ads/VASAds$RegisteredPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/VASAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RegisteredPlugin"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/Plugin;

.field volatile b:Z


# direct methods
.method private constructor <init>(Lcom/verizon/ads/Plugin;)V
    .locals 0

    .line 1414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    iput-object p1, p0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->a:Lcom/verizon/ads/Plugin;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/ads/Plugin;Lcom/verizon/ads/VASAds$1;)V
    .locals 0

    .line 1408
    invoke-direct {p0, p1}, Lcom/verizon/ads/VASAds$RegisteredPlugin;-><init>(Lcom/verizon/ads/Plugin;)V

    return-void
.end method
