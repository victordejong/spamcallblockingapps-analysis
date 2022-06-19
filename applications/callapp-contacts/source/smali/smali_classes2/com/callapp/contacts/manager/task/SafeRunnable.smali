.class public abstract Lcom/callapp/contacts/manager/task/SafeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doTask()V
.end method

.method protected abstract handleException(Ljava/lang/Throwable;)V
.end method

.method public run()V
    .locals 1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;->doTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/task/SafeRunnable;->handleException(Ljava/lang/Throwable;)V

    return-void
.end method
