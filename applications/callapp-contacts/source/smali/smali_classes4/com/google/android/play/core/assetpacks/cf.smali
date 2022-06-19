.class final synthetic Lcom/google/android/play/core/assetpacks/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/tasks/c;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/w;


# direct methods
.method private constructor <init>(Lcom/google/android/play/core/assetpacks/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/w;

    return-void
.end method

.method static a(Lcom/google/android/play/core/assetpacks/w;)Lcom/google/android/play/core/tasks/c;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/cf;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/cf;-><init>(Lcom/google/android/play/core/assetpacks/w;)V

    return-object v0
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/w;

    check-cast p1, Ljava/util/List;

    .line 1000
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/w;->b:Lcom/google/android/play/core/assetpacks/bu;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/bu;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/w;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/io/File;)J

    move-result-wide v3

    int-to-long v5, v1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
