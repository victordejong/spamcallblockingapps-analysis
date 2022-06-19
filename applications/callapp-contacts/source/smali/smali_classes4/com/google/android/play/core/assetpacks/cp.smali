.class public final Lcom/google/android/play/core/assetpacks/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cp;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cp;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/ck;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
