.class public abstract Lcom/google/android/play/core/assetpacks/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/ap;Ljava/util/List;Lcom/google/android/play/core/assetpacks/u;)Lcom/google/android/play/core/assetpacks/c;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/assetpacks/ap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/u;",
            ")",
            "Lcom/google/android/play/core/assetpacks/c;"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "pack_names"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-static {p0, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/b;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/ap;Lcom/google/android/play/core/assetpacks/u;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const-string v14, ""

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/google/android/play/core/assetpacks/b;->a(Ljava/lang/String;IIJJDILjava/lang/String;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v1, "total_bytes_to_download"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1000
    new-instance v3, Lcom/google/android/play/core/assetpacks/ac;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/ac;-><init>(JLjava/util/Map;)V

    return-object v3
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/b;",
            ">;"
        }
    .end annotation
.end method
