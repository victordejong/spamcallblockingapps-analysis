.class Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$3;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$3;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b()V

    return-void
.end method
