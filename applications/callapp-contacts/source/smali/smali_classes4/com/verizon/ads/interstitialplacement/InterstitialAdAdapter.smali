.class public interface abstract Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/AdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;,
        Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;
    }
.end annotation


# virtual methods
.method public abstract abortLoad()V
.end method

.method public abstract fireImpression()V
.end method

.method public abstract getEnterAnimationId()I
.end method

.method public abstract getExitAnimationId()I
.end method

.method public abstract isImmersiveEnabled()Z
.end method

.method public abstract load(Landroid/content/Context;ILcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract setEnterAnimation(I)V
.end method

.method public abstract setExitAnimation(I)V
.end method

.method public abstract setImmersiveEnabled(Z)V
.end method

.method public abstract setListener(Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V
.end method

.method public abstract show(Landroid/content/Context;)V
.end method
