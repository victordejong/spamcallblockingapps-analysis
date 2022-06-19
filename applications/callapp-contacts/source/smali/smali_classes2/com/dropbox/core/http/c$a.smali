.class public final Lcom/dropbox/core/http/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/io/PipedInputStream;

.field final b:Ljava/io/PipedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/io/PipedInputStream;

    const/high16 v1, 0x500000

    invoke-direct {v0, v1}, Ljava/io/PipedInputStream;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/core/http/c$a;->a:Ljava/io/PipedInputStream;

    .line 54
    :try_start_0
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object v1, p0, Lcom/dropbox/core/http/c$a;->b:Ljava/io/PipedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 56
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create piped stream for async upload request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/c$a;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/core/http/c$a;->a:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
