.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""

# interfaces
.implements Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/kedlin/cca/util/UrlImageView;

.field public d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d015c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f0a064c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->a:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f0a0229

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->b:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f0a0315

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/util/UrlImageView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->c:Lcom/kedlin/cca/util/UrlImageView;

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    new-instance v0, Lw81;

    invoke-direct {v0}, Lw81;-><init>()V

    invoke-virtual {v0, p2}, Lw81;->F(Landroid/database/Cursor;)Lw81;

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$c;->a:[I

    iget-object v1, v0, Lw81;->h:Lw81$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p2, v3, :cond_8

    if-eq p2, v4, :cond_4

    if-eq p2, v1, :cond_0

    const-string p2, ""

    goto/16 :goto_6

    :cond_0
    iget-object p2, v0, Lw81;->k:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v0, Lw81;->q:Lw81$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p2, v4, :cond_1

    const p2, 0x7f110742

    goto :goto_0

    :cond_1
    const p2, 0x7f1105e3

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lw81;->f:Li91;

    invoke-virtual {v4}, Li91;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, v0, Lw81;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_6

    :cond_2
    iget-object p2, v0, Lw81;->q:Lw81$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p2, v4, :cond_3

    const p2, 0x7f110745

    goto :goto_1

    :cond_3
    const p2, 0x7f1105ec

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lw81;->f:Li91;

    invoke-virtual {v5}, Li91;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v2, v0, Lw81;->k:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, v0, Lw81;->g:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_6

    :cond_4
    iget-object p2, v0, Lw81;->k:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v0, Lw81;->q:Lw81$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p2, v4, :cond_5

    const p2, 0x7f110741

    goto :goto_2

    :cond_5
    const p2, 0x7f1105e2

    :goto_2
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lw81;->f:Li91;

    invoke-virtual {v4}, Li91;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, v0, Lw81;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_6

    :cond_6
    iget-object p2, v0, Lw81;->q:Lw81$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p2, v4, :cond_7

    const p2, 0x7f110744

    goto :goto_3

    :cond_7
    const p2, 0x7f1105eb

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lw81;->f:Li91;

    invoke-virtual {v5}, Li91;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v2, v0, Lw81;->k:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, v0, Lw81;->g:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_8
    iget-object p2, v0, Lw81;->k:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, v0, Lw81;->q:Lw81$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p2, v4, :cond_9

    const p2, 0x7f110740

    goto :goto_4

    :cond_9
    const p2, 0x7f1105e1

    :goto_4
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lw81;->f:Li91;

    invoke-virtual {v4}, Li91;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, v0, Lw81;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_a
    iget-object p2, v0, Lw81;->q:Lw81$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p2, v4, :cond_b

    const p2, 0x7f110743

    goto :goto_5

    :cond_b
    const p2, 0x7f1105ea

    :goto_5
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lw81;->f:Li91;

    invoke-virtual {v5}, Li91;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v2, v0, Lw81;->k:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, v0, Lw81;->g:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_6
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->a:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, v0, Lw81;->p:J

    sub-long v6, v4, v2

    const-wide/32 v8, 0xea60

    cmp-long p2, v6, v8

    if-gez p2, :cond_c

    const p2, 0x7f1103cc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_c
    const-wide/32 v6, 0xea60

    const/high16 v8, 0x40000

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lw81;->n:Landroid/net/Uri;

    const p2, 0x7f080416

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->c:Lcom/kedlin/cca/util/UrlImageView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/kedlin/cca/util/UrlImageView;->setImageDrawable(Ljava/lang/String;I)V

    goto :goto_8

    :cond_d
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->c:Lcom/kedlin/cca/util/UrlImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/kedlin/cca/util/UrlImageView;->setImageDrawable(Ljava/lang/String;I)V

    :goto_8
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;

    iget-object p2, v0, Lw81;->o:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;->a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method
