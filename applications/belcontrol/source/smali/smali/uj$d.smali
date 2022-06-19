.class public Luj$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(JJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Luj$d;->a:J

    iput-wide p3, p0, Luj$d;->b:J

    iput-wide p5, p0, Luj$d;->d:J

    iput-wide p7, p0, Luj$d;->e:J

    iput-wide p9, p0, Luj$d;->f:J

    iput-wide p11, p0, Luj$d;->g:J

    iput-wide p13, p0, Luj$d;->c:J

    invoke-static/range {p3 .. p14}, Luj$d;->h(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Luj$d;->h:J

    return-void
.end method

.method public static synthetic a(Luj$d;)J
    .locals 2

    invoke-virtual {p0}, Luj$d;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Luj$d;)J
    .locals 2

    invoke-virtual {p0}, Luj$d;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c(Luj$d;)J
    .locals 2

    invoke-virtual {p0}, Luj$d;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(Luj$d;)J
    .locals 2

    invoke-virtual {p0}, Luj$d;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic e(Luj$d;)J
    .locals 2

    invoke-virtual {p0}, Luj$d;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic f(Luj$d;JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Luj$d;->o(JJ)V

    return-void
.end method

.method public static synthetic g(Luj$d;JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Luj$d;->p(JJ)V

    return-void
.end method

.method public static h(JJJJJJ)J
    .locals 7

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_1

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, p0, p2

    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    const-wide/16 v4, 0x14

    div-long v4, v2, v4

    add-long/2addr v2, p6

    sub-long v2, v2, p10

    sub-long/2addr v2, v4

    sub-long v0, p8, v0

    move-wide p0, v2

    move-wide p2, p6

    move-wide p4, v0

    invoke-static/range {p0 .. p5}, Lnu;->o(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide p6
.end method


# virtual methods
.method public final i()J
    .locals 2

    iget-wide v0, p0, Luj$d;->g:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Luj$d;->f:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Luj$d;->h:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Luj$d;->a:J

    return-wide v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Luj$d;->b:J

    return-wide v0
.end method

.method public final n()V
    .locals 12

    iget-wide v0, p0, Luj$d;->b:J

    iget-wide v2, p0, Luj$d;->d:J

    iget-wide v4, p0, Luj$d;->e:J

    iget-wide v6, p0, Luj$d;->f:J

    iget-wide v8, p0, Luj$d;->g:J

    iget-wide v10, p0, Luj$d;->c:J

    invoke-static/range {v0 .. v11}, Luj$d;->h(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Luj$d;->h:J

    return-void
.end method

.method public final o(JJ)V
    .locals 0

    iput-wide p1, p0, Luj$d;->e:J

    iput-wide p3, p0, Luj$d;->g:J

    invoke-virtual {p0}, Luj$d;->n()V

    return-void
.end method

.method public final p(JJ)V
    .locals 0

    iput-wide p1, p0, Luj$d;->d:J

    iput-wide p3, p0, Luj$d;->f:J

    invoke-virtual {p0}, Luj$d;->n()V

    return-void
.end method
