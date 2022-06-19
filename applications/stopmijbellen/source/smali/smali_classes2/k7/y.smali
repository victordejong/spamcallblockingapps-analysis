.class public final Lk7/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/f;


# instance fields
.field public a:I

.field public b:Lk7/l;

.field public c:Lu7/a;

.field public final synthetic d:Lk7/o;

.field public final synthetic e:Ljava/io/InputStream;

.field public final synthetic f:J

.field public final synthetic g:Ll7/a;


# direct methods
.method public constructor <init>(Lk7/o;Ljava/io/InputStream;JLl7/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lk7/y;->d:Lk7/o;

    iput-object p2, p0, Lk7/y;->e:Ljava/io/InputStream;

    iput-wide p3, p0, Lk7/y;->f:J

    iput-object p5, p0, Lk7/y;->g:Ll7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lk7/y;->a:I

    .line 3
    new-instance p1, Lk7/l;

    invoke-direct {p1}, Lk7/l;-><init>()V

    iput-object p1, p0, Lk7/y;->b:Lk7/l;

    .line 4
    new-instance p1, Lu7/a;

    invoke-direct {p1}, Lu7/a;-><init>()V

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lu7/a;->b(I)Lu7/a;

    iput-object p1, p0, Lk7/y;->c:Lu7/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk7/y;->d:Lk7/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lk7/o;->g(Ll7/a;)V

    .line 2
    iget-object v0, p0, Lk7/y;->d:Lk7/o;

    invoke-interface {v0, v1}, Lk7/o;->m(Ll7/f;)V

    .line 3
    iget-object v0, p0, Lk7/y;->b:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->n()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 4
    iget-object v1, p0, Lk7/y;->e:Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    return-void
.end method

.method public f()V
    .locals 8

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lk7/y;->b:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lk7/y;->c:Lu7/a;

    invoke-virtual {v0}, Lu7/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lk7/y;->f:J

    iget v3, p0, Lk7/y;->a:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lk7/y;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    long-to-int v2, v1

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 5
    iget v3, p0, Lk7/y;->a:I

    int-to-long v3, v3

    iget-wide v5, p0, Lk7/y;->f:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lk7/y;->c:Lu7/a;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lu7/a;->c(J)V

    .line 7
    iget v3, p0, Lk7/y;->a:I

    add-int/2addr v3, v2

    iput v3, p0, Lk7/y;->a:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    iget-object v1, p0, Lk7/y;->b:Lk7/l;

    invoke-virtual {v1, v0}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lk7/y;->a()V

    .line 12
    iget-object v0, p0, Lk7/y;->g:Ll7/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ll7/a;->a(Ljava/lang/Exception;)V

    return-void

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lk7/y;->d:Lk7/o;

    iget-object v1, p0, Lk7/y;->b:Lk7/l;

    invoke-interface {v0, v1}, Lk7/o;->k(Lk7/l;)V

    .line 14
    iget-object v0, p0, Lk7/y;->b:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->i()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lk7/y;->a()V

    .line 16
    iget-object v1, p0, Lk7/y;->g:Ll7/a;

    invoke-interface {v1, v0}, Ll7/a;->a(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
