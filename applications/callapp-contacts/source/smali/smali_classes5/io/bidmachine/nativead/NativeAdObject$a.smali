.class final Lio/bidmachine/nativead/NativeAdObject$a;
.super Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedNativeAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/NativeAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$a;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    .line 553
    invoke-direct {p0, p2}, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;-><init>(Lio/bidmachine/AdProcessCallback;)V

    return-void
.end method


# virtual methods
.method public final onAdLoaded(Lio/bidmachine/nativead/NativeNetworkAdapter;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$a;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/NativeAdObject;->access$202(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/nativead/NativeNetworkAdapter;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    .line 560
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$a;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/bidmachine/nativead/NativeAdObject;->access$300(Lio/bidmachine/nativead/NativeAdObject;Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 562
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 563
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$a;->processCallback:Lio/bidmachine/AdProcessCallback;

    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
