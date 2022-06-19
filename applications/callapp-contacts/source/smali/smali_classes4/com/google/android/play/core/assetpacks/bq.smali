.class final synthetic Lcom/google/android/play/core/assetpacks/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bs;

.field private final b:Lcom/google/android/play/core/assetpacks/bp;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bs;Lcom/google/android/play/core/assetpacks/bp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bq;->a:Lcom/google/android/play/core/assetpacks/bs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/bq;->b:Lcom/google/android/play/core/assetpacks/bp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bq;->a:Lcom/google/android/play/core/assetpacks/bs;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/bq;->b:Lcom/google/android/play/core/assetpacks/bp;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    iget v3, v1, Lcom/google/android/play/core/assetpacks/bp;->a:I

    iget-wide v4, v1, Lcom/google/android/play/core/assetpacks/bp;->b:J

    .line 2000
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "stale.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/io/File;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v10}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
