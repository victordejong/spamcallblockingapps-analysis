.class public final Landroidx/media2/exoplayer/external/source/r;
.super Landroidx/media2/exoplayer/external/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/r$a;,
        Landroidx/media2/exoplayer/external/source/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroidx/media2/exoplayer/external/source/r$b;

.field private final b:Landroidx/media2/exoplayer/external/source/t;

.field private final c:Z

.field private final d:Landroidx/media2/exoplayer/external/al$b;

.field private final e:Landroidx/media2/exoplayer/external/al$a;

.field private f:Landroidx/media2/exoplayer/external/source/q;

.field private g:Landroidx/media2/exoplayer/external/source/u$a;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;Z)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/d;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->b:Landroidx/media2/exoplayer/external/source/t;

    .line 62
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/r;->c:Z

    .line 63
    new-instance p2, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/r;->d:Landroidx/media2/exoplayer/external/al$b;

    .line 64
    new-instance p2, Landroidx/media2/exoplayer/external/al$a;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/al$a;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/r;->e:Landroidx/media2/exoplayer/external/al$a;

    .line 65
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/t;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/r$b;->b(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/r$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 199
    sget-object v0, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/r$b;->a(Landroidx/media2/exoplayer/external/source/r$b;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/r;->b(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/q;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 1

    .line 1187
    iget-object p1, p2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    .line 1205
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/r$b;->a(Landroidx/media2/exoplayer/external/source/r$b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    sget-object p1, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    .line 1187
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/source/t$a;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 1

    .line 121
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/source/q;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/q;->f()V

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r;->f:Landroidx/media2/exoplayer/external/source/q;

    if-ne p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->g:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/u$a;->b()V

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->g:Landroidx/media2/exoplayer/external/source/u$a;

    .line 125
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->f:Landroidx/media2/exoplayer/external/source/q;

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/d;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 76
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/r;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/r;->h:Z

    const/4 p1, 0x0

    .line 78
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r;->b:Landroidx/media2/exoplayer/external/source/t;

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/r;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    :cond_0
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 11

    .line 2139
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/r;->i:Z

    if-eqz p1, :cond_0

    .line 2140
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    .line 2252
    new-instance p2, Landroidx/media2/exoplayer/external/source/r$b;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/r$b;->d:Ljava/lang/Object;

    invoke-direct {p2, p3, p1}, Landroidx/media2/exoplayer/external/source/r$b;-><init>(Landroidx/media2/exoplayer/external/al;Ljava/lang/Object;)V

    .line 2140
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    goto :goto_1

    .line 2141
    :cond_0
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2142
    sget-object p1, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    .line 2143
    invoke-static {p3, p1}, Landroidx/media2/exoplayer/external/source/r$b;->a(Landroidx/media2/exoplayer/external/al;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/r$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    goto :goto_1

    .line 2157
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->d:Landroidx/media2/exoplayer/external/al$b;

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    .line 2648
    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    .line 2158
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->d:Landroidx/media2/exoplayer/external/al$b;

    .line 3228
    iget-wide p1, p1, Landroidx/media2/exoplayer/external/al$b;->i:J

    .line 2159
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/r;->f:Landroidx/media2/exoplayer/external/source/q;

    if-eqz v2, :cond_2

    .line 4096
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/q;->c:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    move-wide v9, v2

    goto :goto_0

    :cond_2
    move-wide v9, p1

    .line 2165
    :goto_0
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/r;->d:Landroidx/media2/exoplayer/external/al$b;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/r;->e:Landroidx/media2/exoplayer/external/al$a;

    const/4 v8, 0x0

    move-object v5, p3

    .line 2166
    invoke-virtual/range {v5 .. v10}, Landroidx/media2/exoplayer/external/al;->a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 2168
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2169
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2170
    invoke-static {p3, p2}, Landroidx/media2/exoplayer/external/source/r$b;->a(Landroidx/media2/exoplayer/external/al;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/r$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    .line 2171
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->f:Landroidx/media2/exoplayer/external/source/q;

    if-eqz p1, :cond_3

    .line 4106
    iput-wide v0, p1, Landroidx/media2/exoplayer/external/source/q;->e:J

    .line 2174
    iget-object p2, p1, Landroidx/media2/exoplayer/external/source/q;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object p3, p1, Landroidx/media2/exoplayer/external/source/q;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object p3, p3, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    .line 2175
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/source/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/source/t$a;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object p2

    .line 2176
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/q;->a(Landroidx/media2/exoplayer/external/source/t$a;)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 2179
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/r;->i:Z

    .line 2180
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/r;->a(Landroidx/media2/exoplayer/external/al;)V

    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/q;
    .locals 7

    .line 98
    new-instance v6, Landroidx/media2/exoplayer/external/source/q;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/r;->b:Landroidx/media2/exoplayer/external/source/t;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/q;-><init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)V

    .line 100
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/r;->i:Z

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/source/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/t$a;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object p1

    .line 102
    invoke-virtual {v6, p1}, Landroidx/media2/exoplayer/external/source/q;->a(Landroidx/media2/exoplayer/external/source/t$a;)V

    goto :goto_0

    .line 107
    :cond_0
    iput-object v6, p0, Landroidx/media2/exoplayer/external/source/r;->f:Landroidx/media2/exoplayer/external/source/q;

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p2, p1}, Landroidx/media2/exoplayer/external/source/r;->a(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r;->g:Landroidx/media2/exoplayer/external/source/u$a;

    .line 110
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/u$a;->a()V

    .line 111
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/r;->h:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/r;->h:Z

    const/4 p1, 0x0

    .line 113
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/r;->b:Landroidx/media2/exoplayer/external/source/t;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/r;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    :cond_1
    :goto_0
    return-object v6
.end method

.method protected final b(Landroidx/media2/exoplayer/external/source/t$a;)Z
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r;->f:Landroidx/media2/exoplayer/external/source/q;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/q;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 195
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/r;->i:Z

    .line 132
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/r;->h:Z

    .line 133
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->c()V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r;->b:Landroidx/media2/exoplayer/external/source/t;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/t;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
