.class public final Lcom/google/android/play/core/assetpacks/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/play/core/assetpacks/ck;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/ck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    return-void
.end method

.method public static a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;
    .locals 0

    .line 1000
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/ck;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
