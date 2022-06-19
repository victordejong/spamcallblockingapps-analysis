.class final synthetic Lcom/google/android/play/core/assetpacks/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/g1;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/g1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d1;->b:Lcom/google/android/play/core/assetpacks/g1;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/d1;->c:I

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/d1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d1;->b:Lcom/google/android/play/core/assetpacks/g1;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/d1;->c:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/d1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/g1;->j(ILjava/lang/String;)V

    return-void
.end method
