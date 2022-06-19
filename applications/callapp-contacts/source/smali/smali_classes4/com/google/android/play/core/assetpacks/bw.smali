.class final Lcom/google/android/play/core/assetpacks/bw;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/play/core/internal/h;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/w;

.field private final c:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/w;Lcom/google/android/play/core/internal/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/w;",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/w;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/bw;->c:Lcom/google/android/play/core/internal/ba;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/bv;)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/w;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/bv;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/bv;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/w;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/bv;->a:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/bv;->b:J

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/bv;->f:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/bv;->h:Ljava/io/InputStream;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/bv;->e:I

    if-eq v5, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    const/16 v6, 0x2000

    invoke-direct {v5, v4, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v5

    :goto_0
    :try_start_1
    new-instance v5, Lcom/google/android/play/core/assetpacks/y;

    invoke-direct {v5, v0, v7}, Lcom/google/android/play/core/assetpacks/y;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/w;

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    iget v10, p1, Lcom/google/android/play/core/assetpacks/bv;->c:I

    iget-wide v11, p1, Lcom/google/android/play/core/assetpacks/bv;->d:J

    iget-object v13, p1, Lcom/google/android/play/core/assetpacks/bv;->f:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v13, Lcom/google/android/play/core/assetpacks/by;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/w;

    iget-object v8, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    iget v9, p1, Lcom/google/android/play/core/assetpacks/bv;->c:I

    iget-wide v10, p1, Lcom/google/android/play/core/assetpacks/bv;->d:J

    iget-object v12, p1, Lcom/google/android/play/core/assetpacks/bv;->f:Ljava/lang/String;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/play/core/assetpacks/by;-><init>(Lcom/google/android/play/core/assetpacks/w;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v6, Lcom/google/android/play/core/assetpacks/ao;

    invoke-direct {v6, v0, v13}, Lcom/google/android/play/core/assetpacks/ao;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/by;)V

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/bv;->g:J

    invoke-static {v5, v4, v6, v7, v8}, Lcom/google/android/play/core/internal/ah;->a(Lcom/google/android/play/core/internal/ap;Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v13, v3}, Lcom/google/android/play/core/assetpacks/by;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v0, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/h;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/bv;->f:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "Patching and extraction finished for slice %s of pack %s."

    invoke-virtual {v0, v5, v4}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bw;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/cs;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/bv;->j:I

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/bv;->f:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/play/core/assetpacks/cs;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/bv;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/h;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/bv;->f:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "Could not close file for slice %s of pack %s."

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v0, v4}, Lcom/google/android/play/core/internal/ay;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v4, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/h;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "IOException during patching %s."

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/play/core/assetpacks/al;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/bv;->f:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/bv;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error patching slice %s of pack %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/bv;->j:I

    invoke-direct {v4, v1, v0, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
.end method
