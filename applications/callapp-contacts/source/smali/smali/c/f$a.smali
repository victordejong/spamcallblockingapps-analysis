.class public final Lc/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Buffer$UnsafeCursor;",
        "Ljava/io/Closeable;",
        "()V",
        "buffer",
        "Lokio/Buffer;",
        "data",
        "",
        "end",
        "",
        "offset",
        "",
        "readWrite",
        "",
        "segment",
        "Lokio/Segment;",
        "start",
        "close",
        "",
        "expandBuffer",
        "minByteCount",
        "next",
        "resizeBuffer",
        "newSize",
        "seek",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Lc/f;

.field public b:Z

.field public c:J

.field public d:[B

.field public e:I

.field public f:I

.field private g:Lc/y;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 798
    iput-wide v0, p0, Lc/f$a;->c:J

    const/4 v0, -0x1

    .line 800
    iput v0, p0, Lc/f$a;->e:I

    .line 801
    iput v0, p0, Lc/f$a;->f:I

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 12

    .line 819
    iget-object v0, p0, Lc/f$a;->a:Lc/f;

    if-eqz v0, :cond_a

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_9

    .line 1073
    iget-wide v1, v0, Lc/f;->b:J

    cmp-long v4, p1, v1

    if-gtz v4, :cond_9

    if-eqz v3, :cond_8

    .line 3073
    iget-wide v1, v0, Lc/f;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    .line 4073
    iget-wide v3, v0, Lc/f;->b:J

    .line 837
    iget-object v5, v0, Lc/f;->a:Lc/y;

    .line 838
    iget-object v6, v0, Lc/f;->a:Lc/y;

    .line 839
    iget-object v7, p0, Lc/f$a;->g:Lc/y;

    if-eqz v7, :cond_2

    .line 840
    iget-wide v8, p0, Lc/f$a;->c:J

    iget v10, p0, Lc/f$a;->e:I

    invoke-static {v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v7, v7, Lc/y;->b:I

    sub-int/2addr v10, v7

    int-to-long v10, v10

    sub-long/2addr v8, v10

    cmp-long v7, v8, p1

    if-lez v7, :cond_1

    .line 844
    iget-object v6, p0, Lc/f$a;->g:Lc/y;

    move-wide v3, v8

    goto :goto_0

    .line 848
    :cond_1
    iget-object v5, p0, Lc/f$a;->g:Lc/y;

    move-wide v1, v8

    :cond_2
    :goto_0
    sub-long v7, v3, p1

    sub-long v9, p1, v1

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    .line 858
    :goto_1
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v3, v5, Lc/y;->c:I

    iget v4, v5, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v6, p1, v3

    if-ltz v6, :cond_5

    .line 859
    iget v3, v5, Lc/y;->c:I

    iget v4, v5, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 860
    iget-object v5, v5, Lc/y;->f:Lc/y;

    goto :goto_1

    :cond_3
    :goto_2
    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 867
    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v6, v6, Lc/y;->g:Lc/y;

    .line 868
    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v1, v6, Lc/y;->c:I

    iget v2, v6, Lc/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_2

    :cond_4
    move-wide v1, v3

    move-object v5, v6

    .line 873
    :cond_5
    iget-boolean v3, p0, Lc/f$a;->b:Z

    if-eqz v3, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-boolean v3, v5, Lc/y;->d:Z

    if-eqz v3, :cond_7

    .line 874
    invoke-virtual {v5}, Lc/y;->b()Lc/y;

    move-result-object v3

    .line 875
    iget-object v4, v0, Lc/f;->a:Lc/y;

    if-ne v4, v5, :cond_6

    .line 876
    iput-object v3, v0, Lc/f;->a:Lc/y;

    .line 878
    :cond_6
    invoke-virtual {v5, v3}, Lc/y;->a(Lc/y;)Lc/y;

    move-result-object v5

    .line 879
    iget-object v0, v5, Lc/y;->g:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    .line 883
    :cond_7
    iput-object v5, p0, Lc/f$a;->g:Lc/y;

    .line 884
    iput-wide p1, p0, Lc/f$a;->c:J

    .line 885
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v0, v5, Lc/y;->a:[B

    iput-object v0, p0, Lc/f$a;->d:[B

    .line 886
    iget v0, v5, Lc/y;->b:I

    sub-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lc/f$a;->e:I

    .line 887
    iget p1, v5, Lc/y;->c:I

    iput p1, p0, Lc/f$a;->f:I

    .line 888
    iget p2, p0, Lc/f$a;->e:I

    sub-int/2addr p1, p2

    return p1

    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 826
    iput-object v0, p0, Lc/f$a;->g:Lc/y;

    .line 827
    iput-wide p1, p0, Lc/f$a;->c:J

    .line 828
    iput-object v0, p0, Lc/f$a;->d:[B

    const/4 p1, -0x1

    .line 829
    iput p1, p0, Lc/f$a;->e:I

    .line 830
    iput p1, p0, Lc/f$a;->f:I

    return p1

    .line 821
    :cond_9
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 822
    sget-object v2, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 2073
    iget-wide v4, v0, Lc/f;->b:J

    .line 822
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "offset=%s > size=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 819
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final b(J)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 909
    iget-object v3, v0, Lc/f$a;->a:Lc/f;

    if-eqz v3, :cond_8

    .line 910
    iget-boolean v4, v0, Lc/f$a;->b:Z

    if-eqz v4, :cond_7

    .line 5073
    iget-wide v4, v3, Lc/f;->b:J

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v1, v4

    if-gtz v10, :cond_4

    cmp-long v10, v1, v8

    if-ltz v10, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    sub-long v6, v4, v1

    :goto_1
    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    .line 918
    iget-object v10, v3, Lc/f;->a:Lc/y;

    invoke-static {v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v10, v10, Lc/y;->g:Lc/y;

    .line 919
    invoke-static {v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v11, v10, Lc/y;->c:I

    iget v12, v10, Lc/y;->b:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    cmp-long v13, v11, v6

    if-gtz v13, :cond_1

    .line 921
    invoke-virtual {v10}, Lc/y;->c()Lc/y;

    move-result-object v13

    iput-object v13, v3, Lc/f;->a:Lc/y;

    .line 922
    invoke-static {v10}, Lc/z;->a(Lc/y;)V

    sub-long/2addr v6, v11

    goto :goto_1

    .line 925
    :cond_1
    iget v8, v10, Lc/y;->c:I

    long-to-int v7, v6

    sub-int/2addr v8, v7

    iput v8, v10, Lc/y;->c:I

    :cond_2
    const/4 v6, 0x0

    .line 930
    iput-object v6, v0, Lc/f$a;->g:Lc/y;

    .line 931
    iput-wide v1, v0, Lc/f$a;->c:J

    .line 932
    iput-object v6, v0, Lc/f$a;->d:[B

    const/4 v6, -0x1

    .line 933
    iput v6, v0, Lc/f$a;->e:I

    .line 934
    iput v6, v0, Lc/f$a;->f:I

    goto :goto_3

    .line 914
    :cond_3
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "newSize < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_4
    if-lez v10, :cond_6

    sub-long v10, v1, v4

    const/4 v12, 0x1

    :goto_2
    cmp-long v13, v10, v8

    if-lez v13, :cond_6

    .line 940
    invoke-virtual {v3, v7}, Lc/f;->h(I)Lc/y;

    move-result-object v13

    .line 941
    iget v14, v13, Lc/y;->c:I

    rsub-int v14, v14, 0x2000

    int-to-long v14, v14

    .line 1021
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v15, v14

    .line 942
    iget v14, v13, Lc/y;->c:I

    add-int/2addr v14, v15

    iput v14, v13, Lc/y;->c:I

    int-to-long v6, v15

    sub-long/2addr v10, v6

    if-eqz v12, :cond_5

    .line 947
    iput-object v13, v0, Lc/f$a;->g:Lc/y;

    .line 948
    iput-wide v4, v0, Lc/f$a;->c:J

    .line 949
    iget-object v6, v13, Lc/y;->a:[B

    iput-object v6, v0, Lc/f$a;->d:[B

    .line 950
    iget v6, v13, Lc/y;->c:I

    sub-int/2addr v6, v15

    iput v6, v0, Lc/f$a;->e:I

    .line 951
    iget v6, v13, Lc/y;->c:I

    iput v6, v0, Lc/f$a;->f:I

    const/4 v12, 0x0

    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 6073
    :cond_6
    :goto_3
    iput-wide v1, v3, Lc/f;->b:J

    return-wide v4

    .line 910
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 909
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final close()V
    .locals 3

    .line 1008
    iget-object v0, p0, Lc/f$a;->a:Lc/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1010
    iput-object v0, p0, Lc/f$a;->a:Lc/f;

    .line 1011
    iput-object v0, p0, Lc/f$a;->g:Lc/y;

    const-wide/16 v1, -0x1

    .line 1012
    iput-wide v1, p0, Lc/f$a;->c:J

    .line 1013
    iput-object v0, p0, Lc/f$a;->d:[B

    const/4 v0, -0x1

    .line 1014
    iput v0, p0, Lc/f$a;->e:I

    .line 1015
    iput v0, p0, Lc/f$a;->f:I

    return-void

    .line 1008
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
