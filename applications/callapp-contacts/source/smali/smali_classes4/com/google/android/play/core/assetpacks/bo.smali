.class public final Lcom/google/android/play/core/assetpacks/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/assetpacks/bn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/be;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/be;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/bo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;[B)V"
        }
    .end annotation

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/assetpacks/bo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;[C)V"
        }
    .end annotation

    const/4 p2, 0x2

    iput p2, p0, Lcom/google/android/play/core/assetpacks/bo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;[S)V"
        }
    .end annotation

    const/4 p2, 0x3

    iput p2, p0, Lcom/google/android/play/core/assetpacks/bo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/bo;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/cc;

    check-cast v0, Lcom/google/android/play/core/assetpacks/w;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/cc;-><init>(Lcom/google/android/play/core/assetpacks/w;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/bu;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/bu;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    invoke-static {v0}, Lcom/google/android/play/core/internal/bc;->b(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/ba;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/ad;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/ad;-><init>(Lcom/google/android/play/core/internal/ba;)V

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bo;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/bn;

    check-cast v0, Lcom/google/android/play/core/assetpacks/w;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/bn;-><init>(Lcom/google/android/play/core/assetpacks/w;)V

    return-object v1
.end method
