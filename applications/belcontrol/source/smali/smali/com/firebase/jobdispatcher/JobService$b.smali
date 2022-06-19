.class public Lcom/firebase/jobdispatcher/JobService$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/jobdispatcher/JobService;->e(Lzp0;Ltp0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzp0;

.field public final synthetic b:Lcom/firebase/jobdispatcher/JobService;


# direct methods
.method public constructor <init>(Lcom/firebase/jobdispatcher/JobService;Lzp0;)V
    .locals 0

    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobService$b;->b:Lcom/firebase/jobdispatcher/JobService;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/JobService$b;->a:Lzp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService$b;->b:Lcom/firebase/jobdispatcher/JobService;

    invoke-static {v0}, Lcom/firebase/jobdispatcher/JobService;->a(Lcom/firebase/jobdispatcher/JobService;)Lh4;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService$b;->b:Lcom/firebase/jobdispatcher/JobService;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/JobService$b;->a:Lzp0;

    invoke-virtual {v1, v2}, Lcom/firebase/jobdispatcher/JobService;->c(Lzp0;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService$b;->b:Lcom/firebase/jobdispatcher/JobService;

    invoke-static {v1}, Lcom/firebase/jobdispatcher/JobService;->a(Lcom/firebase/jobdispatcher/JobService;)Lh4;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/jobdispatcher/JobService$b;->a:Lzp0;

    invoke-interface {v2}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/jobdispatcher/JobService$d;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/firebase/jobdispatcher/JobService$d;->a(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
