.class public interface abstract Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/config/ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigListener"
.end annotation


# virtual methods
.method public abstract onConfigFetchFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onConfigFetched()V
.end method
