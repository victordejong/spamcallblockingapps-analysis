.class public final Lcom/google/android/play/core/splitinstall/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/splitinstall/o;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/splitinstall/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/p;->a:Lcom/google/android/play/core/internal/be;

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

    iput p2, p0, Lcom/google/android/play/core/splitinstall/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/p;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/splitinstall/p;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/p;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/splitinstall/an;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/an;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/splitinstall/n;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/n;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/p;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/splitinstall/an;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/an;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/splitinstall/o;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/o;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
