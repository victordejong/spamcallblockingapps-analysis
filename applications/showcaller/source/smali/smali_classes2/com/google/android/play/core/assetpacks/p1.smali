.class final synthetic Lcom/google/android/play/core/assetpacks/p1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/play/core/assetpacks/v;


# direct methods
.method private constructor <init>(Lcom/google/android/play/core/assetpacks/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p1;->d:Lcom/google/android/play/core/assetpacks/v;

    return-void
.end method

.method static a(Lcom/google/android/play/core/assetpacks/v;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/p1;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/p1;-><init>(Lcom/google/android/play/core/assetpacks/v;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p1;->d:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/v;->F()V

    return-void
.end method
