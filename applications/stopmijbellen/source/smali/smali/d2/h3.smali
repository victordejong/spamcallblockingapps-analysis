.class public Ld2/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ld2/h3;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static b(Ld2/h3;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ld2/h3;->b:Z

    .line 2
    iget-object v0, p0, Ld2/h3;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ld2/h3;->b:Z

    .line 4
    iget-object p0, p0, Ld2/h3;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static c(Ld2/h3;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/h3;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ld2/h3;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld2/h3;->b:Z

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Ld2/h3;->a:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-direct {p2, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    .line 5
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method

.method public e(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 5
    array-length v2, v1

    if-lez v2, :cond_1

    .line 6
    new-instance v2, Ljava/io/File;

    aget-object v1, v1, v0

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v2}, Ld2/h3;->e(Ljava/io/File;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_2
    return v0

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    new-instance v0, Ld2/h3$a;

    invoke-direct {v0, p0}, Ld2/h3$a;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.save"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 2
    new-instance v0, Ld2/h3$b;

    invoke-direct {v0, p0}, Ld2/h3$b;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.delete"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 3
    new-instance v0, Ld2/h3$c;

    invoke-direct {v0, p0}, Ld2/h3$c;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.listing"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 4
    new-instance v0, Ld2/h3$d;

    invoke-direct {v0, p0}, Ld2/h3$d;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.load"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 5
    new-instance v0, Ld2/h3$e;

    invoke-direct {v0, p0}, Ld2/h3$e;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.rename"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 6
    new-instance v0, Ld2/h3$f;

    invoke-direct {v0, p0}, Ld2/h3$f;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.exists"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 7
    new-instance v0, Ld2/h3$g;

    invoke-direct {v0, p0}, Ld2/h3$g;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.extract"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 8
    new-instance v0, Ld2/h3$h;

    invoke-direct {v0, p0}, Ld2/h3$h;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.unpack_bundle"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 9
    new-instance v0, Ld2/h3$i;

    invoke-direct {v0, p0}, Ld2/h3$i;-><init>(Ld2/h3;)V

    const-string v1, "FileSystem.create_directory"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    return-void
.end method
