.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;
.super Lqb1;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;


# instance fields
.field public g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

.field public h:J

.field public j:Ll81;

.field public k:Lq81;

.field public l:Lx81;

.field public m:Ls81;

.field public n:Li91;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/util/concurrent/ScheduledExecutorService;

.field public r:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqb1;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->h:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->p:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->q:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lqb1;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Lq81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    return-object p0
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Ls81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->m:Ls81;

    return-object p0
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;Lq71$g;Ljava/util/EnumSet;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->J(Lq71$g;Ljava/util/EnumSet;)Z

    move-result p0

    return p0
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;Li91;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->M(Li91;)V

    return-void
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->R()V

    return-void
.end method

.method public static synthetic x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Li91;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    return-object p0
.end method

.method public static synthetic y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->T()V

    return-void
.end method

.method public static synthetic z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->U()V

    return-void
.end method


# virtual methods
.method public final I(Landroid/widget/LinearLayout;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Ll81;->k0()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v3, v0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iget-object v4, v0, Lqb1;->c:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/LayoutInflater;

    const v4, 0x7f1100f6

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    const/4 v15, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_a

    new-instance v9, Ll81;

    invoke-direct {v9}, Ll81;-><init>()V

    invoke-virtual {v9, v2}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    const v4, 0x7f0d015e

    invoke-virtual {v12, v4, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2

    move-object/from16 v16, v2

    move v2, v10

    goto/16 :goto_6

    :cond_2
    iget-wide v4, v9, Ll81;->s:J

    invoke-virtual {v11, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v4, 0xb

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v4, 0xc

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/16 v18, 0x0

    move-object v4, v11

    move-object v15, v8

    move/from16 v8, v16

    move-object/from16 v19, v9

    move/from16 v9, v17

    move-object/from16 v16, v2

    move v2, v10

    move/from16 v10, v18

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    const v4, 0x7f0a0646

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0153

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v5, v19

    iget-boolean v6, v5, Ll81;->j:Z

    if-eqz v6, :cond_3

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v6, v5, Ll81;->o:Ljava/util/EnumSet;

    sget-object v7, Lq71$e;->c:Lq71$e;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Ll81;->n:I

    invoke-virtual {v0, v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->Q(I)I

    move-result v6

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    iget-object v6, v5, Ll81;->o:Ljava/util/EnumSet;

    sget-object v7, Lq71$e;->d:Lq71$e;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v5, Ll81;->n:I

    invoke-virtual {v0, v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->P(I)I

    move-result v6

    goto :goto_1

    :cond_5
    iget v6, v5, Ll81;->n:I

    invoke-virtual {v0, v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->O(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v6, v5, Ll81;->k:Ljava/lang/String;

    const/4 v7, 0x2

    const-string v8, "\n"

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Ll81;->k:Ljava/lang/String;

    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_4

    :cond_6
    iget-object v6, v5, Ll81;->p:Ln91$a;

    sget-object v9, Ln91$a;->b:Ln91$a;

    if-eq v6, v9, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Ll81;->p:Ln91$a;

    invoke-virtual {v8}, Ln91$a;->a()I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_7
    :goto_4
    const v4, 0x7f0a026d

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v6, v5, Ll81;->n:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_8
    iget v5, v5, Ll81;->g:I

    int-to-long v5, v5

    :goto_5
    invoke-static {v5, v6}, Loe1;->n(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v14, -0x1

    if-ge v2, v4, :cond_9

    const v4, 0x7f0d00b4

    invoke-virtual {v12, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    :goto_6
    add-int/lit8 v10, v2, 0x1

    move-object/from16 v2, v16

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_7
    return-void
.end method

.method public final J(Lq71$g;Ljava/util/EnumSet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq71$g;",
            "Ljava/util/EnumSet<",
            "Lq71$e;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v0, v2}, Lx81;->Q(Li91;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    sget-object v2, Lq71$e;->b:Lq71$e;

    sget-object v3, Lq71$e;->c:Lq71$e;

    sget-object v4, Lq71$e;->d:Lq71$e;

    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, v0, Lx81;->j:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iput-object p1, v0, Lx81;->l:Lq71$g;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    iput-object v2, v0, Lx81;->g:Li91;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iget-object v0, v0, Lx81;->j:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iget-object v0, v0, Lx81;->j:Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iput-object p2, v0, Lx81;->f:Ljava/lang/String;

    :cond_2
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    invoke-virtual {p2}, Lx81;->z()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cant add "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    sget-object p2, Lq71$g;->a:Lq71$g;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    :cond_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    if-eqz p1, :cond_5

    iget-wide p1, p1, Lq81;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_5

    new-instance p1, Lq81;

    invoke-direct {p1}, Lq81;-><init>()V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    iget-wide v2, p2, Lq81;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lq81;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    :cond_5
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->V()V

    return v1
.end method

.method public final K(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li91;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v0}, Li91;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const v0, 0x7f1104f5

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public L(IIIILjava/lang/String;Lr71$a;I)V
    .locals 8

    new-instance p6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;

    invoke-direct {p6, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;I)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    const v1, 0x7f0d0162

    invoke-static {v0, v1}, Loe1;->x(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0249

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p5, 0x8

    const v0, 0x7f0a0549

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0207

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->I(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const-string p1, "dialog_cb"

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-lez p4, :cond_2

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p1, p2, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    if-lez p3, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    if-lez p7, :cond_5

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$f;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V

    invoke-virtual {p1, p7, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final M(Li91;)V
    .locals 4

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    :cond_1
    :goto_0
    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->w(Ljava/lang/String;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Ljava/lang/Long;)V

    return-void
.end method

.method public final N()V
    .locals 13

    invoke-virtual {p0}, Lqb1;->o()Lsb1;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    if-eqz v1, :cond_d

    iget-wide v1, v1, Lq81;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v1, Ls81;

    invoke-direct {v1}, Ls81;-><init>()V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    if-eqz v2, :cond_1

    iget-object v2, v2, Ll81;->m:Li91;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    invoke-virtual {v5}, Lq81;->V()La81;

    move-result-object v5

    iget-object v5, v5, La81;->h:[La81$a;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    if-ge v8, v6, :cond_4

    aget-object v10, v5, v8

    invoke-virtual {v10}, La81$a;->a()Li91;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, La81$a;->a()Li91;

    move-result-object v11

    invoke-virtual {v11}, Li91;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move-object v10, v9

    :goto_3
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iget-object v2, v2, Lx81;->g:Li91;

    if-eqz v2, :cond_6

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    new-instance v2, Ls81;

    invoke-direct {v2}, Ls81;-><init>()V

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    iget-wide v5, v5, Lq81;->d:J

    iget-wide v11, v10, La81$a;->a:J

    invoke-virtual {v2, v5, v6, v11, v12}, Ls81;->J(JJ)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_5

    :cond_6
    :goto_4
    move-object v2, v9

    :goto_5
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v2}, Ls81;->H(Landroid/database/Cursor;)Ls81;

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    iget-wide v11, v1, Ls81;->d:J

    cmp-long v2, v11, v3

    if-gtz v2, :cond_b

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iget-object v2, v2, Lx81;->g:Li91;

    if-eqz v2, :cond_a

    if-nez v10, :cond_9

    goto :goto_7

    :cond_9
    new-instance v2, Ls81;

    invoke-direct {v2}, Ls81;-><init>()V

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    iget-wide v8, v6, Lq81;->d:J

    invoke-virtual {v2, v8, v9}, Ls81;->I(J)Landroid/database/Cursor;

    move-result-object v9

    :cond_a
    :goto_7
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ls81;

    invoke-direct {v2}, Ls81;-><init>()V

    invoke-virtual {v2, v9}, Ls81;->H(Landroid/database/Cursor;)Ls81;

    iget-object v5, v2, Ls81;->h:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-gtz v8, :cond_c

    move-object v1, v2

    goto :goto_8

    :cond_b
    move v7, v5

    :cond_c
    :goto_8
    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->m:Ls81;

    sget-object v1, Lsb1$d;->c:Lsb1$d;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsb1;->m(Ljava/util/EnumSet;)Lsb1;

    invoke-virtual {v0, v1, v7}, Lsb1;->q(Lsb1$d;Z)Lsb1;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;

    invoke-direct {v1, p0, v10, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;La81$a;Lsb1;)V

    invoke-virtual {v0, v1}, Lsb1;->l(Lsb1$b;)Lsb1;

    return-void

    :cond_d
    :goto_9
    sget-object v1, Lsb1$c;->b:Lsb1$c;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsb1;->j(Ljava/util/EnumSet;)Lsb1;

    return-void
.end method

.method public final O(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const p1, 0x7f11014d

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f11014e

    goto :goto_0

    :cond_2
    const p1, 0x7f11014c

    goto :goto_0
.end method

.method public final P(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const p1, 0x7f1106f1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const p1, 0x7f1105f6

    goto :goto_0

    :cond_2
    const p1, 0x7f1105f5

    :goto_0
    return p1
.end method

.method public final Q(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const p1, 0x7f1106f1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const p1, 0x7f1105f6

    goto :goto_0

    :cond_2
    const p1, 0x7f1105f5

    :goto_0
    return p1
.end method

.method public final R()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-wide v2, v2, Ll81;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    iget-wide v2, v2, Lq81;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    iget-wide v2, v2, Lq81;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {v1, p0, v2, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public S()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->m:Ls81;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ls81;->h:Ljava/lang/Long;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lv71;->d()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lv71;->z()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final T()V
    .locals 5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->r:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final U()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v1, v0}, Lfa1;->O(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lm91;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final V()V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->h:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v2, v4

    if-lez v9, :cond_a

    iput-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iput-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->p:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v2, v3, :cond_1

    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    iget-wide v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->h:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ll81;

    iput-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v3, v2, Ll81;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    iget-object v3, v2, Ll81;->m:Li91;

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v2}, Ll81;->r0()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    invoke-virtual {v3}, Ll81;->d0()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lq81;

    iput-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    :cond_1
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    if-nez v2, :cond_8

    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    iput-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v2, v3}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    new-instance v3, Lx81;

    invoke-direct {v3}, Lx81;-><init>()V

    invoke-virtual {v3, v2}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v9, v3, Lx81;->h:Li91$b;

    sget-object v10, Li91$b;->b:Li91$b;

    if-ne v9, v10, :cond_3

    iget-object v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    invoke-virtual {v9, v2}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    :cond_3
    iget-object v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->p:Ljava/lang/Boolean;

    if-nez v9, :cond_5

    iget-object v3, v3, Lx81;->l:Lq71$g;

    sget-object v9, Lq71$g;->c:Lq71$g;

    if-ne v3, v9, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->p:Ljava/lang/Boolean;

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iget-object v3, v2, Lx81;->g:Li91;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    iput-object v3, v2, Lx81;->g:Li91;

    iget-object v2, v2, Lx81;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    iput-object v2, v3, Lx81;->f:Ljava/lang/String;

    :cond_8
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->p:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->p:Ljava/lang/Boolean;

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->N()V

    :cond_a
    const v2, 0x7f0a02e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLinksClickable(Z)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_b

    const v9, 0x7f0a01fe

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f060203

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_b
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object v9, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    const v10, 0x7f0a00a9

    const-string v11, ")"

    const-string v12, "("

    const v13, 0x7f0a045c

    const v14, 0x7f0a0382

    const v15, 0x7f0a0481

    const/16 v6, 0x8

    if-ne v3, v9, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-wide v4, v3, Ll81;->s:J

    sub-long v17, v19, v4

    const-wide/32 v21, 0xea60

    cmp-long v3, v17, v21

    if-gez v3, :cond_c

    const v3, 0x7f1103cc

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_c
    const-wide/32 v21, 0xea60

    const/high16 v23, 0x40000

    move-wide/from16 v17, v4

    invoke-static/range {v17 .. v23}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v4, v4, Ll81;->o:Ljava/util/EnumSet;

    sget-object v5, Lq71$e;->c:Lq71$e;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v4, v4, Ll81;->o:Ljava/util/EnumSet;

    sget-object v5, Lq71$e;->d:Lq71$e;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1105f1

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v3, v9, v8

    invoke-virtual {v0, v5, v9}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_e
    :goto_2
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1105f2

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v3, v9, v8

    invoke-virtual {v0, v5, v9}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v4, v3, Ll81;->h:Ljava/lang/String;

    iget-object v3, v3, Ll81;->m:Li91;

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v4, v4, Ll81;->m:Li91;

    invoke-virtual {v4}, Li91;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget v5, v5, Ll81;->r:I

    invoke-static {v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v4, v4, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-boolean v3, v3, Ll81;->j:Z

    if-eqz v3, :cond_14

    invoke-static {}, Lr71;->n()Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v4, v4, Ll81;->q:Ljava/lang/Integer;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li71;

    goto :goto_5

    :cond_10
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<br/><font color=\"#E8504C\">"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f110140

    new-array v13, v7, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_11

    iget-object v3, v3, Li71;->a:Ljava/lang/String;

    goto :goto_6

    :cond_11
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object v3, v3, Ll81;->p:Ln91$a;

    invoke-virtual {v3}, Ln91$a;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</font>"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v8

    invoke-virtual {v0, v4, v13}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_12
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v4, v5, :cond_13

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    invoke-virtual {v4}, Lx81;->L()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_13
    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v4}, Li91;->m()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_8
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v3}, Li91;->s()Z

    move-result v3

    const v4, 0x7f0a004b

    const v5, 0x7f0a06ad

    if-nez v3, :cond_27

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v3}, Li91;->q()Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_12

    :cond_15
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    if-eqz v3, :cond_16

    iget-wide v4, v3, Lq81;->d:J

    const-wide/16 v13, 0x0

    cmp-long v17, v4, v13

    if-lez v17, :cond_17

    new-array v4, v7, [La81;

    invoke-virtual {v3}, Lq81;->V()La81;

    move-result-object v3

    aput-object v3, v4, v8

    goto :goto_9

    :cond_16
    const-wide/16 v13, 0x0

    :cond_17
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    if-eqz v3, :cond_18

    iget-wide v4, v3, Lx81;->d:J

    cmp-long v7, v4, v13

    if-lez v7, :cond_18

    iget-object v3, v3, Lx81;->g:Li91;

    invoke-static {v3}, La81;->d(Li91;)[La81;

    move-result-object v4

    goto :goto_9

    :cond_18
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_1f

    array-length v3, v4

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v5, v3, :cond_1e

    aget-object v7, v4, v5

    if-eqz v7, :cond_1d

    iget-object v13, v7, La81;->h:[La81$a;

    if-nez v13, :cond_19

    goto :goto_c

    :cond_19
    array-length v14, v13

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v14, :cond_1d

    aget-object v9, v13, v6

    iget-object v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Li91;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, La81$a;->a()Li91;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Li91;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-eq v6, v8, :cond_1a

    sget-object v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne v6, v8, :cond_1b

    :cond_1a
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v9}, La81$a;->a()Li91;

    move-result-object v8

    invoke-virtual {v8}, Li91;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, La81$a;->c:I

    invoke-static {v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1b
    iget-object v6, v7, La81;->f:Landroid/net/Uri;

    move-object/from16 v16, v6

    goto :goto_c

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    const v10, 0x7f0a00a9

    goto :goto_b

    :cond_1d
    :goto_c
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    const/4 v8, 0x0

    const v10, 0x7f0a00a9

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v6, v16

    goto :goto_d

    :cond_1f
    const/4 v6, 0x0

    :goto_d
    const v3, 0x7f0a01fc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v6, :cond_20

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_e

    :cond_20
    const v4, 0x7f0801c6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_e
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lq81;->h0()Z

    move-result v3

    if-nez v3, :cond_22

    :cond_21
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->p:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    const v3, 0x7f0a00a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a00a3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    :cond_23
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    const v4, 0x7f0a01fd

    if-eqz v3, :cond_24

    iget-wide v5, v3, Lq81;->d:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_24

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$b;

    invoke-direct {v4, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0273

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_24
    const v3, 0x7f0a0273

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$c;

    invoke-direct {v3, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_f
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Loe1;->p(Li91;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v8, 0x0

    goto :goto_10

    :cond_25
    const/16 v8, 0x8

    :goto_10
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v1, ""

    goto :goto_11

    :cond_26
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_27
    :goto_12
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a06ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f11073a

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v6}, Li91;->s()Z

    move-result v6

    if-eqz v6, :cond_28

    const v6, 0x7f110739

    goto :goto_13

    :cond_28
    const v6, 0x7f1105a2

    :goto_13
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0571

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v5}, Li91;->s()Z

    move-result v5

    if-eqz v5, :cond_29

    const v5, 0x7f11065b

    goto :goto_14

    :cond_29
    const v5, 0x7f110658

    :goto_14
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v5}, Li91;->s()Z

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Lr71$a;->y:Lr71$a;

    goto :goto_15

    :cond_2a
    sget-object v5, Lr71$a;->x:Lr71$a;

    :goto_15
    invoke-virtual {v5}, Lr71$a;->a()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$a;

    invoke-direct {v3, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0273

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 3

    invoke-super {p0, p1}, Lqb1;->g(Lsb1$c;)V

    sget-object v0, Lsb1$c;->b:Lsb1$c;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p1, v0, v1}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f11054c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Li91;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->K(Z)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-object p1, p1, Ll81;->m:Li91;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, ""

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    :goto_0
    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Loe1;->u(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->K(Z)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->K(Z)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-virtual {v0, p0, v1, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    goto/16 :goto_4

    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-wide v2, p1, Ll81;->s:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p1, v0, v2

    if-gez p1, :cond_7

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1103cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    iget-wide v0, v0, Ll81;->s:J

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v5, p1

    const/4 v1, 0x2

    const v2, 0x7f110555

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->L(IIIILjava/lang/String;Lr71$a;I)V

    goto/16 :goto_4

    :sswitch_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lx81;->l:Lq71$g;

    sget-object v3, Lq71$g;->c:Lq71$g;

    if-ne p1, v3, :cond_8

    const/4 v5, 0x3

    const v6, 0x7f110616

    const v7, 0x7f110531

    const v8, 0x7f110617

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const v3, 0x7f110618

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const v11, 0x7f110615

    :goto_3
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->L(IIIILjava/lang/String;Lr71$a;I)V

    return-void

    :cond_8
    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->K(Z)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v0, "BLOCKED_LIST_FULL"

    invoke-static {p1, v0}, Loe1;->l0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    :cond_a
    sget-object p1, Lq71$g;->c:Lq71$g;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->J(Lq71$g;Ljava/util/EnumSet;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->n:Li91;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->M(Li91;)V

    goto :goto_4

    :sswitch_5
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lx81;->l:Lq71$g;

    sget-object v3, Lq71$g;->b:Lq71$g;

    if-ne p1, v3, :cond_b

    const/4 v5, 0x3

    const v6, 0x7f110613

    const v7, 0x7f110531

    const v8, 0x7f110614

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const v3, 0x7f110611

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const v11, 0x7f110612

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->K(Z)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v3, "ALLOWED_LIST_FULL"

    invoke-static {p1, v3}, Loe1;->k0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 v4, 0x1

    const v5, 0x7f110725

    const v6, 0x7f110531

    const v7, 0x7f110726

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const v3, 0x7f11072e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x7f11071e

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->L(IIIILjava/lang/String;Lr71$a;I)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0066 -> :sswitch_5
        0x7f0a00a3 -> :sswitch_4
        0x7f0a0382 -> :sswitch_3
        0x7f0a03bc -> :sswitch_2
        0x7f0a03cb -> :sswitch_1
        0x7f0a0562 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0302

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    sget-object p1, Lq71$g;->a:Lq71$g;

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    sget-object p1, Lq71$g;->c:Lq71$g;

    sget-object v0, Lq71$e;->c:Lq71$e;

    sget-object v1, Lq71$e;->d:Lq71$e;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-object p1, Lq71$g;->c:Lq71$g;

    sget-object v0, Lq71$e;->b:Lq71$e;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget-object p1, Lq71$g;->c:Lq71$g;

    sget-object v0, Lq71$e;->b:Lq71$e;

    sget-object v1, Lq71$e;->c:Lq71$e;

    sget-object v2, Lq71$e;->d:Lq71$e;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->J(Lq71$g;Ljava/util/EnumSet;)Z

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    sget-object v2, Lq71$a;->g:Lq71$a;

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    sget-object v2, Lq71$a;->f:Lq71$a;

    goto :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    sget-object v2, Lq71$a;->d:Lq71$a;

    goto :goto_1

    :sswitch_7
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    sget-object v2, Lq71$a;->c:Lq71$a;

    :goto_1
    iput-object v2, v0, Lx81;->k:Lq71$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00d6 -> :sswitch_7
        0x7f0a026b -> :sswitch_6
        0x7f0a0310 -> :sswitch_5
        0x7f0a055f -> :sswitch_4
        0x7f11045f -> :sswitch_3
        0x7f110460 -> :sswitch_2
        0x7f110461 -> :sswitch_1
        0x7f110617 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const p2, 0x7f110452

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p3, :cond_0

    aget-object v3, p2, v1

    invoke-static {v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;)I

    move-result v4

    invoke-static {v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->k:Lq81;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lq81;->g0()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->l:Lx81;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lx81;->l:Lq71$g;

    sget-object p3, Lq71$g;->c:Lq71$g;

    if-ne p2, p3, :cond_3

    :cond_2
    const p2, 0x7f110617

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0d0160

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p3}, Lqb1;->q(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    move-result-object p3

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->s:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p3, p3, v0

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->t:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->h:J

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->V()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->S()V

    invoke-super {p0, p1}, Lqb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->j:Ll81;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->t:Ljava/lang/String;

    iget-wide v2, v0, Ll81;->d:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lqb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a00a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0066

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03bc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0562

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0382

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    const v0, 0x7f1105f7

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method
