.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;
.super Lmc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;
    }
.end annotation


# instance fields
.field public l:Landroid/view/LayoutInflater;

.field public m:I

.field public final synthetic n:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->n:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-direct {p0, p2, p3, p4}, Lmc;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const p1, 0x7f0d007b

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->m:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->l:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    invoke-super {p0, p1}, Lmc;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;Landroid/view/View;Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;)V

    :cond_0
    new-instance p1, Lw81;

    invoke-direct {p1}, Lw81;-><init>()V

    invoke-virtual {p1, p3}, Lw81;->F(Landroid/database/Cursor;)Lw81;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v1, p1, Lw81;->p:J

    sub-long v5, v3, v1

    const-wide/32 v7, 0xea60

    cmp-long p3, v5, v7

    if-gez p3, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1103cc

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0xea60

    const/high16 v7, 0x40000

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lw81;->l:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lw81;->f:Li91;

    invoke-virtual {v1}, Li91;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p1, Lw81;->m:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->n:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060212

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->n:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0601c3

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->n:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0601c4

    :goto_1
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->l:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;->m:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
