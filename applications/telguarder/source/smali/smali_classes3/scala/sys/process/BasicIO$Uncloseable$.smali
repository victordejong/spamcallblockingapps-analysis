.class public Lscala/sys/process/BasicIO$Uncloseable$;
.super Ljava/lang/Object;
.source "BasicIO.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/BasicIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uncloseable$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/sys/process/BasicIO$Uncloseable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/BasicIO$Uncloseable$;

    invoke-direct {v0}, Lscala/sys/process/BasicIO$Uncloseable$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/BasicIO$Uncloseable$;->MODULE$:Lscala/sys/process/BasicIO$Uncloseable$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .line 60
    new-instance v0, Lscala/sys/process/BasicIO$Uncloseable$$anon$2;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$Uncloseable$$anon$2;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public apply(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 61
    new-instance v0, Lscala/sys/process/BasicIO$Uncloseable$$anon$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$Uncloseable$$anon$1;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public protect(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .line 62
    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0}, Lscala/sys/process/package$;->stdin()Ljava/io/InputStream;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$Uncloseable$;->apply(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public protect(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 63
    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0}, Lscala/sys/process/package$;->stdout()Ljava/io/PrintStream;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0}, Lscala/sys/process/package$;->stderr()Ljava/io/PrintStream;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$Uncloseable$;->apply(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    :cond_1
    return-object p1
.end method
