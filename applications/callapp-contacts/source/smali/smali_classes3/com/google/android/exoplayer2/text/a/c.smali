.class abstract Lcom/google/android/exoplayer2/text/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/a/c$b;,
        Lcom/google/android/exoplayer2/text/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/text/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/text/i;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/exoplayer2/text/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/text/a/c$a;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/exoplayer2/text/a/c$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/a/c$a;-><init>(Lcom/google/android/exoplayer2/text/a/c$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/text/a/c$b;

    new-instance v3, Lcom/google/android/exoplayer2/text/a/-$$Lambda$taMBNJo8phFetlaNAm-7ngtnjAs;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/text/a/-$$Lambda$taMBNJo8phFetlaNAm-7ngtnjAs;-><init>(Lcom/google/android/exoplayer2/text/a/c;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/a/c$b;-><init>(Lcom/google/android/exoplayer2/decoder/f$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->c:Ljava/util/PriorityQueue;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/text/a/c$a;)V
    .locals 1

    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/a/c$a;->a()V

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/c;->h()Lcom/google/android/exoplayer2/text/h;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/a/c;->e:J

    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/text/h;)V
.end method

.method protected a(Lcom/google/android/exoplayer2/text/i;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/i;->a()V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 34
    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/a/c;->b(Lcom/google/android/exoplayer2/text/h;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/c;->e()Lcom/google/android/exoplayer2/text/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/text/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:Lcom/google/android/exoplayer2/text/a/c$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 82
    check-cast p1, Lcom/google/android/exoplayer2/text/a/c$a;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/a/c$a;->E_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/a/c;->a(Lcom/google/android/exoplayer2/text/a/c$a;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/a/c;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/text/a/c;->f:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(Lcom/google/android/exoplayer2/text/a/c$a;J)J

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/a/c;->d:Lcom/google/android/exoplayer2/text/a/c$a;

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/a/c;->f:J

    .line 142
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:J

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/c;->a(Lcom/google/android/exoplayer2/text/a/c$a;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:Lcom/google/android/exoplayer2/text/a/c$a;

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/c;->a(Lcom/google/android/exoplayer2/text/a/c$a;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:Lcom/google/android/exoplayer2/text/a/c$a;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Lcom/google/android/exoplayer2/text/i;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->c:Ljava/util/PriorityQueue;

    .line 102
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/c$a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/text/a/c$a;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/a/c;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/c$a;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    const/4 v2, 0x4

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/i;->a(I)V

    .line 109
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/c;->a(Lcom/google/android/exoplayer2/text/a/c$a;)V

    return-object v1

    .line 113
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/a/c;->a(Lcom/google/android/exoplayer2/text/h;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/c;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/c;->g()Lcom/google/android/exoplayer2/text/e;

    move-result-object v6

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    .line 119
    iget-wide v4, v0, Lcom/google/android/exoplayer2/text/a/c$a;->e:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/i;->a(JLcom/google/android/exoplayer2/text/e;J)V

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/c;->a(Lcom/google/android/exoplayer2/text/a/c$a;)V

    return-object v1

    .line 124
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/c;->a(Lcom/google/android/exoplayer2/text/a/c$a;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method protected abstract f()Z
.end method

.method protected abstract g()Lcom/google/android/exoplayer2/text/e;
.end method

.method public h()Lcom/google/android/exoplayer2/text/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:Lcom/google/android/exoplayer2/text/a/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/c$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:Lcom/google/android/exoplayer2/text/a/c$a;

    return-object v0
.end method

.method protected final j()Lcom/google/android/exoplayer2/text/i;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/i;

    return-object v0
.end method

.method protected final k()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:J

    return-wide v0
.end method
