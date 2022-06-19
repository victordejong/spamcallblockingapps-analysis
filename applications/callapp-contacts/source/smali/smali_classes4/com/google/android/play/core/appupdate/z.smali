.class public final Lcom/google/android/play/core/appupdate/z;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/t;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/appupdate/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/appupdate/k;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/k;-><init>(Lcom/google/android/play/core/appupdate/i;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/z;->b:Lcom/google/android/play/core/internal/be;

    new-instance p1, Lcom/google/android/play/core/appupdate/j;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/play/core/appupdate/j;-><init>(Lcom/google/android/play/core/internal/be;[C)V

    invoke-static {p1}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/z;->c:Lcom/google/android/play/core/internal/be;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/z;->b:Lcom/google/android/play/core/internal/be;

    new-instance v2, Lcom/google/android/play/core/appupdate/s;

    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/appupdate/s;-><init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V

    invoke-static {v2}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/z;->d:Lcom/google/android/play/core/internal/be;

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/z;->b:Lcom/google/android/play/core/internal/be;

    new-instance v0, Lcom/google/android/play/core/appupdate/j;

    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/appupdate/j;-><init>(Lcom/google/android/play/core/internal/be;[B)V

    invoke-static {v0}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/z;->e:Lcom/google/android/play/core/internal/be;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/z;->d:Lcom/google/android/play/core/internal/be;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/z;->b:Lcom/google/android/play/core/internal/be;

    new-instance v2, Lcom/google/android/play/core/appupdate/h;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/play/core/appupdate/h;-><init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V

    invoke-static {v2}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/z;->f:Lcom/google/android/play/core/internal/be;

    new-instance v0, Lcom/google/android/play/core/appupdate/j;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/j;-><init>(Lcom/google/android/play/core/internal/be;)V

    invoke-static {v0}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/z;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method
