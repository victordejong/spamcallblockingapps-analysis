.class public final Lfk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lyt;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyt;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    iput-object v0, p0, Lfk;->a:Lyt;

    return-void
.end method


# virtual methods
.method public a(Lbk;Llo$a;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lfk;->a:Lyt;

    iget-object v3, v3, Lyt;->a:[B

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, Lbk;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lfk;->a:Lyt;

    invoke-virtual {v3, v0}, Lyt;->J(I)V

    iget-object v3, p0, Lfk;->a:Lyt;

    invoke-virtual {v3}, Lyt;->z()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lfk;->a:Lyt;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lyt;->K(I)V

    iget-object v3, p0, Lfk;->a:Lyt;

    invoke-virtual {v3}, Lyt;->v()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_1

    new-array v1, v5, [B

    iget-object v6, p0, Lfk;->a:Lyt;

    iget-object v6, v6, Lyt;->a:[B

    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v1, v4, v3}, Lbk;->peekFully([BII)V

    new-instance v3, Llo;

    invoke-direct {v3, p2}, Llo;-><init>(Llo$a;)V

    invoke-virtual {v3, v1, v5}, Llo;->c([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v3}, Lbk;->advancePeekPosition(I)V

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :catch_0
    :goto_2
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-interface {p1, v2}, Lbk;->advancePeekPosition(I)V

    return-object v1
.end method
