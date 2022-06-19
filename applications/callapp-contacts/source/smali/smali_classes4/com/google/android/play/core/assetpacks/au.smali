.class final synthetic Lcom/google/android/play/core/assetpacks/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/ba;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bb;

.field private final b:Ljava/util/List;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/au;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/au;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/au;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/util/List;[B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/au;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/au;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/au;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/google/android/play/core/assetpacks/au;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/au;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/au;->b:Ljava/util/List;

    .line 1000
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/bb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/ay;

    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/ax;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/ay;

    if-nez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    iget v5, v5, Lcom/google/android/play/core/assetpacks/ay;->a:I

    :goto_1
    iget v6, v3, Lcom/google/android/play/core/assetpacks/ay;->a:I

    if-ge v5, v6, :cond_0

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/au;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/au;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/bb;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
