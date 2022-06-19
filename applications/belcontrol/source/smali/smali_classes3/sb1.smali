.class public Lsb1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsb1$b;,
        Lsb1$d;,
        Lsb1$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/content/res/Resources;

.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/ViewGroup;

.field public f:Landroid/view/ViewGroup;

.field public g:Lsb1$b;

.field public h:Landroid/widget/TextView;

.field public j:Lcom/kedlin/cca/ui/CCANavBarFilter;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lsb1$c;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    iput-object p1, p0, Lsb1;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lsb1;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0658

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const-string p1, "CCANavBar"

    const-string v0, "The activity layout does not contain @id/topNav on attach time"

    invoke-static {p1, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Landroid/widget/ImageButton;

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v0, 0x7ffffff5

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080227

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v0, Lsb1$a;

    invoke-direct {v0, p0}, Lsb1$a;-><init>(Lsb1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lsb1;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public b()Lsb1;
    .locals 3

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    const v1, 0x7ffffff5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lsb1;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    iget-object v1, p0, Lsb1;->b:Landroid/content/res/Resources;

    const v2, 0x7f1100d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsb1;->b:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    iget-object v1, p0, Lsb1;->b:Landroid/content/res/Resources;

    const v2, 0x7f06028d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    const v1, 0x7f080175

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    sget-object v1, Lsb1$c;->j:Lsb1$c;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    const v1, 0x7ffffff4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsb1;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public final c(Lsb1$c;I)Lsb1;
    .locals 4

    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lsb1;->b:Landroid/content/res/Resources;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-static {p1}, Loe1;->c(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lsb1;
    .locals 3

    iget-object v0, p0, Lsb1;->l:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsb1;->l:Landroid/widget/Button;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lsb1;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsb1;->l:Landroid/widget/Button;

    iget-object v1, p0, Lsb1;->b:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lsb1;->l:Landroid/widget/Button;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    iget-object p1, p0, Lsb1;->l:Landroid/widget/Button;

    iget-object v0, p0, Lsb1;->b:Landroid/content/res/Resources;

    const v1, 0x7f06028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lsb1;->l:Landroid/widget/Button;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object p1, p0, Lsb1;->l:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lsb1;->l:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object p1, p0, Lsb1;->l:Landroid/widget/Button;

    sget-object v0, Lsb1$c;->h:Lsb1$c;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lsb1;->l:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public final e(Lsb1$d;I)Lsb1;
    .locals 4

    iget-object v0, p0, Lsb1;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x4

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lsb1;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lsb1;->b:Landroid/content/res/Resources;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lsb1;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public f()Lcom/kedlin/cca/ui/CCANavBarFilter;
    .locals 5

    iget-object v0, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kedlin/cca/ui/CCANavBarFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v1, p0, Lsb1;->g:Lsb1$b;

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/CCANavBarFilter;->f(Lsb1$b;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    const v2, 0x7ffffff5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    sget-object v2, Lsb1$c;->j:Lsb1$c;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const v1, 0x7ffffff4

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v4}, Loe1;->c(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iget-object v4, p0, Lsb1;->c:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lsb1;->d:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lsb1;->f:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public i(Lsb1$c;)Z
    .locals 2

    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public j(Ljava/util/EnumSet;)Lsb1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lsb1$c;",
            ">;)",
            "Lsb1;"
        }
    .end annotation

    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08014f

    invoke-virtual {p0, v0, v1}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_1
    sget-object v0, Lsb1$c;->c:Lsb1$c;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080159

    invoke-virtual {p0, v0, v1}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_2
    sget-object v0, Lsb1$c;->d:Lsb1$c;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f080155

    invoke-virtual {p0, v0, v1}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_3
    sget-object v0, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f080150

    invoke-virtual {p0, v0, v1}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_4
    sget-object v0, Lsb1$c;->g:Lsb1$c;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f080157

    invoke-virtual {p0, v0, p1}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_5
    return-object p0
.end method

.method public k(Ljava/util/EnumSet;I)Lsb1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lsb1$c;",
            ">;I)",
            "Lsb1;"
        }
    .end annotation

    iget-object p2, p0, Lsb1;->d:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lsb1;->d:Landroid/view/ViewGroup;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lsb1;->d:Landroid/view/ViewGroup;

    const v0, 0x7ffffffe

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p2, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p2, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object p2, Lsb1$c;->k:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08035d

    invoke-virtual {p0, p2, v0}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_1
    sget-object p2, Lsb1$c;->l:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0801f4

    invoke-virtual {p0, p2, v0}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_2
    sget-object p2, Lsb1$c;->m:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08018b

    invoke-virtual {p0, p2, v0}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_3
    sget-object p2, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f08014f

    invoke-virtual {p0, p2, v0}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_4
    sget-object p2, Lsb1$c;->c:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f080159

    invoke-virtual {p0, p2, v0}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_5
    sget-object p2, Lsb1$c;->d:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080155

    invoke-virtual {p0, p2, v0}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_6
    sget-object p2, Lsb1$c;->g:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f080157

    invoke-virtual {p0, p2, v0}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_7
    sget-object p2, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f08026e

    invoke-virtual {p0, p2, p1}, Lsb1;->c(Lsb1$c;I)Lsb1;

    :cond_8
    return-object p0
.end method

.method public l(Lsb1$b;)Lsb1;
    .locals 1

    iput-object p1, p0, Lsb1;->g:Lsb1$b;

    iget-object v0, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/CCANavBarFilter;->f(Lsb1$b;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    :cond_0
    return-object p0
.end method

.method public m(Ljava/util/EnumSet;)Lsb1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lsb1$d;",
            ">;)",
            "Lsb1;"
        }
    .end annotation

    iget-object v0, p0, Lsb1;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsb1;->f:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lsb1;->d:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const v2, 0x7ffffffe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget-object v1, p0, Lsb1;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsb1;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lsb1;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lsb1$d;->a:Lsb1$d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0800b7

    invoke-virtual {p0, v0, v1}, Lsb1;->e(Lsb1$d;I)Lsb1;

    :cond_2
    sget-object v0, Lsb1$d;->b:Lsb1$d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0800b8

    invoke-virtual {p0, v0, v1}, Lsb1;->e(Lsb1$d;I)Lsb1;

    :cond_3
    sget-object v0, Lsb1$d;->c:Lsb1$d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0800b6

    invoke-virtual {p0, v0, p1}, Lsb1;->e(Lsb1$d;I)Lsb1;

    :cond_4
    return-object p0
.end method

.method public n(Z)V
    .locals 6

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x1010078

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-static {v1}, Loe1;->c(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x3

    invoke-static {v3}, Loe1;->c(I)I

    move-result v3

    neg-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    iget-object v3, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080335

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080336

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lsb1;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public o(I)Lsb1;
    .locals 1

    iget-object v0, p0, Lsb1;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lsb1;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object p1

    return-object p1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lsb1;->g:Lsb1$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb1$d;

    invoke-interface {v0, p1, p2}, Lsb1$b;->c(Lsb1$d;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lsb1;->g:Lsb1$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb1$c;

    invoke-interface {v0, v1}, Lsb1$b;->g(Lsb1$c;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lsb1;->k:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsb1;->g:Lsb1$b;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb1$c;

    invoke-interface {v0, p1}, Lsb1$b;->a(Lsb1$c;)V

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsb1;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lsb1;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {p0, v4}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {v3, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_8

    iget-object v4, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lsb1;->j:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_8
    iget-object v4, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_c

    iget-object v5, p0, Lsb1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v5, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {v3, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v3, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public p(Ljava/lang/String;)Lsb1;
    .locals 5

    iget-object v0, p0, Lsb1;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    :cond_1
    const/16 v0, 0xe

    invoke-static {p1, v0}, Loe1;->t(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x32

    const/4 v2, -0x2

    if-le v0, v1, :cond_2

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v3, 0x3fe199999999999aL    # 0.55

    mul-double v0, v0, v3

    double-to-int v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    :goto_0
    iget-object v1, p0, Lsb1;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_3
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lsb1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsb1;->h:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    :goto_1
    iget-object v4, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lsb1;->b:Landroid/content/res/Resources;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060195

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120274

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p1, p0, Lsb1;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lsb1;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public q(Lsb1$d;Z)Lsb1;
    .locals 1

    iget-object v0, p0, Lsb1;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p0
.end method
