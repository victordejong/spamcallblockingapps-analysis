.class final Lcom/google/android/play/core/assetpacks/am;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/play/core/internal/h;


# instance fields
.field final b:Lcom/google/android/play/core/assetpacks/ak;

.field final c:Lcom/google/android/play/core/assetpacks/cc;

.field final d:Lcom/google/android/play/core/assetpacks/bn;

.field final e:Lcom/google/android/play/core/assetpacks/bs;

.field final f:Lcom/google/android/play/core/assetpacks/bw;

.field final g:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/google/android/play/core/assetpacks/be;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcom/google/android/play/core/assetpacks/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "ExtractorLooper"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/am;->a:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/assetpacks/ak;Lcom/google/android/play/core/assetpacks/cc;Lcom/google/android/play/core/assetpacks/bn;Lcom/google/android/play/core/assetpacks/bs;Lcom/google/android/play/core/assetpacks/bw;Lcom/google/android/play/core/assetpacks/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/bb;",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/ak;",
            "Lcom/google/android/play/core/assetpacks/cc;",
            "Lcom/google/android/play/core/assetpacks/bn;",
            "Lcom/google/android/play/core/assetpacks/bs;",
            "Lcom/google/android/play/core/assetpacks/bw;",
            "Lcom/google/android/play/core/assetpacks/be;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/am;->j:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/am;->g:Lcom/google/android/play/core/internal/ba;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/am;->b:Lcom/google/android/play/core/assetpacks/ak;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/am;->c:Lcom/google/android/play/core/assetpacks/cc;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/am;->d:Lcom/google/android/play/core/assetpacks/bn;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/am;->e:Lcom/google/android/play/core/assetpacks/bs;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/am;->f:Lcom/google/android/play/core/assetpacks/bw;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/am;->h:Lcom/google/android/play/core/assetpacks/be;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/am;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Exception;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/am;->j:Lcom/google/android/play/core/assetpacks/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/bb;->c(I)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/am;->j:Lcom/google/android/play/core/assetpacks/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/bb;->a(I)V
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/al; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lcom/google/android/play/core/assetpacks/am;->a:Lcom/google/android/play/core/internal/h;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Error during error handling: %s"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
