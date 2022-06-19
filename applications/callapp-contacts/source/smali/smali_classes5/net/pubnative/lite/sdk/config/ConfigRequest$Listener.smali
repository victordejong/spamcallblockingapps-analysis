.class public interface abstract Lnet/pubnative/lite/sdk/config/ConfigRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/config/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConfigError(Ljava/lang/Throwable;)V
.end method

.method public abstract onConfigFetched(Lnet/pubnative/lite/sdk/models/RemoteConfigModel;)V
.end method
