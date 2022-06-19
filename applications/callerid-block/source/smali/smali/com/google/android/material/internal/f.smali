.class public Lcom/google/android/material/internal/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/f$h;,
        Lcom/google/android/material/internal/f$d;,
        Lcom/google/android/material/internal/f$f;,
        Lcom/google/android/material/internal/f$g;,
        Lcom/google/android/material/internal/f$e;,
        Lcom/google/android/material/internal/f$c;,
        Lcom/google/android/material/internal/f$b;,
        Lcom/google/android/material/internal/f$j;,
        Lcom/google/android/material/internal/f$k;,
        Lcom/google/android/material/internal/f$i;,
        Lcom/google/android/material/internal/f$l;
    }
.end annotation


# instance fields
.field private b:Lcom/google/android/material/internal/NavigationMenuView;

.field c:Landroid/widget/LinearLayout;

.field private d:Landroidx/appcompat/view/menu/m$a;

.field e:Landroidx/appcompat/view/menu/g;

.field private f:I

.field g:Lcom/google/android/material/internal/f$c;

.field h:Landroid/view/LayoutInflater;

.field i:I

.field j:Z

.field k:Landroid/content/res/ColorStateList;

.field l:Landroid/content/res/ColorStateList;

.field m:Landroid/graphics/drawable/Drawable;

.field n:I

.field o:I

.field p:I

.field q:Z

.field r:Z

.field private s:I

.field private t:I

.field u:I

.field private v:I

.field final w:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/f;->r:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/internal/f;->v:I

    new-instance v0, Lcom/google/android/material/internal/f$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/f$a;-><init>(Lcom/google/android/material/internal/f;)V

    iput-object v0, p0, Lcom/google/android/material/internal/f;->w:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private B()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/f;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/internal/f;->t:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/internal/f;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/f;->s:I

    return p0
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/f$c;->H(Z)V

    :cond_0
    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/f;->f:I

    return v0
.end method

.method public G(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/f;->h:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/google/android/material/internal/f;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Le/c/a/b/d;->design_navigation_separator_vertical_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/f;->u:I

    return-void
.end method

.method public H(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/f$c;->F(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public I(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public J(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/internal/f$c;->I()V

    :cond_0
    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/material/internal/f$c;->y()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public M(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public N(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->d:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public d(Ld/h/m/b0;)V
    .locals 4

    invoke-virtual {p1}, Ld/h/m/b0;->h()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/internal/f;->t:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/google/android/material/internal/f;->t:I

    invoke-direct {p0}, Lcom/google/android/material/internal/f;->B()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Ld/h/m/b0;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Ld/h/m/t;->h(Landroid/view/View;Ld/h/m/b0;)Ld/h/m/b0;

    return-void
.end method

.method public e()Landroidx/appcompat/view/menu/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    invoke-virtual {v0}, Lcom/google/android/material/internal/f$c;->z()Landroidx/appcompat/view/menu/i;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/f;->n:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/f;->o:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/f;->s:I

    return v0
.end method

.method public k()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public l()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/f;->h:Landroid/view/LayoutInflater;

    sget v1, Le/c/a/b/h;->design_navigation_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    new-instance v0, Lcom/google/android/material/internal/f$h;

    iget-object v1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/internal/f$h;-><init>(Lcom/google/android/material/internal/f;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/k;)V

    iget-object p1, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/material/internal/f$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/f$c;-><init>(Lcom/google/android/material/internal/f;)V

    iput-object p1, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    :cond_0
    iget p1, p0, Lcom/google/android/material/internal/f;->v:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/f;->h:Landroid/view/LayoutInflater;

    sget v0, Le/c/a/b/h;->design_navigation_item_header:I

    iget-object v1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public n(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/f;->h:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/f;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->c(Landroid/view/View;)V

    return-object p1
.end method

.method public o(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/f;->r:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/internal/f;->r:Z

    invoke-direct {p0}, Lcom/google/android/material/internal/f;->B()V

    :cond_0
    return-void
.end method

.method public p(Landroidx/appcompat/view/menu/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/f$c;->G(Landroidx/appcompat/view/menu/i;)V

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/f;->f:I

    return-void
.end method

.method public r(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/f;->m:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/f;->n:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/f;->o:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    return-void
.end method

.method public u(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/f;->p:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/f;->p:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/f;->q:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    :cond_0
    return-void
.end method

.method public v(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/f;->l:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    return-void
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/f;->s:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/f;->i:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/f;->j:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    return-void
.end method

.method public y(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/f;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/f;->J(Z)V

    return-void
.end method

.method public z(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/internal/f;->v:I

    iget-object v0, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method
