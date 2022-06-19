.class public La61;
.super Lmc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La61$c;,
        La61$b;
    }
.end annotation


# instance fields
.field public l:Landroid/view/View$OnClickListener;

.field public m:I

.field public n:I

.field public o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Li71;",
            ">;"
        }
    .end annotation
.end field

.field public p:Landroid/view/LayoutInflater;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmc;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    const/4 p2, 0x0

    iput-object p2, p0, La61;->l:Landroid/view/View$OnClickListener;

    const/4 v0, -0x1

    iput v0, p0, La61;->m:I

    const v0, 0x7f0d0161

    iput v0, p0, La61;->n:I

    iput-object p2, p0, La61;->o:Landroid/util/SparseArray;

    const/4 p2, 0x1

    iput-boolean p2, p0, La61;->q:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, La61;->p:Landroid/view/LayoutInflater;

    iput-object p3, p0, La61;->l:Landroid/view/View$OnClickListener;

    invoke-static {}, Lr71;->n()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, La61;->o:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic k(La61;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, La61;->l:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    invoke-super {p0, p1}, Lmc;->a(Landroid/database/Cursor;)V

    sget-object p1, Lta1;->y:Lta1;

    invoke-virtual {p1}, Lta1;->d()Z

    move-result p1

    iput-boolean p1, p0, La61;->q:Z

    return-void
.end method

.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La61$c;

    if-nez v1, :cond_0

    new-instance v1, La61$c;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, La61$c;-><init>(La61;Landroid/view/View;)V

    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iget-object v3, v1, La61$c;->h:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    sget-object v6, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v6}, Lr71$a;->a()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v2, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    new-instance v3, Ll81;

    invoke-direct {v3}, Ll81;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v6, v3, Ll81;->s:J

    sub-long v10, v8, v6

    const-wide/32 v12, 0xea60

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1103cc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-wide/32 v10, 0xea60

    const/high16 v12, 0x40000

    invoke-static/range {v6 .. v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-object v7, v1, La61$c;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v6, v3, Ll81;->j:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_6

    iget-object v6, v3, Ll81;->q:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    iget-object v9, v0, La61;->o:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li71;

    goto :goto_2

    :cond_4
    move-object v6, v7

    :goto_2
    iget-object v9, v1, La61$c;->d:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget-object v6, v6, Li71;->a:Ljava/lang/String;

    move-object/from16 v10, p2

    goto :goto_3

    :cond_5
    iget-object v6, v3, Ll81;->p:Ln91$a;

    invoke-virtual {v6}, Ln91$a;->a()I

    move-result v6

    move-object/from16 v10, p2

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    move-object/from16 v10, p2

    invoke-virtual {v3}, Ll81;->r0()Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, v3, Ll81;->r:I

    if-ne v6, v8, :cond_7

    iget-object v6, v1, La61$c;->d:Landroid/widget/TextView;

    const v9, 0x7f110581

    goto :goto_4

    :cond_7
    iget-object v6, v1, La61$c;->d:Landroid/widget/TextView;

    iget v9, v3, Ll81;->r:I

    invoke-static {v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v9

    :goto_4
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    iget-object v6, v3, Ll81;->h:Ljava/lang/String;

    iget-boolean v9, v3, Ll81;->j:Z

    const-string v11, ")"

    const-string v12, " ("

    if-nez v9, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v3, Ll81;->m:Li91;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Li91;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v1, La61$c;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v1, La61$c;->d:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Ll81;->m:Li91;

    invoke-virtual {v15}, Li91;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-wide v13, v3, Ll81;->w:J

    const-wide/16 v15, 0x0

    cmp-long v9, v13, v15

    if-lez v9, :cond_9

    new-instance v6, Ljava/util/LinkedHashSet;

    iget-object v9, v3, Ll81;->z:Ljava/lang/String;

    const-string v13, ","

    invoke-static {v9, v13}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-array v9, v5, [Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f0f0005

    array-length v14, v6

    sub-int/2addr v14, v8

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v4, v3, Ll81;->h:Ljava/lang/String;

    aput-object v4, v15, v5

    array-length v4, v6

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v15, v8

    invoke-virtual {v9, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    iget-object v4, v1, La61$c;->b:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Ll81;->t:I

    if-le v6, v8, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v3, Ll81;->t:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_a
    const-string v6, ""

    :goto_6
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, La61$c;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Ll81;->s0()Z

    move-result v6

    xor-int/2addr v6, v8

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v4, v1, La61$c;->b:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v8, v3, Ll81;->j:Z

    const v9, 0x7f0601c6

    const v11, 0x7f060285

    if-eqz v8, :cond_b

    const v8, 0x7f060285

    goto :goto_7

    :cond_b
    const v8, 0x7f0601c6

    :goto_7
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v1, La61$c;->d:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v8, v3, Ll81;->j:Z

    if-eqz v8, :cond_c

    const v9, 0x7f060285

    :cond_c
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v6, Lq71$e;->c:Lq71$e;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v6, Lq71$e;->d:Lq71$e;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_9

    :cond_d
    iget-object v4, v1, La61$c;->e:Landroid/widget/ImageView;

    iget-boolean v5, v3, Ll81;->j:Z

    if-eqz v5, :cond_e

    const v5, 0x7f0803b2

    goto :goto_8

    :cond_e
    iget v5, v3, Ll81;->n:I

    invoke-virtual {v0, v5}, La61;->l(I)I

    move-result v5

    :goto_8
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, v3, Ll81;->j:Z

    if-eqz v3, :cond_f

    iget-object v3, v1, La61$c;->e:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_12

    :cond_f
    iget-object v3, v1, La61$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    :cond_10
    :goto_9
    iget-object v4, v1, La61$c;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v3, Ll81;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v6, Lq71$e;->d:Lq71$e;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    iget-object v4, v1, La61$c;->c:Landroid/widget/TextView;

    iget-object v6, v3, Ll81;->l:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_12
    :goto_a
    iget-object v4, v3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v6, Lq71$e;->d:Lq71$e;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v1, La61$c;->c:Landroid/widget/TextView;

    const v6, 0x7f110489

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_b
    const/16 v6, 0x8

    goto :goto_c

    :cond_13
    iget-object v4, v1, La61$c;->c:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    invoke-virtual {v3}, Ll81;->e0()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-boolean v7, v0, La61;->q:Z

    if-eqz v7, :cond_14

    iget-object v7, v1, La61$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_d

    :cond_14
    iget-object v4, v1, La61$c;->e:Landroid/widget/ImageView;

    const v7, 0x7f0801c6

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_d
    iget-boolean v4, v3, Ll81;->j:Z

    if-nez v4, :cond_15

    iget-object v4, v1, La61$c;->g:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :cond_15
    iget-object v4, v1, La61$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_e
    iget-object v4, v1, La61$c;->d:Landroid/widget/TextView;

    iget-boolean v7, v3, Ll81;->j:Z

    if-nez v7, :cond_17

    invoke-virtual {v3}, Ll81;->t0()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_f

    :cond_16
    const/16 v3, 0x8

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, La61$c;->c:Landroid/widget/TextView;

    iget-object v4, v1, La61$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_18

    const/16 v4, 0x8

    goto :goto_11

    :cond_18
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_12
    iget-object v3, v1, La61$c;->h:Landroid/view/View;

    if-eqz v3, :cond_19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_19
    iget-object v3, v1, La61$c;->f:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, La61$c;->i:La61$b;

    iput v2, v1, La61$b;->a:I

    return-void
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, La61;->p:Landroid/view/LayoutInflater;

    iget p2, p0, La61;->n:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l(I)I
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f080149

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    const v2, 0x7f080146

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const p1, 0x1080040

    return p1

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    const p1, 0x7f08015d

    return p1

    :cond_3
    return v2

    :cond_4
    const p1, 0x7f08014a

    return p1

    :cond_5
    return v1
.end method

.method public m(Landroid/view/View;)Ll81;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, La61$c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La61$c;

    iget-object p1, p1, La61$c;->i:La61$b;

    iget p1, p1, La61$b;->a:I

    goto :goto_0

    :cond_0
    iget p1, p0, La61;->m:I

    :goto_0
    invoke-virtual {p0, p1}, Lmc;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    invoke-virtual {v0, p1}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    return-object v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, La61$c;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_0

    check-cast p1, La61$c;

    iget-object p1, p1, La61$c;->i:La61$b;

    iget p1, p1, La61$b;->a:I

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method
