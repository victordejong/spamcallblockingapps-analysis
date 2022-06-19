.class public final Lml$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lkk;

.field public final b:Lul;

.field public c:Lsl;

.field public d:Ljl;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Lyt;

.field public final j:Lyt;


# direct methods
.method public constructor <init>(Lkk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lml$b;->a:Lkk;

    new-instance p1, Lul;

    invoke-direct {p1}, Lul;-><init>()V

    iput-object p1, p0, Lml$b;->b:Lul;

    new-instance p1, Lyt;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lyt;-><init>(I)V

    iput-object p1, p0, Lml$b;->i:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lml$b;->j:Lyt;

    return-void
.end method

.method public static synthetic a(Lml$b;)V
    .locals 0

    invoke-virtual {p0}, Lml$b;->i()V

    return-void
.end method

.method public static synthetic b(Lml$b;)Ltl;
    .locals 0

    invoke-virtual {p0}, Lml$b;->c()Ltl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Ltl;
    .locals 2

    iget-object v0, p0, Lml$b;->b:Lul;

    iget-object v1, v0, Lul;->a:Ljl;

    iget v1, v1, Ljl;->a:I

    iget-object v0, v0, Lul;->o:Ltl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lml$b;->c:Lsl;

    invoke-virtual {v0, v1}, Lsl;->a(I)Ltl;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Ltl;->a:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public d(Lsl;Ljl;)V
    .locals 1

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lsl;

    iput-object v0, p0, Lml$b;->c:Lsl;

    invoke-static {p2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljl;

    iput-object p2, p0, Lml$b;->d:Ljl;

    iget-object p2, p0, Lml$b;->a:Lkk;

    iget-object p1, p1, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {p2, p1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {p0}, Lml$b;->g()V

    return-void
.end method

.method public e()Z
    .locals 4

    iget v0, p0, Lml$b;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lml$b;->e:I

    iget v0, p0, Lml$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lml$b;->f:I

    iget-object v2, p0, Lml$b;->b:Lul;

    iget-object v2, v2, Lul;->h:[I

    iget v3, p0, Lml$b;->g:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    iput v3, p0, Lml$b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lml$b;->f:I

    return v0

    :cond_0
    return v1
.end method

.method public f()I
    .locals 8

    invoke-virtual {p0}, Lml$b;->c()Ltl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Ltl;->d:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lml$b;->b:Lul;

    iget-object v0, v0, Lul;->q:Lyt;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ltl;->e:[B

    iget-object v2, p0, Lml$b;->j:Lyt;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lyt;->H([BI)V

    iget-object v2, p0, Lml$b;->j:Lyt;

    array-length v0, v0

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_0
    iget-object v3, p0, Lml$b;->b:Lul;

    iget v4, p0, Lml$b;->e:I

    invoke-virtual {v3, v4}, Lul;->g(I)Z

    move-result v3

    iget-object v4, p0, Lml$b;->i:Lyt;

    iget-object v5, v4, Lyt;->a:[B

    if-eqz v3, :cond_2

    const/16 v6, 0x80

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    invoke-virtual {v4, v1}, Lyt;->J(I)V

    iget-object v1, p0, Lml$b;->a:Lkk;

    iget-object v4, p0, Lml$b;->i:Lyt;

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lkk;->c(Lyt;I)V

    iget-object v1, p0, Lml$b;->a:Lkk;

    invoke-interface {v1, v0, v2}, Lkk;->c(Lyt;I)V

    if-nez v3, :cond_3

    add-int/2addr v2, v5

    return v2

    :cond_3
    iget-object v0, p0, Lml$b;->b:Lul;

    iget-object v0, v0, Lul;->q:Lyt;

    invoke-virtual {v0}, Lyt;->C()I

    move-result v1

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lyt;->K(I)V

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lml$b;->a:Lkk;

    invoke-interface {v3, v0, v1}, Lkk;->c(Lyt;I)V

    add-int/2addr v2, v5

    add-int/2addr v2, v1

    return v2
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lml$b;->b:Lul;

    invoke-virtual {v0}, Lul;->f()V

    const/4 v0, 0x0

    iput v0, p0, Lml$b;->e:I

    iput v0, p0, Lml$b;->g:I

    iput v0, p0, Lml$b;->f:I

    iput v0, p0, Lml$b;->h:I

    return-void
.end method

.method public h(J)V
    .locals 4

    invoke-static {p1, p2}, Lcg;->b(J)J

    move-result-wide p1

    iget v0, p0, Lml$b;->e:I

    :goto_0
    iget-object v1, p0, Lml$b;->b:Lul;

    iget v2, v1, Lul;->f:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lul;->c(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    iget-object v1, p0, Lml$b;->b:Lul;

    iget-object v1, v1, Lul;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lml$b;->h:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-virtual {p0}, Lml$b;->c()Ltl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lml$b;->b:Lul;

    iget-object v1, v1, Lul;->q:Lyt;

    iget v0, v0, Ltl;->d:I

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lyt;->K(I)V

    :cond_1
    iget-object v0, p0, Lml$b;->b:Lul;

    iget v2, p0, Lml$b;->e:I

    invoke-virtual {v0, v2}, Lul;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lyt;->C()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lyt;->K(I)V

    :cond_2
    return-void
.end method

.method public j(Landroidx/media2/exoplayer/external/drm/DrmInitData;)V
    .locals 3

    iget-object v0, p0, Lml$b;->c:Lsl;

    iget-object v1, p0, Lml$b;->b:Lul;

    iget-object v1, v1, Lul;->a:Ljl;

    iget v1, v1, Ljl;->a:I

    invoke-virtual {v0, v1}, Lsl;->a(I)Ltl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ltl;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lml$b;->a:Lkk;

    iget-object v2, p0, Lml$b;->c:Lsl;

    iget-object v2, v2, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/Format;->c(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-interface {v1, p1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
