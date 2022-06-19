.class public final Lcom/google/android/play/core/appupdate/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/appupdate/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/r;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/r;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/appupdate/e;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/h;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/h;->b:Lcom/google/android/play/core/internal/be;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/h;->c:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/h;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/h;->b:Lcom/google/android/play/core/internal/be;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/appupdate/e;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/h;->c:Lcom/google/android/play/core/internal/be;

    check-cast v2, Lcom/google/android/play/core/appupdate/k;

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/k;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/appupdate/g;

    check-cast v0, Lcom/google/android/play/core/appupdate/r;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/appupdate/g;-><init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/appupdate/e;Landroid/content/Context;)V

    return-object v3
.end method
