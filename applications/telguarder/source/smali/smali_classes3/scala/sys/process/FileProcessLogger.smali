.class public Lscala/sys/process/FileProcessLogger;
.super Ljava/lang/Object;
.source "ProcessLogger.scala"

# interfaces
.implements Lscala/sys/process/ProcessLogger;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q3A!\u0001\u0002\u0001\u0013\t\tb)\u001b7f!J|7-Z:t\u0019><w-\u001a:\u000b\u0005\r!\u0011a\u00029s_\u000e,7o\u001d\u0006\u0003\u000b\u0019\t1a]=t\u0015\u00059\u0011!B:dC2\u000c7\u0001A\n\u0006\u0001)q!C\u0007\t\u0003\u00171i\u0011AB\u0005\u0003\u001b\u0019\u0011a!\u00118z%\u00164\u0007CA\u0008\u0011\u001b\u0005\u0011\u0011BA\t\u0003\u00055\u0001&o\\2fgNdunZ4feB\u00111\u0003G\u0007\u0002))\u0011QCF\u0001\u0003S>T\u0011aF\u0001\u0005U\u00064\u0018-\u0003\u0002\u001a)\tI1\t\\8tK\u0006\u0014G.\u001a\t\u0003\'mI!\u0001\u0008\u000b\u0003\u0013\u0019cWo\u001d5bE2,\u0007\u0002\u0003\u0010\u0001\u0005\u0003\u0005\u000b\u0011B\u0010\u0002\t\u0019LG.\u001a\t\u0003\'\u0001J!!\t\u000b\u0003\t\u0019KG.\u001a\u0005\u0006G\u0001!\t\u0001J\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005\u00152\u0003CA\u0008\u0001\u0011\u0015q\"\u00051\u0001 \u0011\u001dA\u0003A1A\u0005\n%\naa\u001e:ji\u0016\u0014X#\u0001\u0016\u0011\u0005MY\u0013B\u0001\u0017\u0015\u0005-\u0001&/\u001b8u/JLG/\u001a:\t\r9\u0002\u0001\u0015!\u0003+\u0003\u001d9(/\u001b;fe\u0002BQ\u0001\r\u0001\u0005\u0002E\n1a\\;u)\t\u0011T\u0007\u0005\u0002\u000cg%\u0011AG\u0002\u0002\u0005+:LG\u000f\u0003\u00047_\u0011\u0005\raN\u0001\u0002gB\u00191\u0002\u000f\u001e\n\u0005e2!\u0001\u0003\u001fcs:\u000cW.\u001a \u0011\u0005mrdBA\u0006=\u0013\tid!\u0001\u0004Qe\u0016$WMZ\u0005\u0003\u007f\u0001\u0013aa\u0015;sS:<\'BA\u001f\u0007\u0011\u0015\u0011\u0005\u0001\"\u0001D\u0003\r)\'O\u001d\u000b\u0003e\u0011CaAN!\u0005\u0002\u00049\u0004\"\u0002$\u0001\t\u00039\u0015A\u00022vM\u001a,\'/\u0006\u0002I\u0017R\u0011\u0011\n\u0016\t\u0003\u0015.c\u0001\u0001B\u0003M\u000b\n\u0007QJA\u0001U#\tq\u0015\u000b\u0005\u0002\u000c\u001f&\u0011\u0001K\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\tY!+\u0003\u0002T\r\t\u0019\u0011I\\=\t\rU+E\u00111\u0001W\u0003\u00051\u0007cA\u00069\u0013\")\u0001\u000c\u0001C\u00013\u0006)1\r\\8tKR\t!\u0007C\u0003\\\u0001\u0011\u0005\u0011,A\u0003gYV\u001c\u0008\u000e"
.end annotation


# instance fields
.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/io/PrintWriter;

    .line 61
    new-instance v1, Ljava/io/BufferedWriter;

    .line 62
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 63
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 62
    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 61
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 59
    iput-object v0, p0, Lscala/sys/process/FileProcessLogger;->writer:Ljava/io/PrintWriter;

    return-void
.end method

.method private writer()Ljava/io/PrintWriter;
    .locals 1

    .line 59
    iget-object v0, p0, Lscala/sys/process/FileProcessLogger;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method


# virtual methods
.method public buffer(Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lscala/sys/process/FileProcessLogger;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public err(Lscala/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lscala/sys/process/FileProcessLogger;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lscala/sys/process/FileProcessLogger;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public out(Lscala/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lscala/sys/process/FileProcessLogger;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
