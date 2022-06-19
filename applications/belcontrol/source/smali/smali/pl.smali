.class public final Lpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;
.implements Lik;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lyt;

.field public final c:Lyt;

.field public final d:Lyt;

.field public final e:Lyt;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lhl$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:Lyt;

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Lck;

.field public q:[Lpl$a;

.field public r:[[J

.field public s:I

.field public t:J

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lol;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpl;->a:I

    new-instance p1, Lyt;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lyt;-><init>(I)V

    iput-object p1, p0, Lpl;->e:Lyt;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lpl;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lyt;

    sget-object v0, Lwt;->a:[B

    invoke-direct {p1, v0}, Lyt;-><init>([B)V

    iput-object p1, p0, Lpl;->b:Lyt;

    new-instance p1, Lyt;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lyt;-><init>(I)V

    iput-object p1, p0, Lpl;->c:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lpl;->d:Lyt;

    const/4 p1, -0x1

    iput p1, p0, Lpl;->l:I

    return-void
.end method

.method public static e([Lpl$a;)[[J
    .locals 15

    array-length v0, p0

    new-array v0, v0, [[J

    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    new-array v2, v2, [J

    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    aget-object v6, p0, v5

    iget-object v6, v6, Lpl$a;->b:Lvl;

    iget v6, v6, Lvl;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    aget-object v6, p0, v5

    iget-object v6, v6, Lpl$a;->b:Lvl;

    iget-object v6, v6, Lvl;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    aget-wide v8, v2, v11

    move v10, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    aget v8, v1, v10

    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    aget-object v9, p0, v10

    iget-object v9, v9, Lpl$a;->b:Lvl;

    iget-object v9, v9, Lvl;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aput v8, v1, v10

    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    aget-object v9, p0, v10

    iget-object v9, v9, Lpl$a;->b:Lvl;

    iget-object v9, v9, Lvl;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static g(Lvl;J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lvl;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lvl;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static final synthetic j()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lpl;

    invoke-direct {v1}, Lpl;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static k(Lvl;JJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lpl;->g(Lvl;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Lvl;->c:[J

    aget-wide p1, p0, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static n(Lyt;)Z
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x71742020

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lyt;->K(I)V

    :cond_1
    invoke-virtual {p0}, Lyt;->a()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lyt;->h()I

    move-result v0

    if-ne v0, v2, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static s(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static t(I)Z
    .locals 1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 2

    :cond_0
    iget v0, p0, Lpl;->g:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lpl;->r(Lbk;Lhk;)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lpl;->q(Lbk;Lhk;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lpl;->p(Lbk;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public b(Lbk;)Z
    .locals 0

    invoke-static {p1}, Lrl;->d(Lbk;)Z

    move-result p1

    return p1
.end method

.method public c(Lck;)V
    .locals 0

    iput-object p1, p0, Lpl;->p:Lck;

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lpl;->g:I

    iput v0, p0, Lpl;->j:I

    return-void
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lpl;->t:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lik$a;
    .locals 12

    iget-object v0, p0, Lpl;->q:[Lpl$a;

    array-length v1, v0

    if-nez v1, :cond_0

    new-instance p1, Lik$a;

    sget-object p2, Ljk;->c:Ljk;

    invoke-direct {p1, p2}, Lik$a;-><init>(Ljk;)V

    return-object p1

    :cond_0
    const-wide/16 v1, -0x1

    iget v3, p0, Lpl;->s:I

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_3

    aget-object v0, v0, v3

    iget-object v0, v0, Lpl$a;->b:Lvl;

    invoke-static {v0, p1, p2}, Lpl;->g(Lvl;J)I

    move-result v3

    if-ne v3, v4, :cond_1

    new-instance p1, Lik$a;

    sget-object p2, Ljk;->c:Ljk;

    invoke-direct {p1, p2}, Lik$a;-><init>(Ljk;)V

    return-object p1

    :cond_1
    iget-object v7, v0, Lvl;->f:[J

    aget-wide v8, v7, v3

    iget-object v7, v0, Lvl;->c:[J

    aget-wide v10, v7, v3

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    iget v7, v0, Lvl;->b:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    invoke-virtual {v0, p1, p2}, Lvl;->b(J)I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    iget-object p2, v0, Lvl;->f:[J

    aget-wide v1, p2, p1

    iget-object p2, v0, Lvl;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v1

    move-wide v1, v5

    :goto_0
    move-wide v3, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v1

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lpl;->q:[Lpl$a;

    array-length v8, v7

    if-ge v0, v8, :cond_6

    iget v8, p0, Lpl;->s:I

    if-eq v0, v8, :cond_5

    aget-object v7, v7, v0

    iget-object v7, v7, Lpl$a;->b:Lvl;

    invoke-static {v7, p1, p2, v10, v11}, Lpl;->k(Lvl;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    invoke-static {v7, v1, v2, v3, v4}, Lpl;->k(Lvl;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljk;

    invoke-direct {v0, p1, p2, v10, v11}, Ljk;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    new-instance p1, Lik$a;

    invoke-direct {p1, v0}, Lik$a;-><init>(Ljk;)V

    return-object p1

    :cond_7
    new-instance p1, Ljk;

    invoke-direct {p1, v1, v2, v3, v4}, Ljk;-><init>(JJ)V

    new-instance p2, Lik$a;

    invoke-direct {p2, v0, p1}, Lik$a;-><init>(Ljk;Ljk;)V

    return-object p2
.end method

.method public final h(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    :goto_0
    iget-object v1, v0, Lpl;->q:[Lpl$a;

    array-length v3, v1

    if-ge v7, v3, :cond_7

    aget-object v1, v1, v7

    iget v3, v1, Lpl$a;->d:I

    iget-object v1, v1, Lpl$a;->b:Lvl;

    iget v4, v1, Lvl;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v1, Lvl;->c:[J

    aget-wide v4, v1, v3

    iget-object v1, v0, Lpl;->r:[[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v1, v13, :cond_5

    cmp-long v3, v4, v14

    if-gez v3, :cond_5

    :cond_4
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v3, v16, v8

    if-gez v3, :cond_6

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_9

    :cond_8
    move v2, v6

    :cond_9
    return v2
.end method

.method public final i(Lhl$a;Lek;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl$a;",
            "Lek;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lvl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lhl$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lhl$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhl$a;

    iget v3, v2, Lhl;->a:I

    const v4, 0x7472616b

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const v3, 0x6d766864

    invoke-virtual {p1, v3}, Lhl$a;->g(I)Lhl$b;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Lpl;->u:Z

    move-object v3, v2

    move v8, p3

    invoke-static/range {v3 .. v9}, Lil;->v(Lhl$a;Lhl$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Lsl;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x6d646961

    invoke-virtual {v2, v4}, Lhl$a;->f(I)Lhl$a;

    move-result-object v2

    const v4, 0x6d696e66

    invoke-virtual {v2, v4}, Lhl$a;->f(I)Lhl$a;

    move-result-object v2

    const v4, 0x7374626c

    invoke-virtual {v2, v4}, Lhl$a;->f(I)Lhl$a;

    move-result-object v2

    invoke-static {v3, v2, p2}, Lil;->r(Lsl;Lhl$a;Lek;)Lvl;

    move-result-object v2

    iget v3, v2, Lvl;->b:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l(Lbk;)V
    .locals 3

    iget-object v0, p0, Lpl;->d:Lyt;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lyt;->F(I)V

    iget-object v0, p0, Lpl;->d:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lbk;->peekFully([BII)V

    iget-object v0, p0, Lpl;->d:Lyt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lyt;->K(I)V

    iget-object v0, p0, Lpl;->d:Lyt;

    invoke-virtual {v0}, Lyt;->h()I

    move-result v0

    const v2, 0x68646c72    # 4.3148E24f

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lbk;->skipFully(I)V

    :goto_0
    return-void
.end method

.method public final m(J)V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$a;

    iget-wide v2, v0, Lhl$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$a;

    iget v2, v0, Lhl;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lpl;->o(Lhl$a;)V

    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v1, p0, Lpl;->g:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhl$a;

    invoke-virtual {v1, v0}, Lhl$a;->d(Lhl$a;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lpl;->g:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Lpl;->f()V

    :cond_3
    return-void
.end method

.method public final o(Lhl$a;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lek;

    invoke-direct {v3}, Lek;-><init>()V

    const v4, 0x75647461

    invoke-virtual {v1, v4}, Lhl$a;->g(I)Lhl$b;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v6, v0, Lpl;->u:Z

    invoke-static {v4, v6}, Lil;->w(Lhl$b;Z)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lek;->c(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    goto :goto_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    const v6, 0x6d657461

    invoke-virtual {v1, v6}, Lhl$a;->f(I)Lhl$a;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Lil;->l(Lhl$a;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v5

    :cond_2
    iget v6, v0, Lpl;->a:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v1, v3, v6}, Lpl;->i(Lhl$a;Lek;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_2
    if-ge v12, v6, :cond_9

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lvl;

    iget-object v11, v8, Lvl;->a:Lsl;

    move-object/from16 v17, v8

    iget-wide v7, v11, Lsl;->e:J

    cmp-long v18, v7, v9

    if-eqz v18, :cond_4

    move-wide v9, v7

    move-object/from16 v7, v17

    goto :goto_3

    :cond_4
    move-object/from16 v7, v17

    iget-wide v9, v7, Lvl;->h:J

    :goto_3
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    new-instance v8, Lpl$a;

    move-object/from16 v19, v1

    iget-object v1, v0, Lpl;->p:Lck;

    move/from16 v20, v6

    iget v6, v11, Lsl;->b:I

    invoke-interface {v1, v12, v6}, Lck;->track(II)Lkk;

    move-result-object v1

    invoke-direct {v8, v11, v7, v1}, Lpl$a;-><init>(Lsl;Lvl;Lkk;)V

    iget v1, v7, Lvl;->e:I

    add-int/lit8 v1, v1, 0x1e

    iget-object v6, v11, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/Format;->g(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iget v6, v11, Lsl;->b:I

    move-wide/from16 v21, v14

    const/4 v14, 0x2

    if-ne v6, v14, :cond_5

    const-wide/16 v23, 0x0

    cmp-long v6, v9, v23

    if-lez v6, :cond_5

    iget v6, v7, Lvl;->b:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    int-to-float v6, v6

    long-to-float v9, v9

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v9, v10

    div-float/2addr v6, v9

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/Format;->d(F)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    :cond_6
    :goto_4
    iget v6, v11, Lsl;->b:I

    invoke-static {v6, v1, v4, v5, v3}, Lnl;->a(ILandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/metadata/Metadata;Lek;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iget-object v6, v8, Lpl$a;->c:Lkk;

    invoke-interface {v6, v1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iget v1, v11, Lsl;->b:I

    if-ne v1, v14, :cond_7

    const/4 v1, -0x1

    if-ne v13, v1, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_5

    :cond_7
    const/4 v1, -0x1

    :cond_8
    :goto_5
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    move/from16 v6, v20

    move-wide/from16 v14, v21

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    :cond_9
    iput v13, v0, Lpl;->s:I

    iput-wide v14, v0, Lpl;->t:J

    const/4 v1, 0x0

    new-array v1, v1, [Lpl$a;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lpl$a;

    iput-object v1, v0, Lpl;->q:[Lpl$a;

    invoke-static {v1}, Lpl;->e([Lpl$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lpl;->r:[[J

    iget-object v1, v0, Lpl;->p:Lck;

    invoke-interface {v1}, Lck;->endTracks()V

    iget-object v1, v0, Lpl;->p:Lck;

    invoke-interface {v1, v0}, Lck;->e(Lik;)V

    return-void
.end method

.method public final p(Lbk;)Z
    .locals 8

    iget v0, p0, Lpl;->j:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lpl;->e:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lbk;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iput v2, p0, Lpl;->j:I

    iget-object v0, p0, Lpl;->e:Lyt;

    invoke-virtual {v0, v3}, Lyt;->J(I)V

    iget-object v0, p0, Lpl;->e:Lyt;

    invoke-virtual {v0}, Lyt;->y()J

    move-result-wide v4

    iput-wide v4, p0, Lpl;->i:J

    iget-object v0, p0, Lpl;->e:Lyt;

    invoke-virtual {v0}, Lyt;->h()I

    move-result v0

    iput v0, p0, Lpl;->h:I

    :cond_1
    iget-wide v4, p0, Lpl;->i:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl;->e:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    invoke-interface {p1, v0, v2, v2}, Lbk;->readFully([BII)V

    iget v0, p0, Lpl;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lpl;->j:I

    iget-object v0, p0, Lpl;->e:Lyt;

    invoke-virtual {v0}, Lyt;->B()J

    move-result-wide v4

    :goto_0
    iput-wide v4, p0, Lpl;->i:J

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$a;

    iget-wide v4, v0, Lhl$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lpl;->j:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    goto :goto_0

    :cond_4
    :goto_1
    iget-wide v4, p0, Lpl;->i:J

    iget v0, p0, Lpl;->j:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    iget v0, p0, Lpl;->h:I

    invoke-static {v0}, Lpl;->s(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lpl;->i:J

    add-long/2addr v2, v4

    iget v0, p0, Lpl;->j:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    new-instance v4, Lhl$a;

    iget v5, p0, Lpl;->h:I

    invoke-direct {v4, v5, v2, v3}, Lhl$a;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lpl;->i:J

    iget v0, p0, Lpl;->j:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    invoke-virtual {p0, v2, v3}, Lpl;->m(J)V

    goto :goto_5

    :cond_5
    iget v0, p0, Lpl;->h:I

    const v2, 0x6d657461

    if-ne v0, v2, :cond_6

    invoke-virtual {p0, p1}, Lpl;->l(Lbk;)V

    :cond_6
    invoke-virtual {p0}, Lpl;->f()V

    goto :goto_5

    :cond_7
    iget p1, p0, Lpl;->h:I

    invoke-static {p1}, Lpl;->t(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lpl;->j:I

    if-ne p1, v2, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lit;->f(Z)V

    iget-wide v4, p0, Lpl;->i:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Lit;->f(Z)V

    new-instance p1, Lyt;

    iget-wide v4, p0, Lpl;->i:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lyt;-><init>(I)V

    iput-object p1, p0, Lpl;->k:Lyt;

    iget-object v0, p0, Lpl;->e:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    iget-object p1, p1, Lyt;->a:[B

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lpl;->k:Lyt;

    :goto_4
    iput v1, p0, Lpl;->g:I

    :goto_5
    return v1

    :cond_b
    new-instance p1, Lch;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Lbk;Lhk;)Z
    .locals 9

    iget-wide v0, p0, Lpl;->i:J

    iget v2, p0, Lpl;->j:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lpl;->k:Lyt;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object p2, v4, Lyt;->a:[B

    iget v4, p0, Lpl;->j:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v4, v1}, Lbk;->readFully([BII)V

    iget p1, p0, Lpl;->h:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lpl;->k:Lyt;

    invoke-static {p1}, Lpl;->n(Lyt;)Z

    move-result p1

    iput-boolean p1, p0, Lpl;->u:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhl$a;

    new-instance p2, Lhl$b;

    iget v0, p0, Lpl;->h:I

    iget-object v1, p0, Lpl;->k:Lyt;

    invoke-direct {p2, v0, v1}, Lhl$b;-><init>(ILyt;)V

    invoke-virtual {p1, p2}, Lhl$a;->e(Lhl$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lbk;->skipFully(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lhk;->a:J

    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, v2, v3}, Lpl;->m(J)V

    if-eqz p1, :cond_4

    iget p1, p0, Lpl;->g:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method public final r(Lbk;Lhk;)I
    .locals 13

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v0

    iget v2, p0, Lpl;->l:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lpl;->h(J)I

    move-result v2

    iput v2, p0, Lpl;->l:I

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Lpl;->q:[Lpl$a;

    aget-object v2, v4, v2

    iget-object v2, v2, Lpl$a;->a:Lsl;

    iget-object v2, v2, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v4, "audio/ac4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lpl;->o:Z

    :cond_1
    iget-object v2, p0, Lpl;->q:[Lpl$a;

    iget v4, p0, Lpl;->l:I

    aget-object v2, v2, v4

    iget-object v4, v2, Lpl$a;->c:Lkk;

    iget v5, v2, Lpl$a;->d:I

    iget-object v6, v2, Lpl$a;->b:Lvl;

    iget-object v7, v6, Lvl;->c:[J

    aget-wide v8, v7, v5

    iget-object v6, v6, Lvl;->d:[I

    aget v6, v6, v5

    sub-long v0, v8, v0

    iget v7, p0, Lpl;->m:I

    int-to-long v10, v7

    add-long/2addr v0, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    cmp-long v7, v0, v10

    if-ltz v7, :cond_9

    const-wide/32 v10, 0x40000

    cmp-long v7, v0, v10

    if-ltz v7, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p2, v2, Lpl$a;->a:Lsl;

    iget p2, p2, Lsl;->g:I

    if-ne p2, v12, :cond_3

    const-wide/16 v7, 0x8

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x8

    :cond_3
    long-to-int p2, v0

    invoke-interface {p1, p2}, Lbk;->skipFully(I)V

    iget-object p2, v2, Lpl$a;->a:Lsl;

    iget p2, p2, Lsl;->j:I

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object v1, p0, Lpl;->c:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    aput-byte v0, v1, v0

    aput-byte v0, v1, v12

    const/4 v7, 0x2

    aput-byte v0, v1, v7

    rsub-int/lit8 v7, p2, 0x4

    :goto_0
    iget v8, p0, Lpl;->m:I

    if-ge v8, v6, :cond_8

    iget v8, p0, Lpl;->n:I

    if-nez v8, :cond_5

    invoke-interface {p1, v1, v7, p2}, Lbk;->readFully([BII)V

    iget-object v8, p0, Lpl;->c:Lyt;

    invoke-virtual {v8, v0}, Lyt;->J(I)V

    iget-object v8, p0, Lpl;->c:Lyt;

    invoke-virtual {v8}, Lyt;->h()I

    move-result v8

    if-ltz v8, :cond_4

    iput v8, p0, Lpl;->n:I

    iget-object v8, p0, Lpl;->b:Lyt;

    invoke-virtual {v8, v0}, Lyt;->J(I)V

    iget-object v8, p0, Lpl;->b:Lyt;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9}, Lkk;->c(Lyt;I)V

    iget v8, p0, Lpl;->m:I

    add-int/2addr v8, v9

    iput v8, p0, Lpl;->m:I

    add-int/2addr v6, v7

    goto :goto_0

    :cond_4
    new-instance p1, Lch;

    const-string p2, "Invalid NAL length"

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-interface {v4, p1, v8, v0}, Lkk;->d(Lbk;IZ)I

    move-result v8

    iget v9, p0, Lpl;->m:I

    add-int/2addr v9, v8

    iput v9, p0, Lpl;->m:I

    iget v9, p0, Lpl;->n:I

    sub-int/2addr v9, v8

    iput v9, p0, Lpl;->n:I

    goto :goto_0

    :cond_6
    iget-boolean p2, p0, Lpl;->o:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lpl;->d:Lyt;

    invoke-static {v6, p2}, Lth;->a(ILyt;)V

    iget-object p2, p0, Lpl;->d:Lyt;

    invoke-virtual {p2}, Lyt;->d()I

    move-result p2

    iget-object v1, p0, Lpl;->d:Lyt;

    invoke-interface {v4, v1, p2}, Lkk;->c(Lyt;I)V

    add-int/2addr v6, p2

    iget v1, p0, Lpl;->m:I

    add-int/2addr v1, p2

    iput v1, p0, Lpl;->m:I

    iput-boolean v0, p0, Lpl;->o:Z

    :cond_7
    :goto_1
    iget p2, p0, Lpl;->m:I

    if-ge p2, v6, :cond_8

    sub-int p2, v6, p2

    invoke-interface {v4, p1, p2, v0}, Lkk;->d(Lbk;IZ)I

    move-result p2

    iget v1, p0, Lpl;->m:I

    add-int/2addr v1, p2

    iput v1, p0, Lpl;->m:I

    iget v1, p0, Lpl;->n:I

    sub-int/2addr v1, p2

    iput v1, p0, Lpl;->n:I

    goto :goto_1

    :cond_8
    move v8, v6

    iget-object p1, v2, Lpl$a;->b:Lvl;

    iget-object p2, p1, Lvl;->f:[J

    aget-wide v6, p2, v5

    iget-object p1, p1, Lvl;->g:[I

    aget p1, p1, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v6

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lkk;->a(JIIILkk$a;)V

    iget p1, v2, Lpl$a;->d:I

    add-int/2addr p1, v12

    iput p1, v2, Lpl$a;->d:I

    iput v3, p0, Lpl;->l:I

    iput v0, p0, Lpl;->m:I

    iput v0, p0, Lpl;->n:I

    return v0

    :cond_9
    :goto_2
    iput-wide v8, p2, Lhk;->a:J

    return v12
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    iget-object v0, p0, Lpl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lpl;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lpl;->l:I

    iput v0, p0, Lpl;->m:I

    iput v0, p0, Lpl;->n:I

    iput-boolean v0, p0, Lpl;->o:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lpl;->f()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lpl;->q:[Lpl$a;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lpl;->u(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u(J)V
    .locals 7

    iget-object v0, p0, Lpl;->q:[Lpl$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lpl$a;->b:Lvl;

    invoke-virtual {v4, p1, p2}, Lvl;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, p1, p2}, Lvl;->b(J)I

    move-result v5

    :cond_0
    iput v5, v3, Lpl$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
