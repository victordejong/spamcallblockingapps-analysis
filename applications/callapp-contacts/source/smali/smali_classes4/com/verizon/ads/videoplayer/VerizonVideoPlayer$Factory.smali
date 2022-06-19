.class Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs newInstance(Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;
    .locals 0

    .line 73
    new-instance p2, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-direct {p2, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
