.class public Lu51;
.super Loc;
.source ""

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu51$c;,
        Lu51$b;
    }
.end annotation


# instance fields
.field public o:Landroid/widget/AlphabetIndexer;

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Lu51$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/database/Cursor;Lu51$b;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Loc;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    const-string p1, ""

    iput-object p1, p0, Lu51;->p:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu51;->q:Z

    iput-object p4, p0, Lu51;->r:Lu51$b;

    return-void
.end method

.method public static synthetic k(Lu51;)Lu51$b;
    .locals 0

    iget-object p0, p0, Lu51;->r:Lu51$b;

    return-object p0
.end method


# virtual methods
.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu51$c;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lu51$c;

    invoke-direct {p2, p0, p1, v0}, Lu51$c;-><init>(Lu51;Landroid/view/View;Lu51$a;)V

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    iget-object v1, p0, Lu51;->o:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v1

    invoke-interface {p3}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    iget-boolean v3, p0, Lu51;->q:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    iget-object v2, p0, Lu51;->o:Landroid/widget/AlphabetIndexer;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    iget-boolean p1, p0, Lu51;->q:Z

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    iget-object p1, p0, Lu51;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {p2, v0}, Lu51$c;->a(Lu51$c;Ljava/lang/String;)V

    new-instance p1, Lq81;

    invoke-direct {p1}, Lq81;-><init>()V

    invoke-virtual {p1, p3}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    iget-object v0, p1, Lq81;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_8

    iget-object v0, p1, Lq81;->f:Ljava/lang/String;

    sget-object v2, Lr71$a;->M:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lq81;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p1, Lq81;->f:Ljava/lang/String;

    iget-object v2, p1, Lq81;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lq81;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    :cond_5
    :goto_1
    iget-object v2, p2, Lu51$c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lq81;->g0:Ljava/lang/String;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    if-lez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_9

    new-instance p3, Lx81;

    invoke-direct {p3}, Lx81;-><init>()V

    invoke-virtual {p1}, Lq81;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lx81;

    iget-object v0, p3, Lx81;->g:Li91;

    if-eqz v0, :cond_7

    iget-object v2, p3, Lx81;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v0, p2, Lu51$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lu51$c;->b(Lu51$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p2}, Lu51$c;->b(Lu51$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, p3}, Lu51;->n(Lx81;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_9

    iget-object v0, p2, Lu51$c;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Lu51;->n(Lx81;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object p3, p2, Lu51$c;->d:Landroid/widget/TextView;

    const v0, 0x7f11021b

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_3
    invoke-static {p2}, Lu51$c;->b(Lu51$c;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object p3, p2, Lu51$c;->c:Landroid/view/View;

    invoke-virtual {p1}, Lq81;->g0()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    const/4 v0, 0x4

    :goto_5
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lq81;->b0()Landroid/net/Uri;

    move-result-object p1

    const p3, 0x7f0801c6

    if-eqz p1, :cond_b

    :try_start_0
    iget-object v0, p2, Lu51$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    goto :goto_6

    :catchall_0
    nop

    :goto_6
    if-eqz v4, :cond_c

    :cond_b
    iget-object p1, p2, Lu51$c;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lu51;->o:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lu51;->o:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lu51;->o:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu51;->o:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu51;->p:Ljava/lang/String;

    return-void
.end method

.method public m(Landroid/database/Cursor;Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lu51;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lu51;->p:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alpha index is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu51;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/widget/AlphabetIndexer;

    sget-object v1, Lr71$a;->M:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    invoke-static {p1, v1}, Lq81;->U(Landroid/database/Cursor;Z)I

    move-result v1

    iget-object v2, p0, Lu51;->p:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lu51;->o:Landroid/widget/AlphabetIndexer;

    :cond_1
    iput-boolean p2, p0, Lu51;->q:Z

    invoke-super {p0, p1}, Lmc;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final n(Lx81;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lu51$a;->a:[I

    iget-object v1, p1, Lx81;->h:Li91$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Lx81;->g:Li91;

    iget-object p1, p1, Lx81;->h:Li91$b;

    invoke-virtual {v0, p1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lx81;->g:Li91;

    invoke-virtual {v0}, Li91;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p1, Lx81;->g:Li91;

    iget-object p1, p1, Lx81;->h:Li91$b;

    invoke-virtual {v0, p1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    const v2, 0x7f1100cf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1

    :cond_3
    iget-object p1, p1, Lx81;->g:Li91;

    invoke-virtual {p1}, Li91;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
