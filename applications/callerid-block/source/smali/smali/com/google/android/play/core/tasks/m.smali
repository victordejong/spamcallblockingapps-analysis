.class public final Lcom/google/android/play/core/tasks/m;
.super Ljava/lang/Object;
.source ""


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
.field private final a:Lcom/google/android/play/core/tasks/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/p<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/m;->a:Lcom/google/android/play/core/tasks/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/m;->a:Lcom/google/android/play/core/tasks/p;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/p;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/m;->a:Lcom/google/android/play/core/tasks/p;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/p;->i(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c()Lcom/google/android/play/core/tasks/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/c<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/m;->a:Lcom/google/android/play/core/tasks/p;

    return-object v0
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/m;->a:Lcom/google/android/play/core/tasks/p;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/p;->j(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/m;->a:Lcom/google/android/play/core/tasks/p;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/p;->h(Ljava/lang/Object;)Z

    return-void
.end method
