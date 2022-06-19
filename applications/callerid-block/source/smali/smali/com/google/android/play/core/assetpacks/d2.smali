.class final synthetic Lcom/google/android/play/core/assetpacks/d2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/b;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/v;


# direct methods
.method private constructor <init>(Lcom/google/android/play/core/assetpacks/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d2;->a:Lcom/google/android/play/core/assetpacks/v;

    return-void
.end method

.method static b(Lcom/google/android/play/core/assetpacks/v;)Lcom/google/android/play/core/tasks/b;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/d2;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/d2;-><init>(Lcom/google/android/play/core/assetpacks/v;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d2;->a:Lcom/google/android/play/core/assetpacks/v;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/v;->a(Ljava/util/List;)V

    return-void
.end method
