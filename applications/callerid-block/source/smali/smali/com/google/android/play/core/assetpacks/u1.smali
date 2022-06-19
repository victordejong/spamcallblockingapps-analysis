.class final Lcom/google/android/play/core/assetpacks/u1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Lcom/google/android/play/core/internal/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/v;

.field private final b:Lcom/google/android/play/core/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/p0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/a;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/u1;->c:Lcom/google/android/play/core/internal/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/v;Lcom/google/android/play/core/internal/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/v;",
            "Lcom/google/android/play/core/internal/p0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/u1;->a:Lcom/google/android/play/core/assetpacks/v;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/u1;->b:Lcom/google/android/play/core/internal/p0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/t1;)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/u1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/t1;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/t1;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/v;->t(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/u1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/t1;->c:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/t1;->d:J

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/t1;->h:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/v;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/t1;->j:Ljava/io/InputStream;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/t1;->g:I

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
    new-instance v5, Lcom/google/android/play/core/assetpacks/x;

    invoke-direct {v5, v0, v7}, Lcom/google/android/play/core/assetpacks/x;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/u1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v10, p1, Lcom/google/android/play/core/assetpacks/t1;->e:I

    iget-wide v11, p1, Lcom/google/android/play/core/assetpacks/t1;->f:J

    iget-object v13, p1, Lcom/google/android/play/core/assetpacks/t1;->h:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/v;->v(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v13, Lcom/google/android/play/core/assetpacks/w1;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/u1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v8, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v9, p1, Lcom/google/android/play/core/assetpacks/t1;->e:I

    iget-wide v10, p1, Lcom/google/android/play/core/assetpacks/t1;->f:J

    iget-object v12, p1, Lcom/google/android/play/core/assetpacks/t1;->h:Ljava/lang/String;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/play/core/assetpacks/w1;-><init>(Lcom/google/android/play/core/assetpacks/v;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v6, Lcom/google/android/play/core/assetpacks/m0;

    invoke-direct {v6, v0, v13}, Lcom/google/android/play/core/assetpacks/m0;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/w1;)V

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/t1;->i:J

    invoke-static {v5, v4, v6, v7, v8}, Lcom/google/android/play/core/internal/d0;->l(Lcom/google/android/play/core/internal/f0;Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v13, v3}, Lcom/google/android/play/core/assetpacks/w1;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v0, Lcom/google/android/play/core/assetpacks/u1;->c:Lcom/google/android/play/core/internal/a;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/t1;->h:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "Patching and extraction finished for slice %s of pack %s."

    invoke-virtual {v0, v5, v4}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/u1;->b:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/r2;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/b1;->a:I

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/t1;->h:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/play/core/assetpacks/r2;->g(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/t1;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/u1;->c:Lcom/google/android/play/core/internal/a;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/t1;->h:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "Could not close file for slice %s of pack %s."

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

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
    invoke-static {v0, v4}, Lcom/google/android/play/core/internal/n0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v4, Lcom/google/android/play/core/assetpacks/u1;->c:Lcom/google/android/play/core/internal/a;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "IOException during patching %s."

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/play/core/assetpacks/bk;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/t1;->h:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error patching slice %s of pack %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/b1;->a:I

    invoke-direct {v4, v1, v0, p1}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
.end method
