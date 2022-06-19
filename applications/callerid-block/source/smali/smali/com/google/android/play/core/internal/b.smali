.class public abstract Lcom/google/android/play/core/internal/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/play/core/tasks/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/internal/b;->b:Lcom/google/android/play/core/tasks/m;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/m<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/b;->b:Lcom/google/android/play/core/tasks/m;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/b;->b:Lcom/google/android/play/core/tasks/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/m;->d(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method final c()Lcom/google/android/play/core/tasks/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/m<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/internal/b;->b:Lcom/google/android/play/core/tasks/m;

    return-object v0
.end method

.method public final run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/internal/b;->b(Ljava/lang/Exception;)V

    return-void
.end method
