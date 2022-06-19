.class final Lcom/google/android/play/core/assetpacks/bs;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/play/core/assetpacks/w;

.field final b:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/google/android/play/core/assetpacks/bb;

.field final d:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/google/android/play/core/assetpacks/ap;

.field final f:Lcom/google/android/play/core/common/c;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/w;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/assetpacks/ap;Lcom/google/android/play/core/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/w;",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/bb;",
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/ap;",
            "Lcom/google/android/play/core/common/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/bs;->b:Lcom/google/android/play/core/internal/ba;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/bs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/bs;->d:Lcom/google/android/play/core/internal/ba;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/bs;->e:Lcom/google/android/play/core/assetpacks/ap;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/bs;->f:Lcom/google/android/play/core/common/c;

    return-void
.end method
