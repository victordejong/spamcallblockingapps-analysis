.class final Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/protobuf/t;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

.field private c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 834
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a()V

    return-void
.end method

.method private a([BII)I
    .locals 4

    move v0, p3

    :goto_0
    if-lez v0, :cond_2

    .line 870
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->b()V

    .line 871
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    if-nez v1, :cond_0

    if-ne v0, p3, :cond_2

    const/4 p1, -0x1

    return p1

    .line 879
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->d:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    sub-int/2addr v1, v2

    .line 880
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    .line 882
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b([BIII)V

    add-int/2addr p2, v1

    .line 885
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, v0

    return p3
.end method

.method private a()V
    .locals 3

    .line 929
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    .line 930
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    .line 931
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->d:I

    const/4 v0, 0x0

    .line 932
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    .line 933
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->f:I

    return-void
.end method

.method private b()V
    .locals 2

    .line 942
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    if-eqz v0, :cond_1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->d:I

    if-ne v0, v1, :cond_1

    .line 945
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->f:I

    const/4 v0, 0x0

    .line 946
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    .line 947
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    .line 949
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->d:I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 951
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    .line 952
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->d:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->f:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    add-int/2addr v0, v1

    .line 906
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public final mark(I)V
    .locals 1

    .line 917
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->f:I

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->g:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->b()V

    .line 896
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 899
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->e:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 1

    .line 840
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 841
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 844
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a([BII)I

    move-result p1

    return p1

    .line 842
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 923
    :try_start_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 924
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->g:I

    invoke-direct {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    .line 854
    invoke-direct {p0, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;->a([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 850
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
