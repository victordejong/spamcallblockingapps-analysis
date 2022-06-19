.class public Lcom/yanzhenjie/nohttp/download/Worker;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/yanzhenjie/nohttp/download/DownloadListener;

.field private final mRequest:Lcom/yanzhenjie/nohttp/download/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWhat:I


# direct methods
.method public constructor <init>(ILcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/download/DownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lcom/yanzhenjie/nohttp/download/DownloadListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yanzhenjie/nohttp/download/Worker;->mWhat:I

    .line 3
    iput-object p2, p0, Lcom/yanzhenjie/nohttp/download/Worker;->mRequest:Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    .line 4
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/download/Worker;->mListener:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/download/Worker;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .line 2
    sget-object v0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->INSTANCE:Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    iget v1, p0, Lcom/yanzhenjie/nohttp/download/Worker;->mWhat:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/download/Worker;->mRequest:Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    iget-object v3, p0, Lcom/yanzhenjie/nohttp/download/Worker;->mListener:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->execute(ILcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/download/DownloadListener;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequest()Lcom/yanzhenjie/nohttp/download/DownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Worker;->mRequest:Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    return-object v0
.end method
