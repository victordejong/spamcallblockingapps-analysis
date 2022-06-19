.class Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;
.super Ljava/lang/Object;
.source "DownloadQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->onDownloadError(ILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;ILjava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;->this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

    iput p2, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;->val$what:I

    iput-object p3, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;->this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->access$000(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;)Lcom/yanzhenjie/nohttp/download/DownloadListener;

    move-result-object v0

    iget v1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;->val$what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onDownloadError(ILjava/lang/Exception;)V

    return-void
.end method
