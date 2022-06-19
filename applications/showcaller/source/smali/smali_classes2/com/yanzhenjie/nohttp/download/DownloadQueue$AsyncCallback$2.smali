.class Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;
.super Ljava/lang/Object;
.source "DownloadQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->onStart(IZJLcom/yanzhenjie/nohttp/Headers;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

.field final synthetic val$allCount:J

.field final synthetic val$headers:Lcom/yanzhenjie/nohttp/Headers;

.field final synthetic val$isResume:Z

.field final synthetic val$rangeSize:J

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;IZJLcom/yanzhenjie/nohttp/Headers;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

    iput p2, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$what:I

    iput-boolean p3, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$isResume:Z

    iput-wide p4, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$rangeSize:J

    iput-object p6, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$headers:Lcom/yanzhenjie/nohttp/Headers;

    iput-wide p7, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$allCount:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->access$000(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;)Lcom/yanzhenjie/nohttp/download/DownloadListener;

    move-result-object v1

    iget v2, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$what:I

    iget-boolean v3, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$isResume:Z

    iget-wide v4, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$rangeSize:J

    iget-object v6, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$headers:Lcom/yanzhenjie/nohttp/Headers;

    iget-wide v7, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;->val$allCount:J

    invoke-interface/range {v1 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onStart(IZJLcom/yanzhenjie/nohttp/Headers;J)V

    return-void
.end method
