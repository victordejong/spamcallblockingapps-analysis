.class public interface abstract Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
.end method

.method public abstract onFileLoaded(Ljava/lang/String;)V
.end method

.method public abstract onProgress(D)V
.end method
