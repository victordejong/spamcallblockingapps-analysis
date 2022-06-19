.class public Lcom/rey/material/app/SimpleDialog;
.super Lcom/rey/material/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/app/SimpleDialog$Builder;,
        Lcom/rey/material/app/SimpleDialog$b;,
        Lcom/rey/material/app/SimpleDialog$c;,
        Lcom/rey/material/app/SimpleDialog$d;,
        Lcom/rey/material/app/SimpleDialog$e;
    }
.end annotation


# instance fields
.field private F:Lcom/rey/material/widget/TextView;

.field private G:Lcom/rey/material/app/SimpleDialog$d;

.field private H:Lcom/rey/material/app/SimpleDialog$c;

.field private I:Lcom/rey/material/app/SimpleDialog$b;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Lcom/rey/material/app/SimpleDialog$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic A0(Lcom/rey/material/app/SimpleDialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/SimpleDialog;->M:I

    return p0
.end method

.method static synthetic B0(Lcom/rey/material/app/SimpleDialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/SimpleDialog;->L:I

    return p0
.end method

.method static synthetic C0(Lcom/rey/material/app/SimpleDialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/SimpleDialog;->O:I

    return p0
.end method

.method static synthetic D0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$e;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/app/SimpleDialog;->Q:Lcom/rey/material/app/SimpleDialog$e;

    return-object p0
.end method

.method static synthetic E0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$c;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    return-object p0
.end method

.method private H0()V
    .locals 4

    new-instance v0, Lcom/rey/material/app/SimpleDialog$c;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rey/material/app/SimpleDialog$c;-><init>(Lcom/rey/material/app/SimpleDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-static {}, Le/g/a/a/a;->a()Le/g/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    iget v2, p0, Lcom/rey/material/app/Dialog;->m:I

    iget v3, p0, Lcom/rey/material/app/Dialog;->r:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-static {v0, v1}, Ld/h/m/t;->A0(Landroid/view/View;I)V

    new-instance v0, Lcom/rey/material/app/SimpleDialog$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rey/material/app/SimpleDialog$b;-><init>(Lcom/rey/material/app/SimpleDialog;Lcom/rey/material/app/SimpleDialog$a;)V

    iput-object v0, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    iget-object v1, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private I0()V
    .locals 3

    new-instance v0, Lcom/rey/material/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rey/material/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/rey/material/app/SimpleDialog;->J:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    iget v1, p0, Lcom/rey/material/app/SimpleDialog;->K:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private J0()V
    .locals 3

    new-instance v0, Lcom/rey/material/app/SimpleDialog$d;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rey/material/app/SimpleDialog$d;-><init>(Lcom/rey/material/app/SimpleDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    iget v1, p0, Lcom/rey/material/app/Dialog;->m:I

    iget v2, p0, Lcom/rey/material/app/Dialog;->r:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ld/h/m/t;->A0(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic x0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    return-object p0
.end method

.method static synthetic y0(Lcom/rey/material/app/SimpleDialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/SimpleDialog;->N:I

    return p0
.end method

.method static synthetic z0(Lcom/rey/material/app/SimpleDialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    return p0
.end method


# virtual methods
.method public A(Landroid/view/View;)Lcom/rey/material/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rey/material/app/SimpleDialog;->J0()V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    :cond_1
    return-object p0
.end method

.method public F0(I)Lcom/rey/material/app/SimpleDialog;
    .locals 2

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->M:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->M:I

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-object p0
.end method

.method public G0()[I
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/rey/material/app/SimpleDialog$b;->a()[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public K0(I)Lcom/rey/material/app/SimpleDialog;
    .locals 1

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->N:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->N:I

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-object p0
.end method

.method public L0(I)Lcom/rey/material/app/SimpleDialog;
    .locals 1

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->O:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->O:I

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-object p0
.end method

.method public M0([Ljava/lang/CharSequence;I)Lcom/rey/material/app/SimpleDialog;
    .locals 3

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rey/material/app/SimpleDialog;->H0()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/rey/material/app/SimpleDialog$b;->b([Ljava/lang/CharSequence;[I)V

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public N0(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rey/material/app/SimpleDialog;->J0()V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rey/material/app/SimpleDialog;->I0()V

    :cond_1
    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    iget-object v1, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->G:Lcom/rey/material/app/SimpleDialog$d;

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    :cond_4
    return-object p0
.end method

.method public O0(I)Lcom/rey/material/app/SimpleDialog;
    .locals 2

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->J:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->J:I

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/rey/material/app/SimpleDialog;->J:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-object p0
.end method

.method public P0(I)Lcom/rey/material/app/SimpleDialog;
    .locals 1

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->K:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->K:I

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->F:Lcom/rey/material/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p0
.end method

.method public varargs Q0([Ljava/lang/CharSequence;[I)Lcom/rey/material/app/SimpleDialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rey/material/app/SimpleDialog;->H0()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    invoke-virtual {v0, p1, p2}, Lcom/rey/material/app/SimpleDialog$b;->b([Ljava/lang/CharSequence;[I)V

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->H:Lcom/rey/material/app/SimpleDialog$c;

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public R0(Lcom/rey/material/app/SimpleDialog$e;)Lcom/rey/material/app/SimpleDialog;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog;->Q:Lcom/rey/material/app/SimpleDialog$e;

    return-object p0
.end method

.method public S0(I)Lcom/rey/material/app/SimpleDialog;
    .locals 2

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->L:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/app/SimpleDialog;->L:I

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog;->I:Lcom/rey/material/app/SimpleDialog$b;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-object p0
.end method

.method protected g0()V
    .locals 2

    const v0, 0x7f110166

    invoke-virtual {p0, v0}, Lcom/rey/material/app/SimpleDialog;->O0(I)Lcom/rey/material/app/SimpleDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/rey/material/app/SimpleDialog;->K0(I)Lcom/rey/material/app/SimpleDialog;

    invoke-virtual {p0, v0}, Lcom/rey/material/app/SimpleDialog;->L0(I)Lcom/rey/material/app/SimpleDialog;

    return-void
.end method

.method public s(I)Lcom/rey/material/app/Dialog;
    .locals 9

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog;->s(I)Lcom/rey/material/app/Dialog;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/R$styleable;->SimpleDialog:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/rey/material/app/SimpleDialog;->S0(I)Lcom/rey/material/app/SimpleDialog;

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/rey/material/app/SimpleDialog;->F0(I)Lcom/rey/material/app/SimpleDialog;

    goto :goto_1

    :cond_4
    if-ne v6, v8, :cond_5

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/rey/material/app/SimpleDialog;->K0(I)Lcom/rey/material/app/SimpleDialog;

    goto :goto_1

    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/rey/material/app/SimpleDialog;->L0(I)Lcom/rey/material/app/SimpleDialog;

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_8

    invoke-virtual {p0, v3}, Lcom/rey/material/app/SimpleDialog;->O0(I)Lcom/rey/material/app/SimpleDialog;

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p0, v5}, Lcom/rey/material/app/SimpleDialog;->P0(I)Lcom/rey/material/app/SimpleDialog;

    :cond_9
    return-object p0
.end method

.method public u0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/rey/material/app/Dialog;->m:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/rey/material/app/Dialog;->y(IIII)Lcom/rey/material/app/Dialog;

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog;->u0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public w()Lcom/rey/material/app/Dialog;
    .locals 1

    invoke-super {p0}, Lcom/rey/material/app/Dialog;->w()Lcom/rey/material/app/Dialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/app/SimpleDialog;->P:I

    return-object p0
.end method
