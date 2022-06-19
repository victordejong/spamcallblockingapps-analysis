.class Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;

.field final synthetic val$response:Lcom/yanzhenjie/nohttp/rest/Response;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;ILcom/yanzhenjie/nohttp/rest/Response;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;->this$0:Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;

    iput p2, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;->val$what:I

    iput-object p3, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;->val$response:Lcom/yanzhenjie/nohttp/rest/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;->this$0:Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;)Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    move-result-object v0

    iget v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;->val$what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;->val$response:Lcom/yanzhenjie/nohttp/rest/Response;

    invoke-interface {v0, v1, v2}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V

    return-void
.end method
