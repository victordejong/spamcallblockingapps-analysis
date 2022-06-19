.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;
.super Lcom/bytedance/sdk/openadsdk/preload/a/d/a;
.source "SourceFile"


# static fields
.field private static final b:Ljava/io/Reader;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:[Ljava/lang/String;

.field private g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->b:Ljava/io/Reader;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    .line 286
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 288
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    .line 290
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    aput-object p1, v0, v1

    return-void
.end method

.method private t()Ljava/lang/Object;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private u()Ljava/lang/Object;
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 157
    aput-object v3, v0, v1

    return-object v2
.end method

.method private v()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 83
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->c:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 90
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 254
    sget-object v2, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    .line 255
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    return-void
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 96
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 98
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->j:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    .line 116
    check-cast v0, Ljava/util/Iterator;

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 119
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 121
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 125
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 127
    :cond_4
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v1, :cond_5

    .line 128
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->c:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 129
    :cond_5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v1, :cond_6

    .line 130
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 131
    :cond_6
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    if-eqz v1, :cond_a

    .line 132
    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    .line 133
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 134
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 135
    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 136
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->h:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 137
    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 140
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_a
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;

    if-eqz v1, :cond_b

    .line 143
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 144
    :cond_b
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 170
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final h()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v1, :cond_2

    .line 186
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public final i()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->h:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 193
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->f()Z

    move-result v0

    .line 194
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public final j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 202
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 203
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final k()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->c()D

    move-result-wide v0

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->q()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 216
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 219
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v2, :cond_4

    .line 220
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4
    return-wide v0
.end method

.method public final l()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->d()J

    move-result-wide v0

    .line 232
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 233
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v2, :cond_2

    .line 234
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public final m()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->e()I

    move-result v0

    .line 246
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 247
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v1, :cond_2

    .line 248
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method public final n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g()Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 264
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 268
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_2

    .line 269
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 279
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 282
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 297
    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-ge v1, v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 299
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    :cond_0
    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 303
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 306
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
