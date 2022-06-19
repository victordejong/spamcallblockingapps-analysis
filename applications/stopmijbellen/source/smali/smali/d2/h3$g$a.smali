.class public Ld2/h3$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3$g;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/h3$g;


# direct methods
.method public constructor <init>(Ld2/h3$g;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$g$a;->b:Ld2/h3$g;

    iput-object p2, p0, Ld2/h3$g$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Ld2/h3$g$a;->b:Ld2/h3$g;

    iget-object v0, v0, Ld2/h3$g;->a:Ld2/h3;

    iget-object v1, p0, Ld2/h3$g$a;->a:Ld2/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "size"

    const-string v2, "success"

    .line 3
    iget-object v3, v1, Ld2/t0;->b:Ld2/f4;

    const-string v4, "filepath"

    .line 4
    invoke-virtual {v3, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->f()Ld2/f4;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "offset"

    .line 6
    invoke-static {v3, v8}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v8

    .line 7
    invoke-static {v3, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v9

    const-string v10, "gunzip"

    .line 8
    invoke-static {v3, v10}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v10

    const-string v11, "output_filepath"

    .line 9
    invoke-virtual {v3, v11}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v11, Ld2/a3;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12, v8, v9}, Ld2/a3;-><init>(Ljava/io/InputStream;II)V

    const/16 v4, 0x400

    if-eqz v10, :cond_0

    .line 11
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v11, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v11, v8

    :cond_0
    const-string v8, ""

    .line 12
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v8, v4, [B

    .line 14
    :goto_0
    invoke-virtual {v11, v8, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ltz v9, :cond_1

    .line 15
    new-instance v10, Ljava/lang/String;

    const-string v12, "ISO-8859-1"

    invoke-direct {v10, v8, v7, v9, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v5, v0, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v0, "data"

    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 18
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-array v3, v4, [B

    const/4 v9, 0x0

    .line 19
    :goto_1
    invoke-virtual {v11, v3, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-ltz v10, :cond_3

    .line 20
    invoke-virtual {v8, v3, v7, v10}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v9, v10

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 22
    invoke-static {v5, v0, v9}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 23
    :goto_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 24
    invoke-static {v5, v2, v6}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 25
    invoke-virtual {v1, v5}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 26
    :catch_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    const-string v3, "Out of memory error - disabling AdColony."

    .line 27
    invoke-virtual {v0, v7, v7, v3, v7}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 28
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 29
    iput-boolean v6, v0, Ld2/f1;->C:Z

    .line 30
    invoke-static {v5, v2, v7, v1, v5}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    goto :goto_3

    .line 31
    :catch_1
    invoke-static {v5, v2, v7, v1, v5}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    .line 32
    :goto_3
    iget-object v0, p0, Ld2/h3$g$a;->b:Ld2/h3$g;

    iget-object v0, v0, Ld2/h3$g;->a:Ld2/h3;

    invoke-static {v0}, Ld2/h3;->b(Ld2/h3;)V

    return-void
.end method
