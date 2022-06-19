.class public abstract Lcom/android/mms/transaction/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/mms/transaction/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/android/mms/transaction/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/g;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/mms/transaction/h;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/android/mms/transaction/h;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/g;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/g;->c:Ljava/util/Iterator;

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/g;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/g;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/h;

    invoke-interface {v1, p0}, Lcom/android/mms/transaction/h;->a(Lcom/android/mms/transaction/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/mms/transaction/g;->c:Ljava/util/Iterator;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/android/mms/transaction/g;->c:Ljava/util/Iterator;

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
