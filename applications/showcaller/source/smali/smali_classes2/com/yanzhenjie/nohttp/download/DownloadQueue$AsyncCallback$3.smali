.class Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;
.super Ljava/lang/Object;
.source "DownloadQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->onProgress(IIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

.field final synthetic val$fileCount:J

.field final synthetic val$progress:I

.field final synthetic val$speed:J

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;IIJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

    iput p2, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$what:I

    iput p3, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$progress:I

    iput-wide p4, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$fileCount:J

    iput-wide p6, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$speed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->this$0:Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->access$000(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;)Lcom/yanzhenjie/nohttp/download/DownloadListener;

    move-result-object v1

    iget v2, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$what:I

    iget v3, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$progress:I

    iget-wide v4, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$fileCount:J

    iget-wide v6, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;->val$speed:J

    invoke-interface/range {v1 .. v7}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    return-void
.end method
