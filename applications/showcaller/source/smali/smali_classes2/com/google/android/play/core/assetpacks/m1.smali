.class public final Lcom/google/android/play/core/assetpacks/m1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/s0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/s0<",
        "Lcom/google/android/play/core/assetpacks/l1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/s0;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/s0<",
            "Lcom/google/android/play/core/assetpacks/v;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/m1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/s0;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/s0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;[B)V"
        }
    .end annotation

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/assetpacks/m1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/s0;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/s0<",
            "Landroid/content/Context;",
            ">;[C)V"
        }
    .end annotation

    const/4 p2, 0x2

    iput p2, p0, Lcom/google/android/play/core/assetpacks/m1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/s0;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/s0<",
            "Lcom/google/android/play/core/assetpacks/v;",
            ">;[S)V"
        }
    .end annotation

    const/4 p2, 0x3

    iput p2, p0, Lcom/google/android/play/core/assetpacks/m1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/m1;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/s0;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/a2;

    check-cast v0, Lcom/google/android/play/core/assetpacks/v;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/a2;-><init>(Lcom/google/android/play/core/assetpacks/v;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    check-cast v0, Lcom/google/android/play/core/assetpacks/n2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/n2;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/s1;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/s1;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    invoke-static {v0}, Lcom/google/android/play/core/internal/r0;->c(Lcom/google/android/play/core/internal/s0;)Lcom/google/android/play/core/internal/p0;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/c0;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/c0;-><init>(Lcom/google/android/play/core/internal/p0;)V

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/internal/s0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/s0;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/l1;

    check-cast v0, Lcom/google/android/play/core/assetpacks/v;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/l1;-><init>(Lcom/google/android/play/core/assetpacks/v;)V

    return-object v1
.end method
