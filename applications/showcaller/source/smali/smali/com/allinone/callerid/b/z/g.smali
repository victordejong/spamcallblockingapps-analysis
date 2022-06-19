.class public Lcom/allinone/callerid/b/z/g;
.super Lcom/allinone/callerid/b/z/b;
.source "StrangerRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/z/g$g;,
        Lcom/allinone/callerid/b/z/g$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/b/z/b<",
        "Lcom/allinone/callerid/bean/recorder/RecordCall;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Typeface;

.field private g:Landroid/app/Activity;

.field private h:I

.field private i:Lcom/allinone/callerid/b/z/g;

.field private j:Landroid/app/AlertDialog;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/allinone/callerid/b/z/g$g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/RecordCall;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/b/z/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/z/g;->f:Landroid/graphics/Typeface;

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/g;->h:I

    .line 5
    iput-object p0, p0, Lcom/allinone/callerid/b/z/g;->i:Lcom/allinone/callerid/b/z/g;

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    const p2, 0x7f04006e

    const v0, 0x7f08008b

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/g;->k:I

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    const p2, 0x7f04006d

    const v0, 0x7f08008a

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/g;->l:I

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    const p2, 0x7f04006f

    const v0, 0x7f08008c

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/g;->m:I

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    const p2, 0x7f040070

    const v0, 0x7f08008d

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/g;->n:I

    return-void
.end method

.method static synthetic D(Lcom/allinone/callerid/b/z/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/b/z/g;->M(Lcom/allinone/callerid/bean/recorder/RecordCall;I)V

    return-void
.end method

.method static synthetic F(Lcom/allinone/callerid/b/z/g;)Lcom/allinone/callerid/b/z/g$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g;->o:Lcom/allinone/callerid/b/z/g$g;

    return-object p0
.end method

.method static synthetic G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g;->f:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic H(Lcom/allinone/callerid/b/z/g;)Lcom/allinone/callerid/b/z/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g;->i:Lcom/allinone/callerid/b/z/g;

    return-object p0
.end method

.method static synthetic I(Lcom/allinone/callerid/b/z/g;Landroid/content/Context;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/b/z/g;->K(Landroid/content/Context;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V

    return-void
.end method

.method static synthetic J(Lcom/allinone/callerid/b/z/g;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g;->j:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private K(Landroid/content/Context;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100002

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/b/z/g$f;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/allinone/callerid/b/z/g$f;-><init>(Lcom/allinone/callerid/b/z/g;ILcom/allinone/callerid/bean/recorder/RecordCall;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1000bc

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/allinone/callerid/b/z/g$e;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/z/g$e;-><init>(Lcom/allinone/callerid/b/z/g;)V

    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    const/4 p3, -0x1

    .line 7
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p3, -0x2

    .line 8
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06002f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private M(Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09048a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090489

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09048c

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f09048b

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090488

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f090487

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 8
    iget-object v7, p0, Lcom/allinone/callerid/b/z/g;->f:Landroid/graphics/Typeface;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/b/z/g;->f:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/b/z/g;->f:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    new-instance v2, Lcom/allinone/callerid/b/z/g$d;

    invoke-direct {v2, p0, p1, p2}, Lcom/allinone/callerid/b/z/g$d;-><init>(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/z/g;->j:Landroid/app/AlertDialog;

    .line 18
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public L(Lcom/allinone/callerid/b/z/g$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/g;->o:Lcom/allinone/callerid/b/z/g$g;

    return-void
.end method

.method public f(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/allinone/callerid/b/z/g$h;

    if-eqz v0, :cond_f

    .line 2
    check-cast p1, Lcom/allinone/callerid/b/z/g$h;

    if-eqz p1, :cond_f

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/recorder/RecordCall;

    if-eqz v0, :cond_f

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->M(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getPhonestatus()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_0

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->N(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080171

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->N(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->S(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilesizestring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->T(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->T(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->T(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :goto_1
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->U(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getTimespanstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_9

    if-lez p2, :cond_9

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v5, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->V(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->W(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p2, v1, :cond_2

    .line 21
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v1, v5, v3, v5, v5}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 22
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->k:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v1, v5, v3, v5, v3}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 26
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->m:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 27
    :cond_3
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v1, v5, v3, v5, v3}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 28
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->k:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 29
    :cond_4
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->V(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->W(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->V(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget v7, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v6, v7, v7, v7, v3}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 33
    iget-object v6, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne p2, v6, :cond_6

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v1, v5, v3, v5, v3}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 36
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->k:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 37
    :cond_5
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v1, v5, v5, v5, v5}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 38
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->l:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    :cond_6
    add-int/lit8 v1, p2, 0x1

    .line 39
    iget-object v6, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 40
    iget-object v6, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 41
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 42
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->n:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 43
    :cond_7
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->l:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 44
    :cond_8
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v5, p0, Lcom/allinone/callerid/b/z/g;->n:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 45
    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->Y(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtimems()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_c

    .line 46
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->Z(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->V(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->W(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->V(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 51
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v1, v2, v2, v2, v2}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 52
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/g;->l:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 53
    :cond_a
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/g;->h:I

    invoke-static {v1, v2, v2, v2, v3}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 54
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/g;->n:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_3
    add-int/lit8 v1, p2, 0x1

    .line 55
    iget-object v2, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 56
    iget-object v2, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v4, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 59
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/g;->n:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 60
    :cond_b
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/g;->l:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 61
    :cond_c
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->Z(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :cond_d
    :goto_4
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getNumbertype()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_e

    .line 63
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getHarassstatus()I

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_e

    .line 64
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->O(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->P(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/b/z/g;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getPhoneType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->Q(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0801b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 67
    :cond_e
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->O(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->Q(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0801e2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :goto_5
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->R(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/b/z/g$a;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/b/z/g$a;-><init>(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->R(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/b/z/g$b;

    invoke-direct {v2, p0, v0, p2}, Lcom/allinone/callerid/b/z/g$b;-><init>(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    invoke-static {p1}, Lcom/allinone/callerid/b/z/g$h;->Z(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/b/z/g$c;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/b/z/g$c;-><init>(Lcom/allinone/callerid/b/z/g;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_6
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/z/g$h;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0141

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/allinone/callerid/b/z/g$h;-><init>(Lcom/allinone/callerid/b/z/g;Landroid/view/View;)V

    return-object p2
.end method
