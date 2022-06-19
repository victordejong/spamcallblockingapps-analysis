.class public final Lcom/google/android/play/core/appupdate/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/internal/s0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/s0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/s0;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/s0;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/s0<",
            "Landroid/content/Context;",
            ">;[S)V"
        }
    .end annotation

    const/4 p2, 0x3

    iput p2, p0, Lcom/google/android/play/core/appupdate/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/d;->a:Lcom/google/android/play/core/internal/s0;

    return-void
.end method

.method public static b(Lcom/google/android/play/core/internal/s0;)Lcom/google/android/play/core/appupdate/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/s0<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/play/core/appupdate/d;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/appupdate/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/appupdate/d;-><init>(Lcom/google/android/play/core/internal/s0;[S)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/d;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/d;->a:Lcom/google/android/play/core/internal/s0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/s0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/play/core/splitinstall/j;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/j;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/d;->a:Lcom/google/android/play/core/internal/s0;

    check-cast v0, Lcom/google/android/play/core/appupdate/e;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/e;->b()Landroid/content/Context;

    throw v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/d;->a:Lcom/google/android/play/core/internal/s0;

    check-cast v0, Lcom/google/android/play/core/appupdate/e;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/e;->b()Landroid/content/Context;

    throw v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/d;->a:Lcom/google/android/play/core/internal/s0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/s0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/a;

    invoke-static {v0}, Lcom/google/android/play/core/internal/d0;->k(Ljava/lang/Object;)V

    return-object v0
.end method
