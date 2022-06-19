.class public final Lj4/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lp6/c;


# instance fields
.field public final a:Lj4/w;

.field public final b:Lo4/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp6/c;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj4/v1;->c:Lp6/c;

    return-void
.end method

.method public constructor <init>(Lj4/w;Lo4/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/v1;->a:Lj4/w;

    iput-object p2, p0, Lj4/v1;->b:Lo4/p;

    return-void
.end method


# virtual methods
.method public final a(Lj4/u1;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lj4/v1;->a:Lj4/w;

    iget-object v1, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v2, p1, Lj4/u1;->c:I

    iget-wide v3, p1, Lj4/u1;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lj4/w;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lj4/v1;->a:Lj4/w;

    iget-object v2, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v3, p1, Lj4/u1;->c:I

    iget-wide v4, p1, Lj4/u1;->d:J

    iget-object v6, p1, Lj4/u1;->h:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    .line 2
    invoke-virtual {v1, v2, v3, v4, v5}, Lj4/w;->o(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lj4/u1;->j:Ljava/io/InputStream;

    iget v5, p1, Lj4/u1;->g:I

    if-eq v5, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    const/16 v6, 0x2000

    .line 4
    invoke-direct {v5, v4, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v5

    :goto_0
    :try_start_1
    new-instance v5, Lj4/y;

    .line 5
    invoke-direct {v5, v0, v7}, Lj4/y;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v8, p0, Lj4/v1;->a:Lj4/w;

    iget-object v9, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v10, p1, Lj4/u1;->e:I

    iget-wide v11, p1, Lj4/u1;->f:J

    iget-object v13, p1, Lj4/u1;->h:Ljava/lang/String;

    .line 6
    invoke-virtual/range {v8 .. v13}, Lj4/w;->s(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    new-instance v13, Lj4/z1;

    iget-object v7, p0, Lj4/v1;->a:Lj4/w;

    iget-object v8, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v9, p1, Lj4/u1;->e:I

    iget-wide v10, p1, Lj4/u1;->f:J

    iget-object v12, p1, Lj4/u1;->h:Ljava/lang/String;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lj4/z1;-><init>(Lj4/w;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v6, Lj4/q0;

    .line 10
    invoke-direct {v6, v0, v13}, Lj4/q0;-><init>(Ljava/io/File;Lj4/z1;)V

    iget-wide v7, p1, Lj4/u1;->i:J

    invoke-static {v5, v4, v6, v7, v8}, Lo4/m;->a(Lo4/n;Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 11
    invoke-virtual {v13, v3}, Lj4/z1;->h(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v0, Lj4/v1;->c:Lp6/c;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lj4/u1;->h:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p1, Lj4/c1;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "Patching and extraction finished for slice %s of pack %s."

    .line 13
    invoke-virtual {v0, v5, v4}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lj4/v1;->b:Lo4/p;

    .line 14
    invoke-interface {v0}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj4/l2;

    iget v4, p1, Lj4/c1;->a:I

    iget-object v5, p1, Lj4/c1;->b:Ljava/lang/String;

    iget-object v6, p1, Lj4/u1;->h:Ljava/lang/String;

    .line 15
    invoke-interface {v0, v4, v5, v6, v3}, Lj4/l2;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v0, p1, Lj4/u1;->j:Ljava/io/InputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 17
    :catch_0
    sget-object v0, Lj4/v1;->c:Lp6/c;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lj4/u1;->h:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object p1, p1, Lj4/c1;->b:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "Could not close file for slice %s of pack %s."

    .line 18
    invoke-virtual {v0, p1, v1}, Lp6/c;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 20
    sget-object v4, Lj4/v1;->c:Lp6/c;

    new-array v5, v2, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "IOException during patching %s."

    invoke-virtual {v4, v6, v5}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Lj4/n0;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lj4/u1;->h:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v3, p1, Lj4/c1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error patching slice %s of pack %s."

    .line 22
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v4, v1, v0, p1}, Lj4/n0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
.end method
