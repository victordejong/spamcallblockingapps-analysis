.class public interface abstract Lcom/millennialmedia/mediation/CustomEventBanner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/mediation/CustomEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/mediation/CustomEventBanner$CustomEventBannerListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract requestBanner(Landroid/content/Context;Lcom/millennialmedia/mediation/CustomEventBanner$CustomEventBannerListener;Lcom/millennialmedia/InlineAd$AdSize;Landroid/os/Bundle;)V
.end method
