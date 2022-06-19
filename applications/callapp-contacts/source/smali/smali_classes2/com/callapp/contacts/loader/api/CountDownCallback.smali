.class public Lcom/callapp/contacts/loader/api/CountDownCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Lcom/callapp/contacts/event/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/callapp/contacts/event/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/callapp/contacts/event/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->b:Lcom/callapp/contacts/event/Callback;

    .line 17
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->b:Lcom/callapp/contacts/event/Callback;

    new-instance v1, Lcom/callapp/framework/AggregatedException;

    iget-object v2, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/callapp/framework/AggregatedException;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->b:Lcom/callapp/contacts/event/Callback;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 35
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unknown error"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    :cond_0
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->c:Ljava/util/List;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/CountDownCallback;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/CountDownCallback;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
