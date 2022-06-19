.class public Lom0$e;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lom0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Lom0$i;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lom0$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lom0$e;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lom0$e;->b:Lom0$i;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lom0$e;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lom0$e;->b:Lom0$i;

    invoke-interface {v0}, Lom0$i;->onClose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lom0$e;->b:Lom0$i;

    invoke-interface {v1}, Lom0$i;->onClose()V

    throw v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lom0$e;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lom0$e;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lom0$e;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lom0$e;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
