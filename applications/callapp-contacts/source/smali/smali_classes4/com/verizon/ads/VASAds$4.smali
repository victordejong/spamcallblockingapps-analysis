.class final Lcom/verizon/ads/VASAds$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/VASAds;->initialize(Landroid/app/Application;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 773
    invoke-static {}, Lcom/verizon/ads/VASAds;->d()V

    .line 775
    invoke-static {p0}, Lcom/verizon/ads/VASAds;->a(Ljava/lang/Runnable;)V

    return-void
.end method
