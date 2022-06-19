.class final synthetic Lcom/google/android/play/core/assetpacks/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bi;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bi;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bf;->a:Lcom/google/android/play/core/assetpacks/bi;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/bf;->b:I

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/bf;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "total_bytes_to_download"

    const-string v2, "bytes_downloaded"

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/bf;->a:Lcom/google/android/play/core/assetpacks/bi;

    iget v4, v1, Lcom/google/android/play/core/assetpacks/bf;->b:I

    iget-object v5, v1, Lcom/google/android/play/core/assetpacks/bf;->c:Ljava/lang/String;

    .line 2000
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "app_version_code"

    iget-object v10, v3, Lcom/google/android/play/core/assetpacks/bi;->d:Lcom/google/android/play/core/assetpacks/bu;

    invoke-virtual {v10}, Lcom/google/android/play/core/assetpacks/bu;->a()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "session_id"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Lcom/google/android/play/core/assetpacks/bi;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v4

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_0

    aget-object v14, v4, v13

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v15

    add-long/2addr v11, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Lcom/google/android/play/core/internal/x;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "chunk_intents"

    invoke-static {v7, v5, v6}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7, v15}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v7, "uncompressed_hash_sha256"

    invoke-static {v7, v5, v6}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Lcom/google/android/play/core/assetpacks/bi;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v7, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "uncompressed_size"

    invoke-static {v7, v5, v6}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v8, v7, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "slice_ids"

    invoke-static {v4, v5}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "pack_version"

    invoke-static {v4, v5}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/google/android/play/core/assetpacks/bi;->d:Lcom/google/android/play/core/assetpacks/bu;

    invoke-virtual {v6}, Lcom/google/android/play/core/assetpacks/bu;->a()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v8, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "status"

    invoke-static {v4, v5}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v8, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "error_code"

    invoke-static {v4, v5}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v8, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v2, v5}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v11, v12}, Lcom/google/android/play/core/assetpacks/bi;->a(IJ)J

    move-result-wide v9

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v0, v5}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "pack_names"

    invoke-virtual {v8, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v6, v11, v12}, Lcom/google/android/play/core/assetpacks/bi;->a(IJ)J

    move-result-wide v4

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v8, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v3, Lcom/google/android/play/core/assetpacks/bi;->e:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/play/core/assetpacks/bh;

    invoke-direct {v4, v3, v0}, Lcom/google/android/play/core/assetpacks/bh;-><init>(Lcom/google/android/play/core/assetpacks/bi;Landroid/content/Intent;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/google/android/play/core/common/LocalTestingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1000
    sget-object v2, Lcom/google/android/play/core/assetpacks/bi;->a:Lcom/google/android/play/core/internal/h;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "notifyModuleCompleted failed"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
