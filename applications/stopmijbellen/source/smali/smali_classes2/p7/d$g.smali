.class public final Lp7/d$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lp7/b;

.field public final c:Ljava/lang/String;

.field public final d:Lp7/b;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lp7/b;Ln7/h;Lp7/b;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp7/d$g;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lp7/d$g;->b:Lp7/b;

    .line 16
    iget-object p1, p3, Ln7/h;->b:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lp7/d$g;->c:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lp7/d$g;->d:Lp7/b;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 2
    :try_start_0
    new-instance v3, Lp7/f;

    sget-object v4, Lu7/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Lp7/f;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v3}, Lp7/f;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lp7/d$g;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v3}, Lp7/f;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lp7/d$g;->c:Ljava/lang/String;

    .line 5
    new-instance v4, Lp7/b;

    invoke-direct {v4}, Lp7/b;-><init>()V

    iput-object v4, p0, Lp7/d$g;->b:Lp7/b;

    .line 6
    invoke-virtual {v3}, Lp7/f;->readInt()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 7
    iget-object v6, p0, Lp7/d$g;->b:Lp7/b;

    invoke-virtual {v3}, Lp7/f;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lp7/b;->b(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v4, Lp7/b;

    invoke-direct {v4}, Lp7/b;-><init>()V

    iput-object v4, p0, Lp7/d$g;->d:Lp7/b;

    .line 9
    invoke-virtual {v3}, Lp7/f;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lp7/b;->h(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lp7/f;->readInt()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 11
    iget-object v6, p0, Lp7/d$g;->d:Lp7/b;

    invoke-virtual {v3}, Lp7/f;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lp7/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v0

    aput-object p1, v2, v1

    .line 12
    invoke-static {v2}, Ly/d;->e([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v4, v3

    const/4 v3, 0x0

    :goto_2
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v0

    aput-object p1, v2, v1

    invoke-static {v2}, Ly/d;->e([Ljava/io/Closeable;)V

    throw v4
.end method


# virtual methods
.method public a(Lp7/d$i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lp7/d$i;->b(I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lu7/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lp7/d$g;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp7/d$g;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp7/d$g;->b:Lp7/b;

    invoke-virtual {v3}, Lp7/b;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lp7/d$g;->b:Lp7/b;

    invoke-virtual {v3}, Lp7/b;->f()I

    move-result v3

    const-string v4, ": "

    if-ge p1, v3, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lp7/d$g;->b:Lp7/b;

    invoke-virtual {v5, p1}, Lp7/b;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lp7/d$g;->b:Lp7/b;

    .line 8
    invoke-virtual {v4, p1}, Lp7/b;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp7/d$g;->d:Lp7/b;

    .line 11
    iget-object v3, v3, Lp7/b;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp7/d$g;->d:Lp7/b;

    invoke-virtual {v3}, Lp7/b;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    :goto_1
    iget-object p1, p0, Lp7/d$g;->d:Lp7/b;

    invoke-virtual {p1}, Lp7/b;->f()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp7/d$g;->d:Lp7/b;

    invoke-virtual {v3, v0}, Lp7/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp7/d$g;->d:Lp7/b;

    .line 16
    invoke-virtual {v3, v0}, Lp7/b;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p0, Lp7/d$g;->a:Ljava/lang/String;

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    const-string p1, "null\n"

    .line 20
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "-1\n"

    .line 21
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 23
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-void
.end method
