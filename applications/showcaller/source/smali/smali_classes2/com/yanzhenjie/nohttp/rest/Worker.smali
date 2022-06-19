.class public Lcom/yanzhenjie/nohttp/rest/Worker;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yanzhenjie/nohttp/rest/Request<",
        "TS;>;S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/yanzhenjie/nohttp/rest/Response<",
        "TS;>;>;"
    }
.end annotation


# instance fields
.field private final mRequest:Lcom/yanzhenjie/nohttp/rest/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/rest/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/Worker;->mRequest:Lcom/yanzhenjie/nohttp/rest/Request;

    return-void
.end method


# virtual methods
.method public call()Lcom/yanzhenjie/nohttp/rest/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TS;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->INSTANCE:Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Worker;->mRequest:Lcom/yanzhenjie/nohttp/rest/Request;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->execute(Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/rest/Worker;->call()Lcom/yanzhenjie/nohttp/rest/Response;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Worker;->mRequest:Lcom/yanzhenjie/nohttp/rest/Request;

    return-object v0
.end method
