.class public final Lcom/google/android/play/core/assetpacks/m2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/s0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/s0<",
        "Lcom/google/android/play/core/assetpacks/r2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/s0<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/s0<",
            "Lcom/google/android/play/core/assetpacks/o;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/s0<",
            "Lcom/google/android/play/core/assetpacks/g1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/s0;Lcom/google/android/play/core/internal/s0;Lcom/google/android/play/core/internal/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/s0<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/play/core/internal/s0<",
            "Lcom/google/android/play/core/assetpacks/o;",
            ">;",
            "Lcom/google/android/play/core/internal/s0<",
            "Lcom/google/android/play/core/assetpacks/g1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m2;->a:Lcom/google/android/play/core/internal/s0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/m2;->b:Lcom/google/android/play/core/internal/s0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/m2;->c:Lcom/google/android/play/core/internal/s0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m2;->a:Lcom/google/android/play/core/internal/s0;

    check-cast v0, Lcom/google/android/play/core/assetpacks/n2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/n2;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m2;->b:Lcom/google/android/play/core/internal/s0;

    invoke-static {v1}, Lcom/google/android/play/core/internal/r0;->c(Lcom/google/android/play/core/internal/s0;)Lcom/google/android/play/core/internal/p0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/m2;->c:Lcom/google/android/play/core/internal/s0;

    invoke-static {v2}, Lcom/google/android/play/core/internal/r0;->c(Lcom/google/android/play/core/internal/s0;)Lcom/google/android/play/core/internal/p0;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/i2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/android/play/core/assetpacks/r2;

    invoke-static {v0}, Lcom/google/android/play/core/internal/d0;->k(Ljava/lang/Object;)V

    return-object v0
.end method
