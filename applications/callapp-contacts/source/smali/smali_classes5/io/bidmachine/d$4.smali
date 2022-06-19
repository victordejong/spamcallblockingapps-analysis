.class final Lio/bidmachine/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/d;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/d;

.field final synthetic val$callback:Lio/bidmachine/InitializationCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sellerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/d;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lio/bidmachine/d$4;->this$0:Lio/bidmachine/d;

    iput-object p2, p0, Lio/bidmachine/d$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/d$4;->val$sellerId:Ljava/lang/String;

    iput-object p4, p0, Lio/bidmachine/d$4;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final executed(Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;)V
    .locals 3

    .line 158
    invoke-virtual {p1}, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/c;->setLimitAdTrackingEnabled(Z)V

    .line 159
    invoke-virtual {p1}, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/c;->setDeviceAdvertisingId(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lio/bidmachine/d$4;->this$0:Lio/bidmachine/d;

    iget-object v0, p0, Lio/bidmachine/d$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/d$4;->val$sellerId:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/d$4;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/d;->access$100(Lio/bidmachine/d;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method
