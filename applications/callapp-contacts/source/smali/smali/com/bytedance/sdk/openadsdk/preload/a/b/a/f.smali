.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;
.super Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/bytedance/sdk/openadsdk/preload/a/q;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/preload/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a:Ljava/io/Writer;

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->b:Lcom/bytedance/sdk/openadsdk/preload/a/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->e:Lcom/bytedance/sdk/openadsdk/preload/a/l;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    :cond_1
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->e:Lcom/bytedance/sdk/openadsdk/preload/a/l;

    return-void

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v1, :cond_4

    .line 88
    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-void

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private j()Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Boolean;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name == null"

    .line 135
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 141
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    return-object p0

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Z)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-object p0
.end method

.method public final a()Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->e:Lcom/bytedance/sdk/openadsdk/preload/a/l;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one JSON element but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/i;-><init>()V

    .line 97
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-object p0
.end method

.method public final c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 107
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->b:Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/o;-><init>()V

    .line 116
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 126
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-object p0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
