.class public interface abstract Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/UrlDriller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onURLDrillerFail(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onURLDrillerFinish(Ljava/lang/String;)V
.end method

.method public abstract onURLDrillerRedirect(Ljava/lang/String;)V
.end method

.method public abstract onURLDrillerStart(Ljava/lang/String;)V
.end method
