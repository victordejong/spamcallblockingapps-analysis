.class public final Lcom/google/android/play/core/tasks/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/play/core/tasks/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/s<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/tasks/s;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/s;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/s;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/s;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/s;->b(Ljava/lang/Exception;)Z

    return-void
.end method
