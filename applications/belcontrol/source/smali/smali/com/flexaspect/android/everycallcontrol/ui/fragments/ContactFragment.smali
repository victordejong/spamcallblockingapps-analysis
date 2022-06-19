.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;
.super Lqb1;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;
    }
.end annotation


# static fields
.field public static final y:Ljava/lang/String;


# instance fields
.field public g:Landroid/app/Activity;

.field public h:Landroid/view/View;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/CompoundButton;

.field public o:Landroid/widget/CompoundButton;

.field public p:Landroid/widget/CompoundButton;

.field public q:J

.field public r:Lq81;

.field public s:Ljava/lang/String;

.field public t:Lq71$g;

.field public u:Lq71$a;

.field public v:Ljava/lang/Integer;

.field public w:Z

.field public x:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EXTRA_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqb1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    sget-object v0, Lq71$a;->c:Lq71$a;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->v:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->w:Z

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->o:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->p:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->M(Z)V

    return-void
.end method

.method public static synthetic D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->n:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method public static synthetic E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->O()V

    return-void
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq71$a;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    return-object p0
.end method

.method public static synthetic x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Li91;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->G(Li91;Z)V

    return-void
.end method

.method public static synthetic y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    return-object p0
.end method

.method public static synthetic z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->H(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final G(Li91;Z)V
    .locals 0

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Loe1;->u(Ljava/lang/String;)V

    return-void
.end method

.method public final H(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public I()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lq81;->V()La81;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {v2}, Lq81;->V()La81;

    move-result-object v2

    iget-object v2, v2, La81;->h:[La81$a;

    if-nez v2, :cond_1

    goto/16 :goto_12

    :cond_1
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {v2}, Lq81;->V()La81;

    move-result-object v2

    iget-object v2, v2, La81;->h:[La81$a;

    array-length v3, v2

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-wide v4, v4, Lq81;->d:J

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {v4}, Lq81;->j0()Z

    move-result v4

    sget-object v5, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v5}, Lr71$a;->a()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lfa1;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lfa1;->t()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    sget-object v6, Lq71$a;->f:Lq71$a;

    if-eq v5, v6, :cond_2

    sget-object v6, Lq71$a;->c:Lq71$a;

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-static {}, Lfa1;->t()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    sget-object v6, Lq71$a;->d:Lq71$a;

    if-ne v5, v6, :cond_4

    sget-object v5, Lr71$a;->v:Lr71$a;

    invoke-virtual {v5}, Lr71$a;->a()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    sget-object v6, Lq71$a;->c:Lq71$a;

    iput-object v6, v5, Lq81;->j:Lq71$a;

    :cond_4
    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v6, v5, Lq81;->j:Lq71$a;

    iput-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    iget-object v6, v5, Lq81;->k:Lq71$g;

    iput-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->t:Lq71$g;

    iget-object v5, v5, Lq81;->h:Ljava/util/EnumSet;

    invoke-static {v5}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->v:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ls81;

    invoke-direct {v7}, Ls81;-><init>()V

    iget-object v8, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-wide v8, v8, Lq81;->d:J

    invoke-virtual {v7, v8, v9}, Ls81;->I(J)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_6
    invoke-virtual {v7, v8}, Ls81;->H(Landroid/database/Cursor;)Ls81;

    invoke-virtual {v7}, Ls81;->K()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-ge v8, v3, :cond_19

    aget-object v11, v2, v8

    const v12, 0x7f0d014a

    iget-object v13, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12, v13, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_a

    goto/16 :goto_b

    :cond_a
    new-instance v13, Lx81;

    invoke-direct {v13}, Lx81;-><init>()V

    invoke-virtual {v11}, La81$a;->a()Li91;

    move-result-object v14

    invoke-virtual {v13, v14}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_10

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v13, v14}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    if-nez v15, :cond_c

    iget-object v15, v13, Lx81;->l:Lq71$g;

    sget-object v10, Lq71$g;->c:Lq71$g;

    if-ne v15, v10, :cond_b

    goto :goto_2

    :cond_b
    const/4 v15, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v15, 0x1

    :goto_3
    if-nez v16, :cond_e

    iget-object v10, v13, Lx81;->l:Lq71$g;

    sget-object v7, Lq71$g;->b:Lq71$g;

    if-ne v10, v7, :cond_d

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v7, 0x1

    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_6

    :cond_f
    move/from16 v16, v7

    const/4 v7, 0x0

    goto :goto_1

    :cond_10
    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_6
    if-eqz v14, :cond_11

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_11
    iget-boolean v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->w:Z

    or-int/2addr v10, v15

    iput-boolean v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->w:Z

    new-instance v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;

    invoke-direct {v10, v0, v9}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$e;)V

    iput-object v11, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->a:La81$a;

    iget-object v9, v11, La81$a;->b:Ljava/lang/String;

    const v9, 0x7f0a0316

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->d:Landroid/widget/ImageView;

    invoke-virtual {v11}, La81$a;->a()Li91;

    move-result-object v13

    invoke-virtual {v13}, Li91;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x0

    goto :goto_7

    :cond_12
    const/4 v13, 0x4

    :goto_7
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    const v9, 0x7f0a04b4

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->b:Landroid/widget/TextView;

    invoke-virtual {v11}, La81$a;->a()Li91;

    move-result-object v13

    invoke-virtual {v13}, Li91;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0a04b5

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->c:Landroid/widget/TextView;

    iget v13, v11, La81$a;->c:I

    invoke-static {v13}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v12, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v15, :cond_15

    iget-object v9, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->b:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v17, 0x7f0601c4

    const v18, 0x7f060211

    if-eqz v7, :cond_13

    const v14, 0x7f0601c4

    goto :goto_8

    :cond_13
    const v14, 0x7f060211

    :goto_8
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->c:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v7, :cond_14

    const v7, 0x7f0601c4

    goto :goto_9

    :cond_14
    const v7, 0x7f060211

    :goto_9
    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    iget-object v7, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->b:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v7, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->b:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_16
    iget-object v7, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->a:La81$a;

    invoke-virtual {v7}, La81$a;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_a
    const v9, 0x7f0a05e0

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v9, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;

    invoke-direct {v9, v0, v11, v15}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;La81$a;Z)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a04b1

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->b:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v9, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i;

    invoke-direct {v9, v0, v11}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;La81$a;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;

    invoke-direct {v7, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_17

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->k:Landroid/widget/LinearLayout;

    const v9, 0x7f0a0476

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_17

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v3, -0x1

    if-ge v8, v7, :cond_18

    const v7, 0x7f0d00b4

    iget-object v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_18
    :goto_b
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_19
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {v2}, Lq81;->b0()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1a

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->j:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0801c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_1a
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_c
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {v2}, Lq81;->g0()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->M(Z)V

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v2, v2, Lq81;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->l:Landroid/widget/TextView;

    const v3, 0x7f11021b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d

    :cond_1b
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->l:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v3, v3, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->m:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a0302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    invoke-virtual {v5}, Lq71$a;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0365

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a05c7

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CompoundButton;

    iput-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->o:Landroid/widget/CompoundButton;

    const v5, 0x7f0a05c8

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CompoundButton;

    iput-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->p:Landroid/widget/CompoundButton;

    const v5, 0x7f0a05c6

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->n:Landroid/widget/CompoundButton;

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$k;

    invoke-direct {v1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$k;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_1c
    const/4 v4, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->n:Landroid/widget/CompoundButton;

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->t:Lq71$g;

    sget-object v3, Lq71$g;->b:Lq71$g;

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_e

    :cond_1d
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->o:Landroid/widget/CompoundButton;

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->t:Lq71$g;

    sget-object v3, Lq71$g;->c:Lq71$g;

    if-ne v2, v3, :cond_1e

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v2, v2, Lq81;->h:Ljava/util/EnumSet;

    sget-object v5, Lq71$e;->b:Lq71$e;

    invoke-virtual {v2, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_f

    :cond_1e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->p:Landroid/widget/CompoundButton;

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->t:Lq71$g;

    if-ne v2, v3, :cond_20

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v2, v2, Lq81;->h:Ljava/util/EnumSet;

    sget-object v3, Lq71$e;->c:Lq71$e;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v2, v2, Lq81;->h:Ljava/util/EnumSet;

    sget-object v3, Lq71$e;->d:Lq71$e;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    const/4 v7, 0x1

    goto :goto_10

    :cond_20
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->N()V

    return-void

    :cond_21
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object v1

    invoke-virtual {v1}, Lnd;->G0()V

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->K(Ljava/lang/String;Z)V

    return-void
.end method

.method public final K(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lq81;

    invoke-direct {p2}, Lq81;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lq81;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {p2}, Lq81;->V()La81;

    :cond_1
    return-void
.end method

.method public L()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lq81;->e0(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->t:Lq71$g;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v2, v1, Lq81;->k:Lq71$g;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    iget-object v2, v1, Lq81;->j:Lq71$a;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->v:Ljava/lang/Integer;

    iget-object v1, v1, Lq81;->h:Ljava/util/EnumSet;

    invoke-static {v1}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lq81;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {v0}, Lq81;->s0()V

    :cond_1
    return-void
.end method

.method public final M(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final N()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->n:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->p:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->o:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->o:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->n:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->p:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->n:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->n:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->o:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$m;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$m;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->p:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->h:Landroid/view/View;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$b;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final O()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lr71$a;->y0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsh0;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lsh0;->o()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 2

    invoke-super {p0, p1}, Lqb1;->g(Lsb1$c;)V

    sget-object v0, Lsb1$c;->h:Lsb1$c;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lq81;->V()La81;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    invoke-virtual {p1}, Lq81;->V()La81;

    move-result-object p1

    iget-object p1, p1, La81;->g:Landroid/net/Uri;

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lq81;->d:J

    invoke-static {v0, v1}, La81;->f(J)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-static {v0, p1}, Lie1;->b(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    instance-of p1, p3, Lq81;

    if-eqz p1, :cond_0

    check-cast p3, Lq81;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-eqz p1, :cond_0

    iget-wide p1, p1, Lq81;->d:J

    iget-wide v0, p3, Lq81;->d:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$e;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-super {p0, p1}, Lqb1;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    sget-object v0, Lq71$a;->g:Lq71$a;

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    sget-object v0, Lq71$a;->f:Lq71$a;

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    sget-object v0, Lq71$a;->d:Lq71$a;

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    sget-object v0, Lq71$a;->c:Lq71$a;

    :goto_0
    iput-object v0, p1, Lq81;->j:Lq71$a;

    :goto_1
    sget-object p1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lfa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lfa1;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    sget-object v2, Lq71$a;->g:Lq71$a;

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    sget-object v0, Lsx0;->a:Lsx0;

    invoke-static {p1, v0}, Loe1;->v0(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Low0;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->x:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    sget-object v0, Lq71$a;->c:Lq71$a;

    iput-object v0, p1, Lq81;->j:Lq71$a;

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lfa1;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    sget-object v2, Lq71$a;->f:Lq71$a;

    if-eq v0, v2, :cond_1

    sget-object v2, Lq71$a;->c:Lq71$a;

    if-eq v0, v2, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    sget-object v3, Lsx0;->a:Lsx0;

    invoke-static {p1, v0, v3}, Loe1;->f0(Landroid/content/Context;Lq71$a;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->x:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iput-object v2, p1, Lq81;->j:Lq71$a;

    goto :goto_2

    :cond_1
    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->u:Lq71$a;

    sget-object v0, Lq71$a;->d:Lq71$a;

    if-ne p1, v0, :cond_2

    sget-object p1, Lr71$a;->v:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110231

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11041b

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$d;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1101b0

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$c;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const v0, 0x7f0a0302

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    iget-object v0, v0, Lq81;->j:Lq71$a;

    invoke-virtual {v0}, Lq71$a;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00d6 -> :sswitch_3
        0x7f0a026b -> :sswitch_2
        0x7f0a0310 -> :sswitch_1
        0x7f0a055f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const p3, 0x7f0e0001

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-static {}, Lp71;->a()Ljava/util/EnumSet;

    move-result-object p2

    sget-object p3, Lq71$a;->d:Lq71$a;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f0a026b

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    sget-object p3, Lq71$a;->f:Lq71$a;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const p3, 0x7f0a0310

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    sget-object p3, Lq71$a;->g:Lq71$a;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f0a055f

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0088

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0a01fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060203

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->x:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->x:Landroid/app/Dialog;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 10

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v2, 0x7f0a007a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0079

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0a03c6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v8}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->K(Ljava/lang/String;Z)V

    sget-object v6, Lta1;->J:Lta1;

    invoke-virtual {v6}, Lta1;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    const-string v8, "permissions/contacts_perms.html"

    invoke-static {v8, v6}, Loe1;->P(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$g;

    invoke-direct {v3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$g;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lqb1;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->J(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->G0()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->O()V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$f;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->I()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->L()V

    invoke-super {p0}, Lqb1;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    iget-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->J(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->G0()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lq81;->d0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->s:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lqb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a04b7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->k:Landroid/widget/LinearLayout;

    const p2, 0x7f0a00ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->h:Landroid/view/View;

    const p2, 0x7f0a01fc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->j:Landroid/widget/ImageView;

    const p2, 0x7f0a01ff

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->l:Landroid/widget/TextView;

    const p2, 0x7f0a01fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->m:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->h:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    sget-object p2, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f0a0538

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object p1, Lm91$c;->k:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lq81;

    aput-object v1, p2, v0

    invoke-static {p0, p1, p2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->r:Lq81;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lq81;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    const v0, 0x7f1102ce

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->d(Ljava/lang/String;)Lsb1;

    return-void
.end method
