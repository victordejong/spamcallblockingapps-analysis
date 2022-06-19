.class public final Laa/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laa/o;->d(Ljava/io/OutputStream;Laa/z;)Laa/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Laa/z;

.field public final synthetic b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Laa/z;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laa/o$a;->a:Laa/z;

    iput-object p2, p0, Laa/o$a;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Laa/f;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Laa/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Laa/a0;->b(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 2
    iget-object v0, p0, Laa/o$a;->a:Laa/z;

    invoke-virtual {v0}, Laa/z;->f()V

    .line 3
    iget-object v0, p1, Laa/f;->a:Laa/u;

    .line 4
    iget v1, v0, Laa/u;->c:I

    iget v2, v0, Laa/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 5
    iget-object v1, p0, Laa/o$a;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Laa/u;->a:[B

    iget v4, v0, Laa/u;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    iget v1, v0, Laa/u;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Laa/u;->b:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 7
    iget-wide v4, p1, Laa/f;->b:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Laa/f;->b:J

    .line 8
    iget v2, v0, Laa/u;->c:I

    if-ne v1, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Laa/u;->a()Laa/u;

    move-result-object v1

    iput-object v1, p1, Laa/f;->a:Laa/u;

    .line 10
    invoke-static {v0}, Laa/v;->a(Laa/u;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/o$a;->a:Laa/z;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laa/o$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laa/o$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "sink("

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laa/o$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
