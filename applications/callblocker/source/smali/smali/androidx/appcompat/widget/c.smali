.class Landroidx/appcompat/widget/c;
.super Landroidx/appcompat/view/menu/b;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/h/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/c$b;,
        Landroidx/appcompat/widget/c$c;,
        Landroidx/appcompat/widget/c$f;,
        Landroidx/appcompat/widget/c$a;,
        Landroidx/appcompat/widget/c$e;,
        Landroidx/appcompat/widget/c$d;,
        Landroidx/appcompat/widget/c$g;
    }
.end annotation


# instance fields
.field g:Landroidx/appcompat/widget/c$d;

.field h:Landroidx/appcompat/widget/c$e;

.field i:Landroidx/appcompat/widget/c$a;

.field j:Landroidx/appcompat/widget/c$c;

.field final k:Landroidx/appcompat/widget/c$f;

.field l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private final y:Landroid/util/SparseBooleanArray;

.field private z:Landroidx/appcompat/widget/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    sget v0, Landroidx/appcompat/a$g;->abc_action_menu_layout:I

    sget v1, Landroidx/appcompat/a$g;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->y:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance v0, Landroidx/appcompat/widget/c$f;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/c$f;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->k:Landroidx/appcompat/widget/c$f;

    .line 88
    return-void
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    .line 318
    if-nez v0, :cond_1

    move-object v2, v3

    .line 328
    :cond_0
    :goto_0
    return-object v2

    .line 320
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 321
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    .line 322
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 323
    instance-of v1, v2, Landroidx/appcompat/view/menu/n$a;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroidx/appcompat/view/menu/n$a;

    .line 324
    invoke-interface {v1}, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 321
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 328
    goto :goto_0
.end method

.method static synthetic a(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method static synthetic b(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method static synthetic c(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    return-object v0
.end method

.method static synthetic d(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method static synthetic e(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method static synthetic f(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 199
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :cond_2
    return-object v0

    .line 195
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object v1

    .line 183
    if-eq v0, v1, :cond_0

    move-object v0, v1

    .line 184
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/c;)V

    .line 186
    :cond_0
    return-object v1
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v0

    .line 97
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->p:Z

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->b()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/appcompat/widget/c;->o:Z

    .line 101
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->v:Z

    if-nez v2, :cond_1

    .line 102
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->c()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/c;->q:I

    .line 106
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->t:Z

    if-nez v2, :cond_2

    .line 107
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->a()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/c;->s:I

    .line 110
    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/c;->q:I

    .line 111
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->o:Z

    if-eqz v2, :cond_5

    .line 112
    iget-object v2, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-nez v2, :cond_4

    .line 113
    new-instance v2, Landroidx/appcompat/widget/c$d;

    iget-object v3, p0, Landroidx/appcompat/widget/c;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    .line 114
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->n:Z

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    iget-object v3, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/c$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object v5, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-boolean v4, p0, Landroidx/appcompat/widget/c;->n:Z

    .line 119
    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 120
    iget-object v3, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v3, v2, v2}, Landroidx/appcompat/widget/c$d;->measure(II)V

    .line 122
    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v2}, Landroidx/appcompat/widget/c$d;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 127
    :goto_0
    iput v0, p0, Landroidx/appcompat/widget/c;->r:I

    .line 129
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/c;->x:I

    .line 130
    return-void

    .line 124
    :cond_5
    iput-object v5, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->t:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/a;->a()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/c;->s:I

    .line 136
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 139
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    .line 166
    iput-object p1, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 565
    instance-of v0, p1, Landroidx/appcompat/widget/c$g;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    check-cast p1, Landroidx/appcompat/widget/c$g;

    .line 570
    iget v0, p1, Landroidx/appcompat/widget/c$g;->a:I

    if-lez v0, :cond_0

    .line 571
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    iget v1, p1, Landroidx/appcompat/widget/c$g;->a:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/r;

    .line 574
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/r;)Z

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    .prologue
    .line 552
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->h()Z

    .line 553
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/g;Z)V

    .line 554
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/i;I)V

    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 210
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 211
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V

    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$b;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroidx/appcompat/widget/c$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/c$b;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$b;

    .line 216
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$b;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    .line 217
    return-void
.end method

.method public a(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 590
    iput-object p1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    .line 591
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/g;)V

    .line 592
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Z)V

    .line 228
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->l()Ljava/util/ArrayList;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 233
    :goto_0
    if-ge v3, v5, :cond_1

    .line 234
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->a()Landroidx/core/h/b;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p0}, Landroidx/core/h/b;->a(Landroidx/core/h/b$a;)V

    .line 233
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    .line 242
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    :goto_1
    iget-boolean v3, p0, Landroidx/appcompat/widget/c;->o:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 247
    if-ne v3, v1, :cond_8

    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    move v2, v0

    .line 254
    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    .line 255
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-nez v0, :cond_3

    .line 256
    new-instance v0, Landroidx/appcompat/widget/c$d;

    iget-object v1, p0, Landroidx/appcompat/widget/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    .line 258
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    iget-object v1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-eq v0, v1, :cond_5

    .line 260
    if-eqz v0, :cond_4

    .line 261
    iget-object v1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 264
    iget-object v1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->c()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_5
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v1, p0, Landroidx/appcompat/widget/c;->o:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 271
    return-void

    .line 242
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v0, v2

    .line 248
    goto :goto_2

    .line 250
    :cond_8
    if-lez v3, :cond_9

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    .line 266
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-ne v0, v1, :cond_5

    .line 267
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public a(ILandroidx/appcompat/view/menu/i;)Z
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 284
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->t()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eq v3, v4, :cond_2

    .line 285
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/r;

    goto :goto_1

    .line 287
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/c;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    .line 288
    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/c;->l:I

    .line 299
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->size()I

    move-result v4

    move v0, v2

    .line 300
    :goto_2
    if-ge v0, v4, :cond_4

    .line 301
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/r;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 302
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    move v0, v1

    .line 308
    :goto_3
    new-instance v2, Landroidx/appcompat/widget/c$a;

    iget-object v4, p0, Landroidx/appcompat/widget/c;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1, v3}, Landroidx/appcompat/widget/c$a;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    .line 309
    iget-object v2, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/c$a;->a(Z)V

    .line 310
    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$a;->a()V

    .line 312
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    move v2, v1

    .line 313
    goto :goto_0

    .line 300
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 148
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->o:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->p:Z

    .line 150
    return-void
.end method

.method public b()Z
    .locals 20

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v3

    .line 419
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v2

    move-object v6, v3

    .line 425
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Landroidx/appcompat/widget/c;->s:I

    .line 426
    move-object/from16 v0, p0

    iget v11, v0, Landroidx/appcompat/widget/c;->r:I

    .line 427
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v2, Landroid/view/ViewGroup;

    .line 430
    const/4 v8, 0x0

    .line 431
    const/4 v7, 0x0

    .line 432
    const/4 v10, 0x0

    .line 433
    const/4 v4, 0x0

    .line 434
    const/4 v3, 0x0

    move v12, v3

    :goto_1
    if-ge v12, v5, :cond_3

    .line 435
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    .line 436
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->l()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 437
    add-int/lit8 v8, v8, 0x1

    .line 443
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroidx/appcompat/widget/c;->w:Z

    if-eqz v13, :cond_1d

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 446
    const/4 v3, 0x0

    .line 434
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v9, v3

    goto :goto_1

    .line 421
    :cond_0
    const/4 v3, 0x0

    .line 422
    const/4 v2, 0x0

    move v5, v2

    move-object v6, v3

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->k()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 439
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 441
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 451
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->o:Z

    if-eqz v3, :cond_5

    if-nez v4, :cond_4

    add-int v3, v8, v7

    if-le v3, v9, :cond_5

    .line 453
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 455
    :cond_5
    sub-int v12, v9, v8

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/c;->y:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    .line 458
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseBooleanArray;->clear()V

    .line 460
    const/4 v4, 0x0

    .line 461
    const/4 v3, 0x0

    .line 462
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v7, :cond_1c

    .line 463
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/c;->x:I

    div-int v3, v11, v3

    .line 464
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/c;->x:I

    rem-int v4, v11, v4

    .line 465
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/c;->x:I

    div-int/2addr v4, v3

    add-int/2addr v4, v7

    move v7, v4

    .line 469
    :goto_4
    const/4 v8, 0x0

    move v15, v8

    move v4, v3

    move v9, v10

    :goto_5
    if-ge v15, v5, :cond_16

    .line 470
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    .line 472
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->l()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 473
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 474
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v10, :cond_7

    .line 475
    const/4 v10, 0x0

    move/from16 v0, v16

    invoke-static {v8, v7, v4, v0, v10}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v10

    sub-int/2addr v4, v10

    .line 480
    :goto_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 481
    sub-int v10, v11, v8

    .line 482
    if-nez v9, :cond_1b

    .line 485
    :goto_7
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v9

    .line 486
    if-eqz v9, :cond_6

    .line 487
    const/4 v11, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 489
    :cond_6
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroidx/appcompat/view/menu/i;->d(Z)V

    move v3, v4

    move v11, v10

    .line 469
    :goto_8
    add-int/lit8 v10, v15, 0x1

    move v15, v10

    move v4, v3

    move v9, v8

    goto :goto_5

    .line 478
    :cond_7
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 490
    :cond_8
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->k()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 493
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v18

    .line 494
    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    .line 495
    if-gtz v12, :cond_9

    if-eqz v13, :cond_d

    :cond_9
    if-lez v11, :cond_d

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v8, :cond_a

    if-lez v4, :cond_d

    :cond_a
    const/4 v8, 0x1

    .line 498
    :goto_9
    if-eqz v8, :cond_1a

    .line 499
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v2}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 500
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v10, :cond_e

    .line 501
    const/4 v10, 0x0

    move/from16 v0, v16

    invoke-static {v14, v7, v4, v0, v10}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v19

    .line 503
    sub-int v10, v4, v19

    .line 504
    if-nez v19, :cond_19

    .line 505
    const/4 v4, 0x0

    :goto_a
    move v8, v4

    .line 510
    :goto_b
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 511
    sub-int/2addr v11, v4

    .line 512
    if-nez v9, :cond_b

    move v9, v4

    .line 516
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v4, :cond_10

    .line 517
    if-ltz v11, :cond_f

    const/4 v4, 0x1

    :goto_c
    and-int/2addr v8, v4

    move v14, v8

    .line 524
    :goto_d
    if-eqz v14, :cond_12

    if-eqz v18, :cond_12

    .line 525
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v12

    .line 539
    :goto_e
    if-eqz v14, :cond_c

    add-int/lit8 v4, v4, -0x1

    .line 541
    :cond_c
    invoke-virtual {v3, v14}, Landroidx/appcompat/view/menu/i;->d(Z)V

    move v3, v10

    move v8, v9

    move v12, v4

    .line 542
    goto :goto_8

    .line 495
    :cond_d
    const/4 v8, 0x0

    goto :goto_9

    .line 508
    :cond_e
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    move v10, v4

    goto :goto_b

    .line 517
    :cond_f
    const/4 v4, 0x0

    goto :goto_c

    .line 520
    :cond_10
    add-int v4, v11, v9

    if-lez v4, :cond_11

    const/4 v4, 0x1

    :goto_f
    and-int/2addr v8, v4

    move v14, v8

    goto :goto_d

    :cond_11
    const/4 v4, 0x0

    goto :goto_f

    .line 526
    :cond_12
    if-eqz v13, :cond_18

    .line 528
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 529
    const/4 v4, 0x0

    move v13, v4

    move v8, v12

    :goto_10
    if-ge v13, v15, :cond_17

    .line 530
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/i;

    .line 531
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v12

    move/from16 v0, v18

    if-ne v12, v0, :cond_14

    .line 533
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v12

    if-eqz v12, :cond_13

    add-int/lit8 v8, v8, 0x1

    .line 534
    :cond_13
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroidx/appcompat/view/menu/i;->d(Z)V

    .line 529
    :cond_14
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_10

    .line 544
    :cond_15
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/appcompat/view/menu/i;->d(Z)V

    move v3, v4

    move v8, v9

    goto/16 :goto_8

    .line 547
    :cond_16
    const/4 v2, 0x1

    return v2

    :cond_17
    move v4, v8

    goto :goto_e

    :cond_18
    move v4, v12

    goto :goto_e

    :cond_19
    move v4, v8

    goto :goto_a

    :cond_1a
    move v14, v8

    move v10, v4

    goto :goto_d

    :cond_1b
    move v8, v9

    goto/16 :goto_7

    :cond_1c
    move v7, v4

    goto/16 :goto_4

    :cond_1d
    move v3, v9

    goto/16 :goto_3
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->w:Z

    .line 159
    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 173
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 581
    if-eqz p1, :cond_1

    .line 583
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(Z)V

    goto :goto_0
.end method

.method public e()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 336
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    .line 337
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Landroidx/appcompat/widget/c$e;

    iget-object v2, p0, Landroidx/appcompat/widget/c;->b:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    iget-object v4, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/c$e;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V

    .line 339
    new-instance v1, Landroidx/appcompat/widget/c$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/c$c;-><init>(Landroidx/appcompat/widget/c;Landroidx/appcompat/widget/c$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    .line 341
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 345
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    .line 349
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 558
    new-instance v0, Landroidx/appcompat/widget/c$g;

    invoke-direct {v0}, Landroidx/appcompat/widget/c$g;-><init>()V

    .line 559
    iget v1, p0, Landroidx/appcompat/widget/c;->l:I

    iput v1, v0, Landroidx/appcompat/widget/c$g;->a:I

    .line 560
    return-object v0
.end method

.method public g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    move v0, v1

    .line 369
    :goto_0
    return v0

    .line 364
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->h:Landroidx/appcompat/widget/c$e;

    .line 365
    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->d()V

    move v0, v1

    .line 367
    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->g()Z

    move-result v0

    .line 378
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->i()Z

    move-result v1

    or-int/2addr v0, v1

    .line 379
    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$a;->d()V

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroidx/appcompat/widget/c;->h:Landroidx/appcompat/widget/c$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->h:Landroidx/appcompat/widget/c$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
