.class final synthetic Lcom/google/android/play/core/assetpacks/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/t;

.field private final b:Lcom/google/android/play/core/assetpacks/b;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/t;Lcom/google/android/play/core/assetpacks/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q;->a:Lcom/google/android/play/core/assetpacks/t;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/q;->b:Lcom/google/android/play/core/assetpacks/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q;->a:Lcom/google/android/play/core/assetpacks/t;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/q;->b:Lcom/google/android/play/core/assetpacks/b;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method
