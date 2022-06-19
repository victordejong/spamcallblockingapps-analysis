.class final Lio/bidmachine/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/d;->requestInitData(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
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

    .line 200
    iput-object p1, p0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iput-object p2, p0, Lio/bidmachine/d$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/d$5;->val$sellerId:Ljava/lang/String;

    iput-object p4, p0, Lio/bidmachine/d$5;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 203
    iget-object v0, p0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    new-instance v1, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {v1}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    iget-object v2, p0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v2, v2, Lio/bidmachine/d;->currentInitUrl:Ljava/lang/String;

    .line 204
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ApiRequest$ApiInitDataBinder;

    invoke-direct {v2}, Lio/bidmachine/ApiRequest$ApiInitDataBinder;-><init>()V

    .line 205
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/d$5;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lio/bidmachine/d$5;->val$sellerId:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    .line 208
    invoke-static {v4}, Lio/bidmachine/d;->access$1200(Lio/bidmachine/d;)Lio/bidmachine/TargetingParams;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    .line 209
    invoke-static {v5}, Lio/bidmachine/d;->access$1300(Lio/bidmachine/d;)Lio/bidmachine/UserRestrictionParams;

    move-result-object v5

    .line 206
    invoke-static {v2, v3, v4, v5}, Lio/bidmachine/g;->obtainInitRequest(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/protobuf/InitRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Lio/bidmachine/d$5$1;

    invoke-direct {v2, p0}, Lio/bidmachine/d$5$1;-><init>(Lio/bidmachine/d$5;)V

    .line 210
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/d;->currentInitRequest:Lio/bidmachine/ApiRequest;

    return-void
.end method
