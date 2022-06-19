.class public interface abstract Lcom/millennialmedia/mediation/CustomEventNative;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/mediation/CustomEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/mediation/CustomEventNative$CustomEventNativeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_TYPE:Ljava/lang/String; = "100"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract loadNativeAd(Landroid/content/Context;Lcom/millennialmedia/mediation/CustomEventNative$CustomEventNativeListener;Landroid/os/Bundle;)V
.end method

.method public abstract onAdClicked(Lcom/millennialmedia/NativeAd;)V
.end method

.method public abstract onAdLoaded(Lcom/millennialmedia/NativeAd;)V
.end method
