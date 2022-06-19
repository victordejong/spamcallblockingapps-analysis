.class final synthetic Lcom/google/android/play/core/assetpacks/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/ba;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bb;

.field private final b:Landroid/os/Bundle;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/ar;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ar;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ar;->b:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Landroid/os/Bundle;[B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/ar;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ar;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ar;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/core/assetpacks/ar;->c:I

    const/4 v2, 0x6

    const-string v3, "session_id"

    const-string v4, "status"

    const/4 v5, 0x1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/ar;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v6, v0, Lcom/google/android/play/core/assetpacks/ar;->b:Landroid/os/Bundle;

    .line 1000
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_0
    iget-object v7, v1, Lcom/google/android/play/core/assetpacks/bb;->e:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "chunk_intents"

    const/4 v10, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {v1, v3}, Lcom/google/android/play/core/assetpacks/bb;->b(I)Lcom/google/android/play/core/assetpacks/ay;

    move-result-object v7

    iget-object v11, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget-object v11, v11, Lcom/google/android/play/core/assetpacks/ax;->a:Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v11, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v11, v11, Lcom/google/android/play/core/assetpacks/ax;->c:I

    invoke-static {v11, v4}, Lcom/google/android/play/core/assetpacks/bj;->a(II)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v4, Lcom/google/android/play/core/assetpacks/bb;->a:Lcom/google/android/play/core/internal/h;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v8, v6, v10

    iget-object v8, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v8, v8, Lcom/google/android/play/core/assetpacks/ax;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    const-string v8, "Found stale update for session %s with status %d."

    invoke-virtual {v4, v8, v6}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/ax;->a:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/ax;->c:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/bb;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/cs;

    invoke-interface {v1, v3, v6}, Lcom/google/android/play/core/assetpacks/cs;->a(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    const/4 v7, 0x5

    if-ne v4, v7, :cond_2

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/bb;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/cs;

    invoke-interface {v1, v3}, Lcom/google/android/play/core/assetpacks/cs;->a(I)V

    goto/16 :goto_5

    :cond_2
    if-ne v4, v2, :cond_c

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/bb;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/cs;

    new-array v2, v5, [Ljava/lang/String;

    aput-object v6, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/cs;->a(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_3
    iget-object v2, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iput v4, v2, Lcom/google/android/play/core/assetpacks/ax;->c:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/bj;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/android/play/core/assetpacks/bb;->a(I)V

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/bb;->d:Lcom/google/android/play/core/assetpacks/ap;

    iget-object v2, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/ax;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/ap;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    iget-object v1, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/ax;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/az;

    iget-object v3, v7, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/ax;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/az;->a:Ljava/lang/String;

    invoke-static {v9, v3, v4}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/az;->d:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/play/core/assetpacks/aw;

    iput-boolean v5, v8, Lcom/google/android/play/core/assetpacks/aw;->a:Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/bb;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "pack_version"

    invoke-static {v2, v12}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v4, v12}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v2, "total_bytes_to_download"

    invoke-static {v2, v12}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v2, "slice_ids"

    invoke-static {v2, v12}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/bb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v12, v7}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/google/android/play/core/assetpacks/bb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    if-eqz v18, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    new-instance v10, Lcom/google/android/play/core/assetpacks/aw;

    invoke-direct {v10, v5}, Lcom/google/android/play/core/assetpacks/aw;-><init>(Z)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_9
    const-string v5, "uncompressed_hash_sha256"

    invoke-static {v5, v12, v7}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v5, "uncompressed_size"

    invoke-static {v5, v12, v7}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    const-string v5, "patch_format"

    invoke-static {v5, v12, v7}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_a

    new-instance v5, Lcom/google/android/play/core/assetpacks/az;

    const/16 v24, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v23, v11

    invoke-direct/range {v18 .. v25}, Lcom/google/android/play/core/assetpacks/az;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    const-string v5, "compression_format"

    invoke-static {v5, v12, v7}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    new-instance v5, Lcom/google/android/play/core/assetpacks/az;

    const/16 v25, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v23, v11

    invoke-direct/range {v18 .. v25}, Lcom/google/android/play/core/assetpacks/az;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    :goto_4
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_b
    new-instance v2, Lcom/google/android/play/core/assetpacks/ax;

    move-object v11, v2

    move-object/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcom/google/android/play/core/assetpacks/ax;-><init>(Ljava/lang/String;JIJLjava/util/List;)V

    new-instance v4, Lcom/google/android/play/core/assetpacks/ay;

    const-string v5, "app_version_code"

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v3, v5, v2}, Lcom/google/android/play/core/assetpacks/ay;-><init>(IILcom/google/android/play/core/assetpacks/ax;)V

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/bb;->e:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_d
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/ar;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v5, v0, Lcom/google/android/play/core/assetpacks/ar;->b:Landroid/os/Bundle;

    .line 2000
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_e
    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/bb;->e:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_f
    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/bb;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/ay;

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/ax;->c:I

    if-ne v3, v2, :cond_10

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_10
    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/bb;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/ax;->c:I

    invoke-static {v1, v2}, Lcom/google/android/play/core/assetpacks/bj;->a(II)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method
