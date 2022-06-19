.class public Lcom/googlecode/mp4parser/a/c/a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/a/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/a/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final j:Lcom/googlecode/mp4parser/c/f;


# instance fields
.field a:Lcom/b/a/a/e;

.field b:Lcom/b/a/a/ag;

.field c:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field d:[I

.field e:[J

.field f:[J

.field g:[[J

.field h:Lcom/b/a/a/w;

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/googlecode/mp4parser/a/c/a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/Class;)Lcom/googlecode/mp4parser/c/f;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/a/c/a;->j:Lcom/googlecode/mp4parser/c/f;

    return-void
.end method

.method public constructor <init>(JLcom/b/a/a/e;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v2, 0x0

    .line 24
    iput-object v2, v0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/b/a/a/ag;

    .line 25
    iput-object v2, v0, Lcom/googlecode/mp4parser/a/c/a;->c:[Ljava/lang/ref/SoftReference;

    const/4 v3, 0x0

    .line 31
    iput v3, v0, Lcom/googlecode/mp4parser/a/c/a;->i:I

    .line 35
    iput-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->a:Lcom/b/a/a/e;

    .line 36
    const-class v4, Lcom/b/a/a/r;

    invoke-interface {v1, v4}, Lcom/b/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/r;

    .line 37
    const-class v4, Lcom/b/a/a/ag;

    invoke-virtual {v1, v4}, Lcom/b/a/a/r;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 44
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/b/a/a/ag;

    if-eqz v1, :cond_9

    .line 47
    invoke-virtual {v1}, Lcom/b/a/a/ag;->c()Lcom/b/a/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/x;->e()Lcom/b/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/c;->a()[J

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->e:[J

    .line 48
    array-length v4, v1

    new-array v4, v4, [J

    iput-object v4, v0, Lcom/googlecode/mp4parser/a/c/a;->f:[J

    .line 50
    array-length v1, v1

    new-array v1, v1, [Ljava/lang/ref/SoftReference;

    iput-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->c:[Ljava/lang/ref/SoftReference;

    .line 51
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->e:[J

    array-length v1, v1

    new-array v1, v1, [[J

    iput-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->g:[[J

    .line 54
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/b/a/a/ag;

    invoke-virtual {v1}, Lcom/b/a/a/ag;->c()Lcom/b/a/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/x;->c()Lcom/b/a/a/w;

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->h:Lcom/b/a/a/w;

    .line 55
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/b/a/a/ag;

    invoke-virtual {v1}, Lcom/b/a/a/ag;->c()Lcom/b/a/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/x;->d()Lcom/b/a/a/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/y;->a()Ljava/util/List;

    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/b/a/a/y$a;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/b/a/a/y$a;

    .line 60
    aget-object v2, v1, v3

    .line 1125
    iget-wide v4, v2, Lcom/b/a/a/y$a;->a:J

    .line 1133
    iget-wide v6, v2, Lcom/b/a/a/y$a;->b:J

    .line 65
    invoke-static {v6, v7}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v2

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/c/a;->size()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    :cond_1
    add-int/2addr v8, v7

    int-to-long v12, v8

    const/16 v16, -0x1

    cmp-long v17, v12, v4

    if-nez v17, :cond_3

    .line 76
    array-length v4, v1

    if-le v4, v9, :cond_2

    add-int/lit8 v4, v9, 0x1

    .line 77
    aget-object v5, v1, v9

    .line 2133
    iget-wide v9, v5, Lcom/b/a/a/y$a;->b:J

    .line 78
    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v9

    .line 3125
    iget-wide v12, v5, Lcom/b/a/a/y$a;->a:J

    move v10, v2

    move v2, v9

    move v9, v4

    move-wide v4, v12

    goto :goto_1

    :cond_2
    move v10, v2

    const/4 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    .line 85
    :cond_3
    :goto_1
    iget-object v12, v0, Lcom/googlecode/mp4parser/a/c/a;->g:[[J

    add-int/lit8 v13, v8, -0x1

    new-array v14, v10, [J

    aput-object v14, v12, v13

    add-int/2addr v11, v10

    if-le v11, v6, :cond_1

    add-int/2addr v8, v7

    .line 88
    new-array v2, v8, [I

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    .line 91
    aget-object v2, v1, v3

    .line 4125
    iget-wide v4, v2, Lcom/b/a/a/y$a;->a:J

    .line 4133
    iget-wide v8, v2, Lcom/b/a/a/y$a;->b:J

    .line 96
    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 100
    :goto_2
    iget-object v12, v0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    add-int/lit8 v13, v8, 0x1

    aput v9, v12, v8

    int-to-long v14, v13

    cmp-long v8, v14, v4

    if-nez v8, :cond_5

    .line 103
    array-length v4, v1

    if-le v4, v10, :cond_4

    add-int/lit8 v4, v10, 0x1

    .line 104
    aget-object v5, v1, v10

    .line 5133
    iget-wide v10, v5, Lcom/b/a/a/y$a;->b:J

    .line 105
    invoke-static {v10, v11}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v8

    .line 6125
    iget-wide v10, v5, Lcom/b/a/a/y$a;->a:J

    move-wide/from16 v18, v10

    move v11, v2

    move v10, v4

    move v2, v8

    move-wide/from16 v4, v18

    goto :goto_3

    :cond_4
    move v11, v2

    const/4 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    :cond_5
    :goto_3
    add-int/2addr v9, v11

    if-le v9, v6, :cond_8

    .line 114
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    const v2, 0x7fffffff

    aput v2, v1, v13

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v8, 0x1

    :goto_4
    int-to-long v6, v8

    .line 118
    iget-object v9, v0, Lcom/googlecode/mp4parser/a/c/a;->h:Lcom/b/a/a/w;

    invoke-virtual {v9}, Lcom/b/a/a/w;->a()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-lez v11, :cond_6

    return-void

    .line 119
    :cond_6
    :goto_5
    iget-object v6, v0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    aget v6, v6, v3

    if-eq v8, v6, :cond_7

    .line 124
    iget-object v6, v0, Lcom/googlecode/mp4parser/a/c/a;->f:[J

    add-int/lit8 v7, v3, -0x1

    aget-wide v9, v6, v7

    iget-object v11, v0, Lcom/googlecode/mp4parser/a/c/a;->h:Lcom/b/a/a/w;

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/b/a/a/w;->a(I)J

    move-result-wide v13

    add-long/2addr v9, v13

    aput-wide v9, v6, v7

    .line 125
    iget-object v6, v0, Lcom/googlecode/mp4parser/a/c/a;->g:[[J

    aget-object v6, v6, v7

    .line 126
    iget-object v9, v0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    aget v7, v9, v7

    sub-int v7, v8, v7

    .line 127
    aput-wide v4, v6, v7

    .line 128
    iget-object v6, v0, Lcom/googlecode/mp4parser/a/c/a;->h:Lcom/b/a/a/w;

    invoke-virtual {v6, v12}, Lcom/b/a/a/w;->a(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v1

    goto :goto_5

    :cond_8
    move v8, v13

    goto :goto_2

    .line 45
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "This MP4 does not contain track "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/ag;

    .line 40
    invoke-virtual {v4}, Lcom/b/a/a/ag;->a()Lcom/b/a/a/ah;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/a/ah;->a()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_0

    .line 41
    iput-object v4, v0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/b/a/a/ag;

    goto/16 :goto_0
.end method

.method static synthetic a()Lcom/googlecode/mp4parser/c/f;
    .locals 1

    .line 21
    sget-object v0, Lcom/googlecode/mp4parser/a/c/a;->j:Lcom/googlecode/mp4parser/c/f;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(I)I
    .locals 3

    monitor-enter p0

    add-int/lit8 p1, p1, 0x1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    iget v1, p0, Lcom/googlecode/mp4parser/a/c/a;->i:I

    aget v2, v0, v1

    if-lt p1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v2, :cond_0

    .line 137
    monitor-exit p0

    return v1

    .line 138
    :cond_0
    :try_start_1
    aget v0, v0, v1

    if-ge p1, v0, :cond_2

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/googlecode/mp4parser/a/c/a;->i:I

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    iget v1, p0, Lcom/googlecode/mp4parser/a/c/a;->i:I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v0, p1, :cond_1

    .line 146
    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 144
    :try_start_2
    iput v1, p0, Lcom/googlecode/mp4parser/a/c/a;->i:I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 149
    iput v1, p0, Lcom/googlecode/mp4parser/a/c/a;->i:I

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->d:[I

    iget v1, p0, Lcom/googlecode/mp4parser/a/c/a;->i:I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-le v0, p1, :cond_3

    .line 154
    monitor-exit p0

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 152
    :try_start_3
    iput v1, p0, Lcom/googlecode/mp4parser/a/c/a;->i:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 5

    int-to-long v0, p1

    .line 6161
    iget-object v2, p0, Lcom/googlecode/mp4parser/a/c/a;->h:Lcom/b/a/a/w;

    invoke-virtual {v2}, Lcom/b/a/a/w;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 6164
    new-instance v0, Lcom/googlecode/mp4parser/a/c/a$a;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/mp4parser/a/c/a$a;-><init>(Lcom/googlecode/mp4parser/a/c/a;I)V

    return-object v0

    .line 6162
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/b/a/a/ag;

    invoke-virtual {v0}, Lcom/b/a/a/ag;->c()Lcom/b/a/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/x;->c()Lcom/b/a/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/w;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    return v0
.end method
