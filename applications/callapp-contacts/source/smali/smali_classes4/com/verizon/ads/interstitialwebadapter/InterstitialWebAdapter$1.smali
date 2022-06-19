.class Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$1;->a:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$1;->a:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->b()V

    return-void
.end method
