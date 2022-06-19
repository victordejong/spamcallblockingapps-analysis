.class abstract Landroidx/media2/exoplayer/external/text/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/a/d$b;,
        Landroidx/media2/exoplayer/external/text/a/d$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/text/h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/text/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media2/exoplayer/external/text/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/media2/exoplayer/external/text/a/d$a;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->b:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/d;->b:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media2/exoplayer/external/text/a/d$a;

    invoke-direct {v4, v3}, Landroidx/media2/exoplayer/external/text/a/d$a;-><init>(Landroidx/media2/exoplayer/external/text/a/d$1;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/a/d;->a:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/d;->a:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media2/exoplayer/external/text/a/d$b;

    invoke-direct {v2, p0, v3}, Landroidx/media2/exoplayer/external/text/a/d$b;-><init>(Landroidx/media2/exoplayer/external/text/a/d;Landroidx/media2/exoplayer/external/text/a/d$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->c:Ljava/util/PriorityQueue;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/text/a/d$a;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/a/d$a;->a()V

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/a/d;->h()Landroidx/media2/exoplayer/external/text/g;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/text/a/d;->e:J

    return-void
.end method

.method protected abstract a(Landroidx/media2/exoplayer/external/text/g;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Landroidx/media2/exoplayer/external/text/g;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/a/d;->b(Landroidx/media2/exoplayer/external/text/g;)V

    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/a/d;->g()Landroidx/media2/exoplayer/external/text/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroidx/media2/exoplayer/external/text/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 85
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/g;->l_()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/text/a/d;->a(Landroidx/media2/exoplayer/external/text/a/d$a;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/text/a/d;->f:J

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/text/a/d$a;->a(Landroidx/media2/exoplayer/external/text/a/d$a;J)J

    .line 91
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/d;->c:Ljava/util/PriorityQueue;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 150
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->f:J

    .line 151
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->e:J

    .line 152
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/a/d$a;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/a/d;->a(Landroidx/media2/exoplayer/external/text/a/d$a;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/a/d;->a(Landroidx/media2/exoplayer/external/text/a/d$a;)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Landroidx/media2/exoplayer/external/text/d;
.end method

.method public g()Landroidx/media2/exoplayer/external/text/h;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->c:Ljava/util/PriorityQueue;

    .line 105
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/a/d$a;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/text/a/d$a;->d:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/text/a/d;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/a/d$a;

    .line 110
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/a/d$a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/h;

    const/4 v2, 0x4

    .line 112
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/text/h;->a(I)V

    .line 113
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/a/d;->a(Landroidx/media2/exoplayer/external/text/a/d$a;)V

    return-object v1

    .line 117
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/a/d;->a(Landroidx/media2/exoplayer/external/text/g;)V

    .line 120
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/a/d;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/a/d;->f()Landroidx/media2/exoplayer/external/text/d;

    move-result-object v6

    .line 124
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/a/d$a;->l_()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/h;

    .line 126
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/text/a/d$a;->d:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/text/h;->a(JLandroidx/media2/exoplayer/external/text/d;J)V

    .line 127
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/a/d;->a(Landroidx/media2/exoplayer/external/text/a/d$a;)V

    return-object v1

    .line 132
    :cond_2
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/a/d;->a(Landroidx/media2/exoplayer/external/text/a/d$a;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public h()Landroidx/media2/exoplayer/external/text/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/a/d$a;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d;->d:Landroidx/media2/exoplayer/external/text/a/d$a;

    return-object v0
.end method
