.class public final Lcom/google/android/play/core/appupdate/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/appupdate/c;",
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
            "Lcom/google/android/play/core/appupdate/g;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;[B)V"
        }
    .end annotation

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/appupdate/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

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

    iput p2, p0, Lcom/google/android/play/core/appupdate/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;[S)V"
        }
    .end annotation

    const/4 p2, 0x3

    iput p2, p0, Lcom/google/android/play/core/appupdate/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public static a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/appupdate/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/play/core/appupdate/j;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/appupdate/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/appupdate/j;-><init>(Lcom/google/android/play/core/internal/be;[S)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/appupdate/j;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ae;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/ae;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/appupdate/k;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/k;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/appupdate/t;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/appupdate/t;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/appupdate/k;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/k;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/appupdate/e;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/appupdate/e;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/g;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;)V

    return-object v0
.end method
