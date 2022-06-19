.class public final Lcom/google/android/play/core/assetpacks/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/be;

.field private final b:Lcom/google/android/play/core/internal/be;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/ch;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/cm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;[B)V"
        }
    .end annotation

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/cm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/ap;",
            ">;[C)V"
        }
    .end annotation

    const/4 p3, 0x2

    iput p3, p0, Lcom/google/android/play/core/assetpacks/cm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;[I)V"
        }
    .end annotation

    const/4 p3, 0x4

    iput p3, p0, Lcom/google/android/play/core/assetpacks/cm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/bu;",
            ">;[S)V"
        }
    .end annotation

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/android/play/core/assetpacks/cm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/google/android/play/core/assetpacks/cm;->c:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    invoke-static {v1}, Lcom/google/android/play/core/internal/bc;->b(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/ba;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/assetpacks/bw;

    check-cast v0, Lcom/google/android/play/core/assetpacks/w;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/bw;-><init>(Lcom/google/android/play/core/assetpacks/w;Lcom/google/android/play/core/internal/ba;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/assetpacks/w;

    check-cast v1, Lcom/google/android/play/core/assetpacks/bu;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/w;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/bu;)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    .line 2000
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/assetpacks/p;

    check-cast v1, Lcom/google/android/play/core/assetpacks/ap;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/p;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/ap;)V

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    .line 3000
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/assetpacks/ab;

    check-cast v1, Lcom/google/android/play/core/assetpacks/w;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/ab;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/w;)V

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/internal/be;

    check-cast v1, Lcom/google/android/play/core/assetpacks/co;

    .line 4000
    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lcom/google/android/play/core/assetpacks/ch;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.play.core.assetpacks.AssetPackExtractionService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/google/android/play/core/internal/ah;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.play.core.assetpacks.ExtractionForegroundService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/google/android/play/core/internal/ah;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    invoke-static {v1}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;)V

    return-object v0
.end method
