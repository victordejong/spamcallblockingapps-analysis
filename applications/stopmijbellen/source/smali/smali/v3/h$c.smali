.class public Lv3/h$c;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lv3/h$l;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lv3/h$e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/appcompat/view/menu/g;

.field public e:Z

.field public final synthetic f:Lv3/h;


# direct methods
.method public constructor <init>(Lv3/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/h$c;->f:Lv3/h;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv3/h$c;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Lv3/h$c;->g()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/h$e;

    .line 2
    instance-of v0, p1, Lv3/h$f;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lv3/h$d;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Lv3/h$g;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Lv3/h$g;

    .line 6
    iget-object p1, p1, Lv3/h$g;->a:Landroidx/appcompat/view/menu/g;

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 3

    .line 1
    check-cast p1, Lv3/h$l;

    .line 2
    invoke-virtual {p0, p2}, Lv3/h$c;->c(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv3/h$f;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget v1, v0, Lv3/h;->q:I

    .line 5
    iget v2, p2, Lv3/h$f;->a:I

    .line 6
    iget v0, v0, Lv3/h;->r:I

    .line 7
    iget p2, p2, Lv3/h$f;->b:I

    .line 8
    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 9
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv3/h$g;

    .line 11
    iget-object p2, p2, Lv3/h$g;->a:Landroidx/appcompat/view/menu/g;

    .line 12
    iget-object p2, p2, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lv3/h$c;->f:Lv3/h;

    iget p2, p2, Lv3/h;->g:I

    if-eqz p2, :cond_2

    .line 15
    invoke-static {p1, p2}, Lp0/g;->f(Landroid/widget/TextView;I)V

    .line 16
    :cond_2
    iget-object p2, p0, Lv3/h$c;->f:Lv3/h;

    iget p2, p2, Lv3/h;->s:I

    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lv3/h$c;->f:Lv3/h;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 19
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 20
    iget-object p2, p0, Lv3/h$c;->f:Lv3/h;

    iget-object p2, p2, Lv3/h;->h:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_8

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 23
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget-object v0, v0, Lv3/h;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget v0, v0, Lv3/h;->i:I

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 26
    :cond_4
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget-object v0, v0, Lv3/h;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    :cond_5
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget-object v0, v0, Lv3/h;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 30
    :goto_0
    sget-object v2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 31
    invoke-static {p1, v0}, Lm0/v$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv3/h$g;

    .line 33
    iget-boolean v0, p2, Lv3/h$g;->b:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 34
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget v2, v0, Lv3/h;->m:I

    iget v0, v0, Lv3/h;->n:I

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 35
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget v0, v0, Lv3/h;->o:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 36
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget-boolean v2, v0, Lv3/h;->t:Z

    if-eqz v2, :cond_7

    .line 37
    iget v0, v0, Lv3/h;->p:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 38
    :cond_7
    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    .line 39
    iget v0, v0, Lv3/h;->v:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 41
    iget-object p2, p2, Lv3/h$g;->a:Landroidx/appcompat/view/menu/g;

    .line 42
    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->d(Landroidx/appcompat/view/menu/g;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p1, Lv3/h$b;

    iget-object p2, p0, Lv3/h$c;->f:Lv3/h;

    iget-object p2, p2, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lv3/h$b;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p2, Lv3/h$j;

    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget-object v0, v0, Lv3/h;->f:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lv3/h$j;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 3
    :cond_2
    new-instance p2, Lv3/h$k;

    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget-object v0, v0, Lv3/h;->f:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lv3/h$k;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 4
    :cond_3
    new-instance p2, Lv3/h$i;

    iget-object v0, p0, Lv3/h$c;->f:Lv3/h;

    iget-object v1, v0, Lv3/h;->f:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lv3/h;->z:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lv3/h$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 1

    .line 1
    check-cast p1, Lv3/h$l;

    .line 2
    instance-of v0, p1, Lv3/h$i;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 4
    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->y:Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lv3/h$c;->e:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lv3/h$c;->e:Z

    .line 3
    iget-object v2, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v2, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    new-instance v3, Lv3/h$d;

    invoke-direct {v3}, Lv3/h$d;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 5
    iget-object v3, v0, Lv3/h$c;->f:Lv3/h;

    iget-object v3, v3, Lv3/h;->c:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/e;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_f

    .line 6
    iget-object v8, v0, Lv3/h$c;->f:Lv3/h;

    iget-object v8, v8, Lv3/h;->c:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/e;->l()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/g;

    .line 7
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8
    invoke-virtual {v0, v8}, Lv3/h$c;->h(Landroidx/appcompat/view/menu/g;)V

    .line 9
    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10
    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/g;->k(Z)V

    .line 11
    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 12
    iget-object v9, v8, Landroidx/appcompat/view/menu/g;->o:Landroidx/appcompat/view/menu/l;

    .line 13
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/e;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v5, :cond_3

    .line 14
    iget-object v10, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    new-instance v11, Lv3/h$f;

    iget-object v12, v0, Lv3/h$c;->f:Lv3/h;

    iget v12, v12, Lv3/h;->x:I

    invoke-direct {v11, v12, v4}, Lv3/h$f;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    iget-object v10, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    new-instance v11, Lv3/h$g;

    invoke-direct {v11, v8}, Lv3/h$g;-><init>(Landroidx/appcompat/view/menu/g;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v10, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 17
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    .line 18
    invoke-virtual {v9, v12}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/g;

    .line 19
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/g;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    .line 20
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    .line 21
    :cond_4
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/g;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 22
    invoke-virtual {v14, v4}, Landroidx/appcompat/view/menu/g;->k(Z)V

    .line 23
    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 24
    invoke-virtual {v0, v8}, Lv3/h$c;->h(Landroidx/appcompat/view/menu/g;)V

    .line 25
    :cond_6
    iget-object v15, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    new-instance v4, Lv3/h$g;

    invoke-direct {v4, v14}, Lv3/h$g;-><init>(Landroidx/appcompat/view/menu/g;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_e

    .line 26
    iget-object v4, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v10, v4, :cond_e

    .line 27
    iget-object v8, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv3/h$g;

    .line 28
    iput-boolean v1, v8, Lv3/h$g;->b:Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 29
    :cond_9
    iget v4, v8, Landroidx/appcompat/view/menu/g;->b:I

    if-eq v4, v2, :cond_b

    .line 30
    iget-object v2, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 31
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    if-eqz v5, :cond_d

    add-int/lit8 v7, v7, 0x1

    .line 32
    iget-object v2, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    new-instance v9, Lv3/h$f;

    iget-object v10, v0, Lv3/h$c;->f:Lv3/h;

    iget v10, v10, Lv3/h;->x:I

    invoke-direct {v9, v10, v10}, Lv3/h$f;-><init>(II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    if-nez v6, :cond_d

    .line 33
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 34
    iget-object v2, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v7

    :goto_4
    if-ge v6, v2, :cond_c

    .line 35
    iget-object v9, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv3/h$g;

    .line 36
    iput-boolean v1, v9, Lv3/h$g;->b:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x1

    .line 37
    :cond_d
    :goto_5
    new-instance v2, Lv3/h$g;

    invoke-direct {v2, v8}, Lv3/h$g;-><init>(Landroidx/appcompat/view/menu/g;)V

    .line 38
    iput-boolean v6, v2, Lv3/h$g;->b:Z

    .line 39
    iget-object v8, v0, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v0, Lv3/h$c;->e:Z

    return-void
.end method

.method public h(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/h$c;->d:Landroidx/appcompat/view/menu/g;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lv3/h$c;->d:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    :cond_1
    iput-object p1, p0, Lv3/h$c;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method
