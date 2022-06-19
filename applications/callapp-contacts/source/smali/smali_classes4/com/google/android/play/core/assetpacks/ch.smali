.class final Lcom/google/android/play/core/assetpacks/ch;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/google/android/play/core/internal/h;


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

.field final c:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/play/core/assetpacks/t;

.field private final f:Lcom/google/android/play/core/splitinstall/ae;

.field private final g:Lcom/google/android/play/core/assetpacks/bb;

.field private final h:Lcom/google/android/play/core/assetpacks/ap;

.field private final i:Lcom/google/android/play/core/assetpacks/af;

.field private final j:Lcom/google/android/play/core/common/c;

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/ch;->d:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/w;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/assetpacks/t;Lcom/google/android/play/core/splitinstall/ae;Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/assetpacks/ap;Lcom/google/android/play/core/assetpacks/af;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/common/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/w;",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/t;",
            "Lcom/google/android/play/core/splitinstall/ae;",
            "Lcom/google/android/play/core/assetpacks/bb;",
            "Lcom/google/android/play/core/assetpacks/ap;",
            "Lcom/google/android/play/core/assetpacks/af;",
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/common/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/ch;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ch;->a:Lcom/google/android/play/core/assetpacks/w;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ch;->b:Lcom/google/android/play/core/internal/ba;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/ch;->e:Lcom/google/android/play/core/assetpacks/t;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/ch;->f:Lcom/google/android/play/core/splitinstall/ae;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/ch;->g:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/ch;->h:Lcom/google/android/play/core/assetpacks/ap;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/ch;->i:Lcom/google/android/play/core/assetpacks/af;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/ch;->c:Lcom/google/android/play/core/internal/ba;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/ch;->j:Lcom/google/android/play/core/common/c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/assetpacks/ch;)Lcom/google/android/play/core/assetpacks/af;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/ch;->i:Lcom/google/android/play/core/assetpacks/af;

    return-object p0
.end method

.method private final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ch;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/ce;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/play/core/assetpacks/ce;-><init>(Lcom/google/android/play/core/assetpacks/ch;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final synthetic a(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/google/android/play/core/assetpacks/ch;->d:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Could not sync active asset packs. %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ch;->e:Lcom/google/android/play/core/assetpacks/t;

    invoke-virtual {v0}, Lcom/google/android/play/core/a/c;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ch;->e:Lcom/google/android/play/core/assetpacks/t;

    invoke-virtual {v1, p1}, Lcom/google/android/play/core/a/c;->a(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/ch;->a()V

    :cond_0
    return-void
.end method
