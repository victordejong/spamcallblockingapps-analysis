.class public interface abstract Lnet/pubnative/lite/sdk/presenter/AdPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;,
        Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAd()Lnet/pubnative/lite/sdk/models/Ad;
.end method

.method public abstract load()V
.end method

.method public abstract setImpressionListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;)V
.end method

.method public abstract setListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)V
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method
