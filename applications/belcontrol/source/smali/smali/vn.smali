.class public final Lvn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn$a;
    }
.end annotation


# direct methods
.method public static a(Lbk;)Lun;
    .locals 14

    invoke-static {p0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lyt;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    invoke-static {p0, v0}, Lvn$a;->a(Lbk;Lyt;)Lvn$a;

    move-result-object v2

    iget v2, v2, Lvn$a;->a:I

    const/4 v3, 0x0

    const v4, 0x52494646

    if-eq v2, v4, :cond_0

    return-object v3

    :cond_0
    iget-object v2, v0, Lyt;->a:[B

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {p0, v2, v5, v4}, Lbk;->peekFully([BII)V

    invoke-virtual {v0, v5}, Lyt;->J(I)V

    invoke-virtual {v0}, Lyt;->h()I

    move-result v2

    const v4, 0x57415645

    const-string v6, "WavHeaderReader"

    if-eq v2, v4, :cond_1

    const/16 p0, 0x24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported RIFF format: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lst;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lvn$a;->a(Lbk;Lyt;)Lvn$a;

    move-result-object v2

    iget v4, v2, Lvn$a;->a:I

    const v7, 0x666d7420

    if-eq v4, v7, :cond_2

    iget-wide v7, v2, Lvn$a;->b:J

    long-to-int v2, v7

    invoke-interface {p0, v2}, Lbk;->advancePeekPosition(I)V

    goto :goto_1

    :cond_2
    iget-wide v7, v2, Lvn$a;->b:J

    const-wide/16 v9, 0x10

    cmp-long v4, v7, v9

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lit;->f(Z)V

    iget-object v4, v0, Lyt;->a:[B

    invoke-interface {p0, v4, v5, v1}, Lbk;->peekFully([BII)V

    invoke-virtual {v0, v5}, Lyt;->J(I)V

    invoke-virtual {v0}, Lyt;->o()I

    move-result v4

    invoke-virtual {v0}, Lyt;->o()I

    move-result v8

    invoke-virtual {v0}, Lyt;->n()I

    move-result v9

    invoke-virtual {v0}, Lyt;->n()I

    move-result v10

    invoke-virtual {v0}, Lyt;->o()I

    move-result v11

    invoke-virtual {v0}, Lyt;->o()I

    move-result v12

    mul-int v0, v8, v12

    div-int/lit8 v0, v0, 0x8

    if-ne v11, v0, :cond_5

    invoke-static {v4, v12}, Lvi;->a(II)I

    move-result v13

    if-nez v13, :cond_4

    const/16 p0, 0x40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported WAV format: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bit/sample, type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-wide v2, v2, Lvn$a;->b:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Lbk;->advancePeekPosition(I)V

    new-instance p0, Lun;

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lun;-><init>(IIIIII)V

    return-object p0

    :cond_5
    new-instance p0, Lch;

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected block alignment: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; got: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lbk;Lun;)V
    .locals 8

    invoke-static {p0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lbk;->resetPeekPosition()V

    new-instance v0, Lyt;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    :goto_0
    invoke-static {p0, v0}, Lvn$a;->a(Lbk;Lyt;)Lvn$a;

    move-result-object v2

    iget v3, v2, Lvn$a;->a:I

    const v4, 0x64617461

    if-eq v3, v4, :cond_2

    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring unknown WAV chunk: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WavHeaderReader"

    invoke-static {v4, v3}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x8

    iget-wide v5, v2, Lvn$a;->b:J

    add-long/2addr v5, v3

    iget v3, v2, Lvn$a;->a:I

    const v4, 0x52494646

    if-ne v3, v4, :cond_0

    const-wide/16 v5, 0xc

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    long-to-int v2, v5

    invoke-interface {p0, v2}, Lbk;->skipFully(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Lch;

    iget p1, v2, Lvn$a;->a:I

    const/16 v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {p0, v1}, Lbk;->skipFully(I)V

    invoke-interface {p0}, Lbk;->getPosition()J

    move-result-wide v0

    iget-wide v2, v2, Lvn$a;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lun;->i(JJ)V

    return-void
.end method
