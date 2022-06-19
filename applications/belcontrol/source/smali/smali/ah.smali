.class public final Lah;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lhp$a;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lhp$a;JJJJZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lah;->a:Lhp$a;

    iput-wide p2, p0, Lah;->b:J

    iput-wide p4, p0, Lah;->c:J

    iput-wide p6, p0, Lah;->d:J

    iput-wide p8, p0, Lah;->e:J

    iput-boolean p10, p0, Lah;->f:Z

    iput-boolean p11, p0, Lah;->g:Z

    return-void
.end method


# virtual methods
.method public a(J)Lah;
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lah;->c:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lah;

    iget-object v4, v0, Lah;->a:Lhp$a;

    iget-wide v5, v0, Lah;->b:J

    iget-wide v9, v0, Lah;->d:J

    iget-wide v11, v0, Lah;->e:J

    iget-boolean v13, v0, Lah;->f:Z

    iget-boolean v14, v0, Lah;->g:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v14}, Lah;-><init>(Lhp$a;JJJJZZ)V

    :goto_0
    return-object v1
.end method

.method public b(J)Lah;
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lah;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lah;

    iget-object v4, v0, Lah;->a:Lhp$a;

    iget-wide v7, v0, Lah;->c:J

    iget-wide v9, v0, Lah;->d:J

    iget-wide v11, v0, Lah;->e:J

    iget-boolean v13, v0, Lah;->f:Z

    iget-boolean v14, v0, Lah;->g:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    invoke-direct/range {v3 .. v14}, Lah;-><init>(Lhp$a;JJJJZZ)V

    :goto_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lah;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lah;

    iget-wide v2, p0, Lah;->b:J

    iget-wide v4, p1, Lah;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lah;->c:J

    iget-wide v4, p1, Lah;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lah;->d:J

    iget-wide v4, p1, Lah;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lah;->e:J

    iget-wide v4, p1, Lah;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lah;->f:Z

    iget-boolean v3, p1, Lah;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lah;->g:Z

    iget-boolean v3, p1, Lah;->g:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lah;->a:Lhp$a;

    iget-object p1, p1, Lah;->a:Lhp$a;

    invoke-static {v2, p1}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lah;->a:Lhp$a;

    invoke-virtual {v0}, Lhp$a;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lah;->b:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lah;->c:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lah;->d:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lah;->e:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lah;->f:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lah;->g:Z

    add-int/2addr v1, v0

    return v1
.end method
