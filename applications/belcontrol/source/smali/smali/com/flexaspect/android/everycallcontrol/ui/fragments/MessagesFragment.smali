.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f;
    }
.end annotation


# instance fields
.field public N:I

.field public O:Lsb1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->N:I

    return-void
.end method

.method private S()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    return-void
.end method

.method public static synthetic r0(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    return-object p0
.end method

.method public static synthetic s0(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic t0(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public D(Lsb1;)V
    .locals 6

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    const v1, 0x7f110356

    const v2, 0x7f0e000b

    const-string v3, ""

    invoke-virtual {p1, v3}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p1}, Lsb1;->f()Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v0, v1, v3}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v0, Lsb1$c;->b:Lsb1$c;

    sget-object v1, Lsb1$c;->a:Lsb1$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lsb1;->k(Ljava/util/EnumSet;I)Lsb1;

    goto :goto_0

    :cond_0
    sget-object v0, Lsb1$c;->k:Lsb1$c;

    sget-object v3, Lsb1$c;->m:Lsb1$c;

    sget-object v4, Lsb1$c;->b:Lsb1$c;

    sget-object v5, Lsb1$c;->a:Lsb1$c;

    invoke-static {v0, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lsb1;->k(Ljava/util/EnumSet;I)Lsb1;

    invoke-virtual {p1}, Lsb1;->f()Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {p1, v1, v0}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    :goto_0
    return-void
.end method

.method public O()V
    .locals 5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1104c5

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v2, v3, :cond_1

    const v1, 0x7f1104c6

    :cond_1
    const v2, 0x7f1100a0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a1

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d;

    invoke-direct {v3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110285

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public R()V
    .locals 12

    invoke-super {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->R()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v0, v0, La61;->m:I

    invoke-virtual {p0, v0}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {v1, v0}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ll81;->p0()Lq71$e;

    move-result-object v1

    sget-object v2, Lq71$e;->b:Lq71$e;

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-wide v1, v0, Ll81;->w:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-boolean v5, v0, Ll81;->j:Z

    invoke-virtual {v0, v1, v2, v5}, Ll81;->l0(JZ)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Ll81;->u:J

    iget-boolean v5, v0, Ll81;->j:Z

    invoke-virtual {v0, v1, v2, v5}, Ll81;->m0(JZ)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    new-instance v6, Ll81;

    invoke-direct {v6}, Ll81;-><init>()V

    invoke-virtual {v6, v1}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-wide v8, v6, Ll81;->w:J

    cmp-long v10, v8, v3

    if-lez v10, :cond_6

    iget-wide v10, v6, Ll81;->x:J

    invoke-virtual {v0, v8, v9, v10, v11}, Ll81;->j0(JJ)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    new-instance v8, Ll81;

    invoke-direct {v8}, Ll81;-><init>()V

    invoke-virtual {v8, v6}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    invoke-virtual {v0}, Ll81;->s0()Z

    move-result v9

    invoke-virtual {v8}, Ll81;->s0()Z

    move-result v10

    if-ne v9, v10, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_5
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ll81;->s0()Z

    move-result v8

    invoke-virtual {v6}, Ll81;->s0()Z

    move-result v9

    if-ne v8, v9, :cond_7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll81;

    invoke-virtual {v7}, Ll81;->p0()Lq71$e;

    move-result-object v8

    sget-object v9, Lq71$e;->c:Lq71$e;

    if-ne v8, v9, :cond_a

    iget-wide v8, v7, Ll81;->f:J

    cmp-long v10, v8, v3

    if-lez v10, :cond_9

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {v7}, Lv71;->d()Z

    :cond_a
    :goto_3
    invoke-virtual {v7}, Ll81;->p0()Lq71$e;

    move-result-object v8

    sget-object v9, Lq71$e;->d:Lq71$e;

    if-ne v8, v9, :cond_8

    iget-wide v8, v7, Ll81;->f:J

    cmp-long v10, v8, v3

    if-lez v10, :cond_b

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-virtual {v7}, Lv71;->d()Z

    goto :goto_2

    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    sget-object v2, Lq71$e;->c:Lq71$e;

    invoke-virtual {v0, v2, v1}, Ll81;->M(Lq71$e;[Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, v0, Ll81;->j:Z

    if-eqz v2, :cond_e

    :cond_d
    invoke-virtual {v0, v1}, Ll81;->N([Ljava/lang/Long;)Z

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    sget-object v2, Lq71$e;->d:Lq71$e;

    invoke-virtual {v0, v2, v1}, Ll81;->M(Lq71$e;[Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-boolean v2, v0, Ll81;->j:Z

    if-eqz v2, :cond_10

    :cond_f
    invoke-virtual {v0, v1}, Ll81;->N([Ljava/lang/Long;)Z

    :cond_10
    :goto_4
    return-void
.end method

.method public T(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->j0(Lcom/kedlin/cca/ui/HelpOverlayView;Landroid/view/ViewGroup;Landroid/view/View;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v0

    :cond_0
    const-string p2, "messaging.html"

    invoke-virtual {v0, p2}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setVisibility(I)V

    return-void
.end method

.method public V()V
    .locals 6

    sget-object v0, Lq71$e;->c:Lq71$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr71;->z(Lq71$e;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    sget-object v2, Lq71$e;->d:Lq71$e;

    invoke-static {v2, v1}, Lr71;->z(Lq71$e;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0, v1}, Lr71;->z(Lq71$e;Z)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2, v1}, Lr71;->z(Lq71$e;Z)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0, v3}, Lr71;->z(Lq71$e;Z)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2, v3}, Lr71;->z(Lq71$e;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lr71$a;->f:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-nez v2, :cond_2

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    :cond_2
    iput-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    iget-object v2, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-nez v2, :cond_6

    :goto_0
    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-nez v2, :cond_6

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    :cond_6
    :goto_3
    iput-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    :goto_4
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v2, v4}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    :cond_7
    invoke-virtual {p0}, Lrb1;->z()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->q0()V

    sget-object v2, Lm91$c;->k:Lm91$c;

    sget-object v4, Lm91$c;->c:Lm91$c;

    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ll81;

    aput-object v5, v4, v3

    const-class v5, Lz91;

    aput-object v5, v4, v1

    invoke-static {p0, v2, v4}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    invoke-static {}, Lfa1$e;->e()V

    invoke-static {}, Lfa1;->f()V

    iget-object v2, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v2}, Lcom/kedlin/cca/core/CCAService;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v2

    invoke-static {v0}, Lz91;->m(Lq71$e;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {v0}, Lz91;->m(Lq71$e;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_5
    invoke-virtual {v2, v1}, Lsb1;->n(Z)V

    return-void
.end method

.method public b(Ljava/lang/Object;Z)V
    .locals 0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->q0()V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    return-void
.end method

.method public f(Lta1;)Z
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$e;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lfa1;->C(Landroid/app/Activity;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lsb1$c;)V
    .locals 1

    sget-object v0, Lsb1$c;->b:Lsb1$c;

    if-ne p1, v0, :cond_0

    const-string p1, ""

    invoke-static {p1}, Loe1;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g(Lsb1$c;)V

    return-void
.end method

.method public g0(Landroid/view/View;Ll81;Z)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a049c

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0498

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {p2, p1}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g0(Landroid/view/View;Ll81;Z)V

    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g0(Landroid/view/View;Ll81;Z)V

    return-void
.end method

.method public h0(Landroid/view/MenuItem;Ll81;Z)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0524

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->h0(Landroid/view/MenuItem;Ll81;Z)Z

    move-result p1

    return p1

    :cond_0
    sget-object p1, Lr71$a;->o0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d00a2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {p2}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f0a0249

    invoke-virtual {v2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const p1, 0x7f1100a5

    goto :goto_0

    :cond_1
    const p1, 0x7f1100a6

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f1100a7

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f110131

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$b;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)V

    invoke-virtual {p1, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f110285

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$c;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public i0(Lm91$c;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lq71$e;->c:Lq71$e;

    if-eqz p2, :cond_0

    instance-of v1, p2, Lq71$e;

    if-eqz v1, :cond_0

    check-cast p2, Lq71$e;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    sget-object v1, Lm91$c;->a:Lm91$c;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    sget-object v1, Lq71$e;->b:Lq71$e;

    if-eq p2, v1, :cond_1

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p1

    invoke-virtual {p1, v2}, Lsb1;->n(Z)V

    return-void

    :cond_1
    sget-object v1, Lm91$c;->c:Lm91$c;

    if-ne p1, v1, :cond_4

    sget-object p1, Lq71$e;->b:Lq71$e;

    if-eq p2, p1, :cond_4

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p1

    invoke-static {v0}, Lz91;->m(Lq71$e;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lq71$e;->d:Lq71$e;

    invoke-static {p2}, Lz91;->m(Lq71$e;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Lsb1;->n(Z)V

    :cond_4
    return-void
.end method

.method public k0()V
    .locals 5

    sget-object v0, Lta1;->I:Lta1;

    invoke-virtual {v0, p0}, Lta1;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "messages-log.csv"

    invoke-static {v0}, Lcom/kedlin/cca/core/CallControlFileProvider;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lga1;->a(Landroid/app/Activity;Ljava/io/File;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    const v2, 0x7f110340

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lrb1;->p:Landroid/app/Activity;

    const v4, 0x7f11033f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/kedlin/cca/core/CallControlFileProvider;->h(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lie1;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const v2, 0x7f11033e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public n0(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->S()V

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a02f9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0581

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f0a02fa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0a0582

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v0, 0x7f0a03c1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object v3, Lsb1$c;->k:Lsb1$c;

    invoke-virtual {v1, v3}, Lsb1;->i(Lsb1$c;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a00a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object v3, Lsb1$c;->m:Lsb1$c;

    invoke-virtual {v1, v3}, Lsb1;->i(Lsb1$c;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a04bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object v1, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {v0, v1}, Lsb1;->i(Lsb1$c;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0498

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0244

    if-eqz p1, :cond_8

    const p1, 0x7f0e0009

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget p1, p1, La61;->m:I

    invoke-virtual {p0, p1}, Lrb1;->y(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {v0, p1}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v4, 0x7f0a0054

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ll81;->r0()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06020d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    aget-object v4, p1, v1

    const-string v5, "mPopup"

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForceShowIcon"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a049c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v2, 0x7f0e000a

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f110457

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a049b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    const p1, 0x7f0e0008

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0a0524

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f110456

    goto :goto_1

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    iget-object p3, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->closeContextMenu()V

    iget-object p3, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object v1, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v0, v1}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_4

    const p2, 0x7f0e000b

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a02f9

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const p2, 0x7f0a0581

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const p2, 0x7f0a02fa

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const p2, 0x7f0a0582

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const p2, 0x7f0a03c1

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object v0, Lsb1$c;->k:Lsb1$c;

    invoke-virtual {p3, v0}, Lsb1;->i(Lsb1$c;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p2, 0x7f0a00a5

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object v0, Lsb1$c;->m:Lsb1$c;

    invoke-virtual {p3, v0}, Lsb1;->i(Lsb1$c;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p2, 0x7f0a04bd

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O:Lsb1;

    sget-object p3, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {p2, p3}, Lsb1;->i(Lsb1$c;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0498

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    const p2, 0x7f0e0009

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget p2, p2, La61;->m:I

    invoke-virtual {p0, p2}, Lrb1;->y(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {p3, p2}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object p2

    const p3, 0x7f0a0054

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Ll81;->r0()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a049c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    const p2, 0x7f0e000a

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0244

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f110457

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a049b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    const p2, 0x7f0e0008

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0524

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f110456

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    const p3, 0x7f0d00f6

    iput p3, p2, La61;->n:I

    :cond_0
    sget-object p2, Lr71$a;->o0:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_1
    return-object p1
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lrb1;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->S()V

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->N:I

    invoke-super {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->onResume()V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->onStart()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    if-eqz v0, :cond_0

    const v1, 0x7f0d00f6

    iput v1, v0, La61;->n:I

    :cond_0
    return-void
.end method

.method public q0()V
    .locals 4

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$e;->a:[I

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    new-instance v3, Ll81;

    invoke-direct {v3}, Ll81;-><init>()V

    invoke-virtual {v3, v0, v2}, Ll81;->h0(ZZ)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    new-instance v3, Ll81;

    invoke-direct {v3}, Ll81;-><init>()V

    invoke-virtual {v3, v2, v0}, Ll81;->h0(ZZ)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, La61;->a(Landroid/database/Cursor;)V

    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->G:I

    iput v1, v0, La61;->m:I

    :try_start_0
    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->N:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "6aaf93c7568445ce917889c31d7a1313"

    invoke-static {v0, v1}, Lle1;->e(Landroid/widget/ListView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
