.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;
.super Lrb1;
.source ""

# interfaces
.implements Lm91$b;
.implements Lu51$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$y;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public s:Lyb1;

.field public t:Landroid/widget/EditText;

.field public u:Lcom/kedlin/cca/ui/CCANavBarFilter;

.field public v:Z

.field public w:Lu51;

.field public x:Ltb1;

.field public y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->z:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_FILTER_INDEX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_FILTER_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_OPEN_ADD_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->C:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->D:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lrb1;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    return-void
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    return p1
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->q0()V

    return-void
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lq71$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->a0(Lq71$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->p0()V

    return-void
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->h0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic P(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic Q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Lcom/kedlin/cca/ui/CCANavBarFilter;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->u:Lcom/kedlin/cca/ui/CCANavBarFilter;

    return-object p0
.end method

.method public static synthetic S(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    return-object p0
.end method

.method public static synthetic T(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    return-object p1
.end method

.method public static synthetic U(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic V(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic W(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic X(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic Y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic Z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    return-object p0
.end method

.method public static g0(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "^\\+?\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public B()V
    .locals 2

    invoke-super {p0}, Lrb1;->B()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->f0()V

    return-void
.end method

.method public C()V
    .locals 2

    invoke-super {p0}, Lrb1;->C()V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    return-void
.end method

.method public D(Lsb1;)V
    .locals 3

    invoke-virtual {p1}, Lsb1;->f()Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->u:Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    const v2, 0x7f110358

    invoke-virtual {v0, v2, v1}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    const v2, 0x7f110357

    invoke-virtual {v0, v2, v1}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    const v2, 0x7f110359

    invoke-virtual {v0, v2, v1}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->u:Lcom/kedlin/cca/ui/CCANavBarFilter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    :cond_0
    sget-object v0, Lsb1$c;->a:Lsb1$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {p1, v0, v1}, Lsb1;->k(Ljava/util/EnumSet;I)Lsb1;

    return-void
.end method

.method public final a0(Lq71$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 9

    invoke-static {p2}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v0

    invoke-static {p2}, Lfa1$e;->m(Ljava/lang/String;)Li91;

    move-result-object v1

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-nez p4, :cond_1

    invoke-virtual {v0}, Li91;->n()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Li91;->r()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Li91;->t()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfa1$e;->n(Ljava/lang/String;)Li91;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->n0(ILq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;Lq71$g;Li91;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1
    new-instance v3, Lx81;

    invoke-direct {v3}, Lx81;-><init>()V

    invoke-virtual {v3, v0}, Lx81;->Q(Li91;)V

    iput-object v0, v3, Lx81;->g:Li91;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Lx81;->P(Li91;)V

    sget-object v4, Li91$b;->d:Li91$b;

    iput-object v4, v3, Lx81;->h:Li91$b;

    :cond_2
    if-eqz v1, :cond_4

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {v3, v0}, Lx81;->P(Li91;)V

    sget-object v0, Li91$b;->g:Li91$b;

    iput-object v0, v3, Lx81;->h:Li91$b;

    iget-object v0, v3, Lx81;->g:Li91;

    invoke-virtual {v0, p2}, Li91;->w(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lq71$e;->b:Lq71$e;

    sget-object v1, Lq71$e;->c:Lq71$e;

    sget-object v2, Lq71$e;->d:Lq71$e;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v3, Lx81;->j:Ljava/util/EnumSet;

    iput-object p1, v3, Lx81;->l:Lq71$g;

    iput-object p3, v3, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v3}, Lx81;->z()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lrb1;->b(Ljava/lang/Object;Z)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->e0()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->q0()V

    return-void
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Loe1;->u(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c0(IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "Activity is null"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0166

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Dialog not inflated"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0a0460

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/EditText;

    const v3, 0x7f1104e8

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setHint(I)V

    const/16 v3, 0x2000

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object p5, v4

    :goto_0
    invoke-virtual {v5, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p5, 0x7f0a04b2

    invoke-virtual {v0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Landroid/widget/EditText;

    new-instance p5, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {p5}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v8, p5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p5, 0x7f1104ed

    invoke-virtual {v8, p5}, Landroid/widget/EditText;->setHint(I)V

    const/4 p5, 0x1

    invoke-virtual {v8, p5}, Landroid/widget/EditText;->setInputType(I)V

    const p5, 0x7f1100e7

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(I)V

    if-eqz p6, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4

    move-object p5, p4

    goto :goto_1

    :cond_4
    move-object p5, v4

    :goto_1
    invoke-virtual {v8, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    if-eqz p5, :cond_5

    if-nez p4, :cond_5

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, p4}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance p4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$i;

    invoke-direct {p4, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$i;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;

    move-object v2, v1

    move-object v3, p0

    move-object v4, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    iget-object p5, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {p5}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    if-lez p3, :cond_6

    invoke-virtual {p5, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_6
    if-lez p1, :cond_7

    invoke-virtual {p5, p1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    if-lez p2, :cond_8

    invoke-virtual {p5, p2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_8
    invoke-virtual {p5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    move-object p1, v2

    move-object p2, v0

    invoke-virtual/range {p1 .. p6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$l;

    invoke-direct {p1, p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$l;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 p1, -0x3

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m;

    invoke-direct {p2, p0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->d0(I)V

    return-void
.end method

.method public final d0(I)V
    .locals 6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    const v2, 0x7f1101b0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f110278

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110277

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110276

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;

    invoke-direct {v4, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$e;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f11027a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110279

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110275

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;

    invoke-direct {v4, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$g;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$g;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    goto :goto_0
.end method

.method public final e0()V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->l0()Z

    move-result v1

    const v2, 0x7f0a007a

    const v3, 0x7f0a0079

    const v4, 0x7f0a027a

    const v5, 0x7f0a054b

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lmc;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lrb1;->p:Landroid/app/Activity;

    const-string v5, "permissions/contacts_perms.html"

    invoke-static {v5, v4}, Loe1;->P(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$o;

    invoke-direct {v3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$o;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a02ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public f0()V
    .locals 4

    sget-object v0, Lm91$c;->a:Lm91$c;

    sget-object v1, Lm91$c;->b:Lm91$c;

    sget-object v2, Lm91$c;->c:Lm91$c;

    sget-object v3, Lm91$c;->o:Lm91$c;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Laa1;

    aput-object v3, v1, v2

    const-class v2, Lbx0;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v0

    invoke-static {}, Laa1;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsb1;->n(Z)V

    invoke-virtual {p0}, Lrb1;->z()Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->q0()V

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 5

    const-class v0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    invoke-super {p0, p1}, Lrb1;->g(Lsb1$c;)V

    sget-object v1, Lsb1$c;->b:Lsb1$c;

    if-ne p1, v1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const v2, 0x7f0a0514

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    :goto_0
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$t;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$t;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    if-eqz p1, :cond_1

    const v1, 0x7f110470

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->h(Ljava/lang/String;Ljava/util/EnumSet;Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, v1, v1, v3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$u;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$u;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    if-eqz p1, :cond_3

    const v1, 0x7f110473

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->h(Ljava/lang/String;Ljava/util/EnumSet;Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2, v1, v1, v3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {p1, v1, v1}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    sget-object v0, Lsb1$c;->a:Lsb1$c;

    if-ne p1, v0, :cond_a

    const-string p1, "Clicked MORE"

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->o0(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->g0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    const v0, 0x7f1102fb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0, p1}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
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

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received update from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;

    invoke-direct {p3, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lm91$c;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-virtual {p1, p0, v1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_1
    :goto_0
    return-void
.end method

.method public final j0(Lq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V
    .locals 5

    invoke-virtual {p1}, Lq81;->V()La81;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Android contact cannot be found"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, La81;->h:[La81$a;

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v2, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->m0(ILq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V

    return-void

    :cond_1
    array-length v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    aget-object p1, v0, v2

    invoke-virtual {p1}, La81$a;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$n;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->b0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->i0(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->h0(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->m0(ILq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V

    return-void
.end method

.method public k0(Landroid/view/MenuItem;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicked item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v1, v0}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "Phone from address: "

    const-string v2, "Phone from name: "

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    sget-object p1, Lr71$a;->M:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->p0()V

    return v4

    :sswitch_1
    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    const/16 v0, 0x52

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v4

    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez p1, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0}, Lyd;->k()Landroid/widget/ListAdapter;

    move-result-object v0

    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lq81;->g0:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_4

    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    invoke-virtual {v0, p1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    invoke-virtual {v0}, Lx81;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, v0, Lx81;->g:Li91;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lx81;->g:Li91;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, v0, Lx81;->g:Li91;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lx81;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, v0, Lx81;->f:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Loe1;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lq81;

    invoke-direct {v0}, Lq81;-><init>()V

    invoke-virtual {v0, p1}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;

    invoke-virtual {p0, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->j0(Lq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V

    :goto_1
    return v4

    :sswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez p1, :cond_5

    return v4

    :cond_5
    invoke-virtual {p0}, Lyd;->k()Landroid/widget/ListAdapter;

    move-result-object v0

    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lq81;->g0:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    if-nez v3, :cond_8

    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    invoke-virtual {v0, p1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    new-instance p1, Lx81;

    invoke-direct {p1}, Lx81;-><init>()V

    invoke-virtual {v0}, Lx81;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Lx81;->g:Li91;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lx81;->g:Li91;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p1, Lx81;->g:Li91;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p1, Lx81;->f:Ljava/lang/String;

    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-virtual {p1, p0, v1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    goto :goto_3

    :cond_8
    new-instance v0, Lq81;

    invoke-direct {v0}, Lq81;-><init>()V

    invoke-virtual {v0, p1}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;

    invoke-virtual {p0, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->j0(Lq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V

    :goto_3
    return v4

    :sswitch_4
    invoke-virtual {p0}, Lrb1;->r()V

    return v4

    :sswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez p1, :cond_9

    return v4

    :cond_9
    invoke-virtual {p0}, Lyd;->k()Landroid/widget/ListAdapter;

    move-result-object v0

    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lq81;->g0:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v3, 0x1

    :cond_a
    if-nez v3, :cond_d

    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    invoke-virtual {v0, p1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    invoke-virtual {v0}, Lx81;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, v0, Lx81;->g:Li91;

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lx81;->g:Li91;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, v0, Lx81;->g:Li91;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lr71$a;->f:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, v0, Lx81;->g:Li91;

    invoke-static {p1, v0}, Lie1;->g(Landroid/content/Context;Li91;)V

    return v4

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lx81;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, v0, Lx81;->f:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {p1, v0}, Lfa1;->b(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_4

    :cond_d
    new-instance v0, Lq81;

    invoke-direct {v0}, Lq81;-><init>()V

    invoke-virtual {v0, p1}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;

    invoke-virtual {p0, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->j0(Lq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V

    :goto_4
    return v4

    :sswitch_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez p1, :cond_e

    return v4

    :cond_e
    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->d0(I)V

    return v4

    :sswitch_7
    sget-object v0, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->g(Lsb1$c;)V

    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    return v3

    :cond_f
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0055 -> :sswitch_7
        0x7f0a023a -> :sswitch_6
        0x7f0a0245 -> :sswitch_5
        0x7f0a02f5 -> :sswitch_4
        0x7f0a03bc -> :sswitch_3
        0x7f0a0562 -> :sswitch_2
        0x7f0a0565 -> :sswitch_1
        0x7f0a0595 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l0()Z
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lta1;->J:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {p1}, Lmc;->d()Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance p2, Lq81;

    invoke-direct {p2}, Lq81;-><init>()V

    invoke-virtual {p2, p1}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    sget-object p3, Lq81;->g0:Ljava/lang/String;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    iget-wide p4, p2, Lq81;->d:J

    invoke-virtual {p3, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-wide p4, p2, Lq81;->d:J

    invoke-virtual {p3, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    :goto_1
    invoke-virtual {p1, p0, p2, p3}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public final m0(ILq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->n0(ILq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;Lq71$g;Li91;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final n0(ILq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;Lq71$g;Li91;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lq81;->V()La81;

    move-result-object p2

    iget-object p2, p2, La81;->h:[La81$a;

    :goto_0
    if-eqz p2, :cond_1

    array-length v1, p2

    new-array v1, v1, [Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_2

    const/4 v2, 0x0

    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, p2, v2

    invoke-virtual {v4}, La81$a;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v2}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    goto :goto_5

    :cond_3
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$n;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p1, p1, p5

    if-eq p1, v0, :cond_6

    if-eq p1, p4, :cond_5

    const/4 p4, 0x3

    if-eq p1, p4, :cond_4

    goto :goto_4

    :cond_4
    const p1, 0x7f110219

    goto :goto_3

    :cond_5
    const p1, 0x7f110218

    goto :goto_3

    :cond_6
    const p1, 0x7f110217

    :goto_3
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_4
    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;

    invoke-direct {p1, p0, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;[La81$a;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V

    invoke-virtual {v2, v1, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_7
    new-instance p1, Lx81;

    invoke-direct {p1}, Lx81;-><init>()V

    invoke-virtual {p1, p5}, Lx81;->Q(Li91;)V

    const p1, 0x7f11021a

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110760

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;

    invoke-direct {p3, p0, p4, p5, p7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lq71$g;Li91;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110531

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$b;

    invoke-direct {p3, p0, p4, p6, p7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lq71$g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_8
    const p1, 0x7f11021c

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_5
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public o0(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v1

    sget-object v2, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v1, v2}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$y;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$y;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e0003

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a0055

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v1

    sget-object v2, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {v1, v2}, Lsb1;->i(Lsb1$c;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne v1, v2, :cond_0

    const v1, 0x7f110453

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne v1, v2, :cond_1

    const v1, 0x7f110473

    goto :goto_0

    :cond_1
    const v1, 0x7f110471

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a0595

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lr71$a;->M:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f11046a

    goto :goto_1

    :cond_3
    const v1, 0x7f11046b

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_4
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object v0, Lr71$a;->f1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_1

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v1, :cond_2

    :cond_1
    add-int/lit8 v7, v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    move v5, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lr71$a;->f1:Lr71$a;

    const-string v2, ";"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr71$a;->o(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lu51;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d008a

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lu51;-><init>(Landroid/app/Activity;ILandroid/database/Cursor;Lu51$b;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {p0, v0}, Lyd;->n(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p1}, Lrb1;->x(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->u:Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne v1, v2, :cond_5

    const v1, 0x7f1103d1

    goto :goto_2

    :cond_5
    const v1, 0x7f1103cf

    :goto_2
    invoke-virtual {v0, v1}, Lsb1;->o(I)Lsb1;

    :cond_6
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->q0()V

    if-eqz p1, :cond_7

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->g(Lsb1$c;)V

    :cond_7
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->k0(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast v0, Lyb1;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->s:Lyb1;

    :cond_0
    invoke-virtual {p0, p1}, Lrb1;->x(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    move-result-object v1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    sput-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->D:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object p3, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    const p2, 0x7f0e0002

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_0
    const p2, 0x7f0e0003

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0055

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p3

    sget-object v0, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {p3, v0}, Lsb1;->i(Lsb1$c;)Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne p3, v0, :cond_1

    const p3, 0x7f110453

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne p3, v0, :cond_2

    const p3, 0x7f110473

    goto :goto_0

    :cond_2
    const p3, 0x7f110471

    :goto_0
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    const p2, 0x7f0a0595

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p2, Lr71$a;->M:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f11046a

    goto :goto_1

    :cond_4
    const p2, 0x7f11046b

    :goto_1
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d008b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a054b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    new-instance p3, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->s:Lyb1;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->E:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lyb1;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-super {p0}, Lyd;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lrb1;->onPause()V

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->e0()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->f0()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lrb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->D:Ljava/lang/String;

    :goto_0
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lrb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    new-instance p2, Ltb1;

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0a02d5

    const v2, 0x7f0a023a

    invoke-direct {p2, v0, v1, v2}, Ltb1;-><init>(Landroid/widget/ListView;II)V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->x:Ltb1;

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->x:Ltb1;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p2

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$q;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$q;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$r;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$r;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    invoke-static {}, Lb81;->e()Z

    move-result p2

    const v0, 0x7f0a02ea

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$s;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$s;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final p0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->q0()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final q0()V
    .locals 20

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-boolean v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    if-eqz v0, :cond_1b

    if-nez v2, :cond_1

    goto/16 :goto_10

    :cond_1
    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const v0, 0x7f0a054b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    :cond_2
    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/lit8 v4, v0, 0x1

    iput-boolean v3, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    const v0, 0x7f0a02ea

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v5, Lr71$a;->f1:Lr71$a;

    invoke-virtual {v5}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v6, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    iget-object v10, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v11, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v10, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v4, :cond_5

    invoke-static {}, Lb81;->e()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lb81;->f()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_6

    array-length v10, v5

    if-lez v10, :cond_6

    const v10, 0x7f0a045c

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v10, 0x7f11038c

    new-array v11, v6, [Ljava/lang/Object;

    array-length v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v1, v10, v11}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v10, ""

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "[\\s\\-\\(\\)\\+/#]+"

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_3

    :cond_7
    move-object/from16 v18, v10

    :goto_3
    const v15, 0x7f0a027a

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    sget-object v0, Lr71$a;->M:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v14

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$n;->a:[I

    iget-object v11, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v0, v0, v11

    const/4 v13, 0x3

    if-eq v0, v3, :cond_b

    if-eq v0, v6, :cond_a

    if-eq v0, v13, :cond_9

    move/from16 v19, v14

    const/4 v7, 0x3

    const/4 v11, 0x0

    goto :goto_7

    :cond_9
    new-instance v11, Lq81;

    invoke-direct {v11}, Lq81;-><init>()V

    sget-object v12, Lq71$g;->c:Lq71$g;

    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/4 v7, 0x3

    move-object/from16 v13, v18

    move/from16 v19, v14

    move-object v14, v0

    move/from16 v15, v16

    move/from16 v16, v17

    goto :goto_6

    :cond_a
    move/from16 v19, v14

    const/4 v7, 0x3

    new-instance v11, Lq81;

    invoke-direct {v11}, Lq81;-><init>()V

    sget-object v12, Lq71$g;->b:Lq71$g;

    :goto_4
    const/4 v14, 0x0

    :goto_5
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v13, v18

    :goto_6
    move/from16 v17, v19

    invoke-virtual/range {v11 .. v17}, Lq81;->S(Lq71$g;Ljava/lang/String;[Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    goto :goto_7

    :cond_b
    move/from16 v19, v14

    const/4 v7, 0x3

    new-instance v11, Lq81;

    invoke-direct {v11}, Lq81;-><init>()V

    const/4 v12, 0x0

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    move-object v14, v5

    goto :goto_5

    :goto_7
    if-eqz v11, :cond_e

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move/from16 v15, v19

    :try_start_0
    invoke-static {v11, v15}, Lq81;->U(Landroid/database/Cursor;Z)I

    move-result v12

    const/4 v13, 0x0

    :goto_8
    add-int/lit8 v14, v13, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v0, v13

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v10, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :cond_d
    move v13, v14

    goto :goto_8

    :catchall_0
    move-exception v0

    const-string v10, "Error building alpha index"

    invoke-static {v1, v10, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_e
    move/from16 v15, v19

    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v11, :cond_f

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f
    const v10, 0x7f0a0069

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/kedlin/cca/ui/AlphabeticalIndexView;

    if-eqz v0, :cond_10

    iget-object v11, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {v11, v0}, Lu51;->l(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->setAlphabet(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_10
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    iget-object v0, v1, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f080117

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v10, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$n;->a:[I

    iget-object v11, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const v19, 0x7f110220

    if-eq v10, v3, :cond_13

    if-eq v10, v6, :cond_12

    if-eq v10, v7, :cond_11

    :goto_c
    const v3, 0x7f110220

    :goto_d
    const v5, 0x7f0a027a

    goto/16 :goto_f

    :cond_11
    iget-object v0, v1, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080116

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    new-instance v11, Lq81;

    invoke-direct {v11}, Lq81;-><init>()V

    sget-object v12, Lq71$g;->c:Lq71$g;

    const/4 v14, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x0

    move-object/from16 v13, v18

    move v6, v15

    move v15, v5

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lq81;->S(Lq71$g;Ljava/lang/String;[Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v5

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v5, v6}, Lu51;->m(Landroid/database/Cursor;Z)V

    goto :goto_c

    :cond_12
    move v6, v15

    const v19, 0x7f11021f

    iget-object v0, v1, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080115

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    new-instance v11, Lq81;

    invoke-direct {v11}, Lq81;-><init>()V

    sget-object v12, Lq71$g;->b:Lq71$g;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v13, v18

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lq81;->S(Lq71$g;Ljava/lang/String;[Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v5

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v5, v6}, Lu51;->m(Landroid/database/Cursor;Z)V

    const v3, 0x7f11021f

    goto :goto_d

    :cond_13
    move v6, v15

    const v19, 0x7f110221

    iget-object v3, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    new-instance v11, Lq81;

    invoke-direct {v11}, Lq81;-><init>()V

    const/4 v12, 0x0

    if-eqz v4, :cond_14

    const/4 v14, 0x0

    goto :goto_e

    :cond_14
    move-object v14, v5

    :goto_e
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v18

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lq81;->S(Lq71$g;Ljava/lang/String;[Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v5

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v5, v6}, Lu51;->m(Landroid/database/Cursor;Z)V

    const v3, 0x7f110221

    goto/16 :goto_d

    :goto_f
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v5

    const v6, 0x7f0a027e

    const v10, 0x7f0a0342

    const v11, 0x7f0a027c

    if-eqz v5, :cond_15

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_15

    iget-object v5, v1, Lrb1;->p:Landroid/app/Activity;

    const-string v12, "layout_inflater"

    invoke-virtual {v5, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v12, 0x7f0d00bf

    const v13, 0x1020004

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v12, v5

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v12, v14

    if-lez v5, :cond_15

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    iget-object v2, v1, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v2, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, v1, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$v;

    invoke-direct {v5, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$v;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iput-boolean v9, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->v:Z

    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->x:Ltb1;

    invoke-virtual {v0}, Ltb1;->d()V

    if-eqz v4, :cond_18

    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne v0, v2, :cond_19

    :cond_18
    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, v1, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0, v9, v9, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x14

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;

    invoke-direct {v2, v1, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;I)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1b
    :goto_10
    return-void
.end method

.method public s(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V
    .locals 13

    invoke-super {p0, p1}, Lrb1;->s(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1, v9, v9, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->t:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v10

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v1

    invoke-virtual {v1}, Lsb1;->f()Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object v11

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v1

    sget-object v2, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {v1, v2}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne v1, v3, :cond_3

    const v1, 0x7f110391

    goto :goto_0

    :cond_3
    const v1, 0x7f110393

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    sget-object v12, Lcom/kedlin/cca/ui/HelpOverlayView$h;->c:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v6, 0x8

    const/16 v7, 0x30

    move-object v1, v10

    move-object v4, v0

    move-object v5, v12

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->m(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a054b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f1103a7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x5

    move-object v1, v10

    invoke-virtual/range {v1 .. v8}, Lcom/kedlin/cca/ui/HelpOverlayView;->k(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;III)V

    const v1, 0x7f1103a0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/kedlin/cca/ui/HelpOverlayView$h;->j:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/4 v6, 0x4

    const/16 v7, 0x10

    move-object v1, v10

    move-object v2, v11

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->m(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a04bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f1103a8

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v1, v10

    move-object v5, v12

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->m(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->w:Lu51;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    const v2, 0x7f0a0476

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f110396

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, -0x5a

    const/16 v7, 0x10

    move-object v1, v10

    move-object v4, v0

    move-object v5, v12

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->m(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    :cond_4
    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$n;->a:[I

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->y:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "contacts-blocked.html"

    goto :goto_1

    :cond_6
    const-string v1, "contacts-allowed.html"

    goto :goto_1

    :cond_7
    const-string v1, "contacts-all.html"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, v9}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setVisibility(I)V

    return-void
.end method
