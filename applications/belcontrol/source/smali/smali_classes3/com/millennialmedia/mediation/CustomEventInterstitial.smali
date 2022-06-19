.class public interface abstract Lcom/millennialmedia/mediation/CustomEventInterstitial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/mediation/CustomEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/mediation/CustomEventInterstitial$CustomEventInterstitialListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract loadInterstitial(Landroid/content/Context;Lcom/millennialmedia/mediation/CustomEventInterstitial$CustomEventInterstitialListener;Landroid/os/Bundle;)V
.end method

.method public abstract showInterstitial(Landroid/content/Context;Landroid/os/Bundle;)V
.end method
