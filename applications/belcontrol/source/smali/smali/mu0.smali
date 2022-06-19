.class public Lmu0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/view/View;

.field public b:Lkq0;

.field public c:Lst0;

.field public d:I

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkq0;Lst0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu0;->a:Landroid/view/View;

    iput-object p2, p0, Lmu0;->b:Lkq0;

    iput-object p3, p0, Lmu0;->c:Lst0;

    iput p4, p0, Lmu0;->d:I

    const p2, 0x7f0a069f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmu0;->e:Landroid/widget/TextView;

    const p2, 0x7f0a0682

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmu0;->f:Landroid/widget/TextView;

    const p2, 0x7f0a0351

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lmu0;->i:Landroid/widget/ImageView;

    const p2, 0x7f0a034d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lmu0;->j:Landroid/widget/ImageView;

    const p2, 0x7f0a0358

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lmu0;->k:Landroid/widget/ImageView;

    const p2, 0x7f0a068a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmu0;->g:Landroid/widget/TextView;

    const p2, 0x7f0a035c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lmu0;->l:Landroid/widget/ImageView;

    const p2, 0x7f0a05c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lmu0;->m:Landroid/widget/Switch;

    const p2, 0x7f0a0056

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmu0;->h:Landroid/widget/TextView;

    return-void
.end method

.method private synthetic e(ILandroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lmu0;->c:Lst0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lst0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic g(ILandroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lmu0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v1, "ENHANCED_CALLER_ID"

    invoke-static {v0, v1}, Loe1;->o0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object p2, p0, Lmu0;->c:Lst0;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lst0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic i(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p0, Lmu0;->c:Lst0;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lst0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic k(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p0, Lmu0;->c:Lst0;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lst0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic m(ILandroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lmu0;->c:Lst0;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lst0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lmu0;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v1}, Lkq0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmu0;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v1}, Lkq0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmu0;->o()V

    invoke-virtual {p0, p1}, Lmu0;->q(I)V

    invoke-virtual {p0, p1}, Lmu0;->b(I)V

    invoke-virtual {p0, p1}, Lmu0;->p(I)V

    invoke-virtual {p0, p1}, Lmu0;->d(I)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lmu0;->d:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmu0;->j:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lmu0;->k:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lmu0;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final d(I)V
    .locals 4

    iget-object v0, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v0}, Lkq0;->d()Lk01;

    move-result-object v0

    sget-object v1, Lo01;->f:Lo01;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v0}, Lkq0;->d()Lk01;

    move-result-object v0

    sget-object v1, Li11;->h:Li11;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmu0;->m:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object p1, p0, Lmu0;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lmu0;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lmu0;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lmu0;->a:Landroid/view/View;

    new-instance v1, Lgu0;

    invoke-direct {v1, p0, p1}, Lgu0;-><init>(Lmu0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public synthetic f(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmu0;->e(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic h(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmu0;->g(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic j(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmu0;->i(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic l(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmu0;->k(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic n(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmu0;->m(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v0}, Lkq0;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmu0;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmu0;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lmu0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v2}, Lkq0;->a()I

    move-result v2

    invoke-static {v1, v2}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final p(I)V
    .locals 4

    iget-object v0, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v0}, Lkq0;->d()Lk01;

    move-result-object v0

    sget-object v1, Lt21;->f:Lt21;

    if-ne v0, v1, :cond_0

    sget-object v2, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Li11;->f:Li11;

    if-eq v0, v2, :cond_1

    sget-object v3, Li11;->g:Li11;

    if-ne v0, v3, :cond_3

    :cond_1
    sget-object v3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lmu0;->r(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lmu0;->c()V

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    new-instance v1, Liu0;

    invoke-direct {v1, p0, p1}, Liu0;-><init>(Lmu0;I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    sget-object v1, Li11;->g:Li11;

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    iget-object v1, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v1}, Lkq0;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    new-instance v1, Lju0;

    invoke-direct {v1, p0, p1}, Lju0;-><init>(Lmu0;I)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    iget-object v1, p0, Lmu0;->b:Lkq0;

    invoke-virtual {v1}, Lkq0;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    new-instance v1, Lhu0;

    invoke-direct {v1, p0, p1}, Lhu0;-><init>(Lmu0;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final r(I)V
    .locals 2

    iget-object v0, p0, Lmu0;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lmu0;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmu0;->m:Landroid/widget/Switch;

    new-instance v1, Lfu0;

    invoke-direct {v1, p0, p1}, Lfu0;-><init>(Lmu0;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
