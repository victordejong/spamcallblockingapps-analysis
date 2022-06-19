.class Lcom/yanzhenjie/nohttp/rest/RequestQueue$1;
.super Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/nohttp/rest/RequestQueue;->add(ILcom/yanzhenjie/nohttp/rest/Request;Lcom/yanzhenjie/nohttp/rest/OnResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/nohttp/rest/RequestQueue;

.field final synthetic val$request:Lcom/yanzhenjie/nohttp/rest/Request;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/nohttp/rest/RequestQueue;Lcom/yanzhenjie/nohttp/rest/OnResponseListener;Lcom/yanzhenjie/nohttp/rest/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$1;->this$0:Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    iput-object p3, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$1;->val$request:Lcom/yanzhenjie/nohttp/rest/Request;

    invoke-direct {p0, p2}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;-><init>(Lcom/yanzhenjie/nohttp/rest/OnResponseListener;)V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$1;->this$0:Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->access$000(Lcom/yanzhenjie/nohttp/rest/RequestQueue;)Lcom/yanzhenjie/nohttp/CancelerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$1;->val$request:Lcom/yanzhenjie/nohttp/rest/Request;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/CancelerManager;->removeCancel(Lcom/yanzhenjie/nohttp/BasicRequest;)V

    .line 2
    invoke-super {p0, p1}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->onFinish(I)V

    return-void
.end method
