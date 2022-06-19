.class public Lz51;
.super Lmc;
.source ""

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz51$b;
    }
.end annotation


# instance fields
.field public l:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmc;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lz51;->l:J

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ll81;

    invoke-direct {v1}, Ll81;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ll81;->g0(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ll81;

    invoke-direct {p1}, Ll81;-><init>()V

    invoke-virtual {p1, v0}, Ll81;->f0(Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz51$b;

    if-nez v0, :cond_0

    new-instance v0, Lz51$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lz51$b;-><init>(Lz51;Landroid/view/View;Lz51$a;)V

    :cond_0
    new-instance p1, Ll81;

    invoke-direct {p1}, Ll81;-><init>()V

    invoke-virtual {p1, p3}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-object p3, p1, Ll81;->m:Li91;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p3, :cond_2

    iget-object v3, v0, Lz51$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Li91;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v4, p1, Ll81;->s:J

    iget-wide v6, p0, Lz51;->l:J

    sub-long v8, v6, v4

    const-wide/32 v10, 0xea60

    cmp-long p3, v8, v10

    if-gez p3, :cond_1

    const p3, 0x7f1103cc

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-wide/32 v8, 0xea60

    const/high16 v10, 0x40000

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p3, v0, Lz51$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Ll81;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p1, Ll81;->m:Li91;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Li91;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, v0, Lz51$b;->b:Landroid/widget/TextView;

    iget-object p1, p1, Ll81;->h:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lz51$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lz51$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lz51$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, v0, Lz51$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, v0, Lz51$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d015b

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
