.class public Lscala/sys/process/ProcessBuilderImpl$FileImpl;
.super Ljava/lang/Object;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/sys/process/ProcessBuilder$FileBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileImpl"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/ProcessBuilder$;

.field private final base:Ljava/io/File;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;)V
    .locals 0

    .line 157
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->base:Ljava/io/File;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->$outer:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Sink$class;->$init$(Lscala/sys/process/ProcessBuilder$Sink;)V

    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Source$class;->$init$(Lscala/sys/process/ProcessBuilder$Source;)V

    return-void
.end method


# virtual methods
.method public $hash$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater$greater(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less$less(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 161
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$FileInput;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/sys/process/ProcessBuilderImpl$FileInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->$hash$less$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less$less(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 162
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$URLInput;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/sys/process/ProcessBuilderImpl$URLInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V

    invoke-virtual {p0, v0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->$hash$less$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less$less(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 163
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    const-string v2, "<input stream>"

    invoke-direct {v0, v1, p1, v2}, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->$hash$less$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 6

    .line 164
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    new-instance v2, Lscala/sys/process/ProcessBuilderImpl$FileOutput;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v3

    iget-object v4, p0, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->base:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lscala/sys/process/ProcessBuilderImpl$FileOutput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;Z)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Z)V

    return-object v0
.end method

.method public cat()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 157
    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Source$class;->cat(Lscala/sys/process/ProcessBuilder$Source;)Lscala/sys/process/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 157
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method

.method public bridge synthetic toSink()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->toSink()Lscala/sys/process/ProcessBuilderImpl$FileOutput;

    move-result-object v0

    return-object v0
.end method

.method public toSink()Lscala/sys/process/ProcessBuilderImpl$FileOutput;
    .locals 4

    .line 159
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$FileOutput;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    iget-object v2, p0, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->base:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lscala/sys/process/ProcessBuilderImpl$FileOutput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic toSource()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->toSource()Lscala/sys/process/ProcessBuilderImpl$FileInput;

    move-result-object v0

    return-object v0
.end method

.method public toSource()Lscala/sys/process/ProcessBuilderImpl$FileInput;
    .locals 3

    .line 158
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$FileInput;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    iget-object v2, p0, Lscala/sys/process/ProcessBuilderImpl$FileImpl;->base:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lscala/sys/process/ProcessBuilderImpl$FileInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;)V

    return-object v0
.end method
