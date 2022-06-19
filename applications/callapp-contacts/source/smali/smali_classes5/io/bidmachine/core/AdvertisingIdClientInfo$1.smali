.class final Lio/bidmachine/core/AdvertisingIdClientInfo$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/core/AdvertisingIdClientInfo;-><init>(Landroid/content/Context;Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/core/AdvertisingIdClientInfo;


# direct methods
.method constructor <init>(Lio/bidmachine/core/AdvertisingIdClientInfo;Landroid/os/Looper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lio/bidmachine/core/AdvertisingIdClientInfo$1;->this$0:Lio/bidmachine/core/AdvertisingIdClientInfo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lio/bidmachine/core/AdvertisingIdClientInfo$1;->this$0:Lio/bidmachine/core/AdvertisingIdClientInfo;

    invoke-static {v0}, Lio/bidmachine/core/AdvertisingIdClientInfo;->access$000(Lio/bidmachine/core/AdvertisingIdClientInfo;)Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;

    invoke-interface {v0, p1}, Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;->executed(Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;)V

    return-void
.end method
