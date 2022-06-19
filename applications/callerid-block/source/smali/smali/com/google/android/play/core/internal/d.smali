.class final Lcom/google/android/play/core/internal/d;
.super Lcom/google/android/play/core/internal/b;
.source ""


# instance fields
.field final synthetic c:Lcom/google/android/play/core/internal/b;

.field final synthetic d:Lcom/google/android/play/core/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/n;Lcom/google/android/play/core/tasks/m;Lcom/google/android/play/core/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/d;->d:Lcom/google/android/play/core/internal/n;

    iput-object p3, p0, Lcom/google/android/play/core/internal/d;->c:Lcom/google/android/play/core/internal/b;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/b;-><init>(Lcom/google/android/play/core/tasks/m;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/internal/d;->d:Lcom/google/android/play/core/internal/n;

    iget-object v1, p0, Lcom/google/android/play/core/internal/d;->c:Lcom/google/android/play/core/internal/b;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/n;->d(Lcom/google/android/play/core/internal/n;Lcom/google/android/play/core/internal/b;)V

    return-void
.end method
