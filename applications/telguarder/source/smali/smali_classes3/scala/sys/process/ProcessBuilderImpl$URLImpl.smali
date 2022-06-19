.class public Lscala/sys/process/ProcessBuilderImpl$URLImpl;
.super Ljava/lang/Object;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/sys/process/ProcessBuilder$URLBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "URLImpl"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/ProcessBuilder$;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V
    .locals 0

    .line 154
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$URLImpl;->url:Ljava/net/URL;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessBuilderImpl$URLImpl;->$outer:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Source$class;->$init$(Lscala/sys/process/ProcessBuilder$Source;)V

    return-void
.end method


# virtual methods
.method public $hash$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 154
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

    .line 154
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 154
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 154
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater$greater(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public cat()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 154
    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Source$class;->cat(Lscala/sys/process/ProcessBuilder$Source;)Lscala/sys/process/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$URLImpl$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 154
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$URLImpl;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method

.method public bridge synthetic toSource()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$URLImpl;->toSource()Lscala/sys/process/ProcessBuilderImpl$URLInput;

    move-result-object v0

    return-object v0
.end method

.method public toSource()Lscala/sys/process/ProcessBuilderImpl$URLInput;
    .locals 3

    .line 155
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$URLInput;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$URLImpl;->scala$sys$process$ProcessBuilderImpl$URLImpl$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    iget-object v2, p0, Lscala/sys/process/ProcessBuilderImpl$URLImpl;->url:Ljava/net/URL;

    invoke-direct {v0, v1, v2}, Lscala/sys/process/ProcessBuilderImpl$URLInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V

    return-object v0
.end method
