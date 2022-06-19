.class final synthetic Lcom/google/android/play/core/assetpacks/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/s;

.field private final c:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p;->b:Lcom/google/android/play/core/assetpacks/s;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/p;->c:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p;->b:Lcom/google/android/play/core/assetpacks/s;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p;->c:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1}, Le/c/a/c/a/a/c;->d(Ljava/lang/Object;)V

    return-void
.end method
