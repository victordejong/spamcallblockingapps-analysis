.class public Le2/g;
.super Le2/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Le2/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/g$a;,
        Le2/g$b;,
        Le2/g$c;
    }
.end annotation


# instance fields
.field public final c:Le2/g$a;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/EditText;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/CheckBox;

.field public m:Lcom/afollestad/materialdialogs/internal/MDButton;

.field public n:Lcom/afollestad/materialdialogs/internal/MDButton;

.field public o:Lcom/afollestad/materialdialogs/internal/MDButton;

.field public p:I


# direct methods
.method public constructor <init>(Le2/g$a;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    .line 2
    iget v1, p1, Le2/g$a;->x:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v5, 0x7f0402f0

    .line 3
    invoke-static {v0, v5, v1}, Lh2/b;->f(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 4
    :goto_1
    iput v5, p1, Le2/g$a;->x:I

    if-eqz v1, :cond_2

    const v1, 0x7f12013b

    goto :goto_2

    :cond_2
    const v1, 0x7f12013c

    .line 5
    :goto_2
    invoke-direct {p0, v0, v1}, Le2/c;-><init>(Landroid/content/Context;I)V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object p1, p0, Le2/g;->c:Le2/g$a;

    .line 8
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9
    iget-object v1, p1, Le2/g$a;->o:Landroid/view/View;

    if-eqz v1, :cond_3

    const v1, 0x7f0c0086

    goto :goto_3

    .line 10
    :cond_3
    iget-object v1, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    if-eqz v1, :cond_4

    const v1, 0x7f0c0089

    goto :goto_3

    :cond_4
    const v1, 0x7f0c0083

    :goto_3
    const/4 v5, 0x0

    .line 11
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 12
    iget-boolean v0, p1, Le2/g$a;->y:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    iget-boolean v0, p1, Le2/g$a;->z:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    iget v0, p1, Le2/g$a;->J:I

    if-nez v0, :cond_5

    .line 15
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x7f0402e6

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0400f0

    invoke-static {v6, v7}, Lh2/b;->g(Landroid/content/Context;I)I

    move-result v6

    .line 17
    invoke-static {v0, v1, v6}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Le2/g$a;->J:I

    .line 18
    :cond_5
    iget v0, p1, Le2/g$a;->J:I

    if-eqz v0, :cond_6

    .line 19
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 20
    iget-object v1, p1, Le2/g$a;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f070189

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 23
    iget v1, p1, Le2/g$a;->J:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_6
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x7f0402fd

    iget-object v6, p1, Le2/g$a;->q:Landroid/content/res/ColorStateList;

    .line 26
    invoke-static {v0, v1, v6}, Lh2/b;->e(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p1, Le2/g$a;->q:Landroid/content/res/ColorStateList;

    .line 27
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x7f0402fc

    iget-object v6, p1, Le2/g$a;->s:Landroid/content/res/ColorStateList;

    .line 28
    invoke-static {v0, v1, v6}, Lh2/b;->e(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p1, Le2/g$a;->s:Landroid/content/res/ColorStateList;

    .line 29
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x7f0402fb

    iget-object v6, p1, Le2/g$a;->r:Landroid/content/res/ColorStateList;

    .line 30
    invoke-static {v0, v1, v6}, Lh2/b;->e(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p1, Le2/g$a;->r:Landroid/content/res/ColorStateList;

    .line 31
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x7f040302

    iget v6, p1, Le2/g$a;->p:I

    .line 32
    invoke-static {v0, v1, v6}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Le2/g$a;->p:I

    .line 33
    iget-boolean v0, p1, Le2/g$a;->L:Z

    const v1, 0x1010036

    if-nez v0, :cond_7

    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lh2/b;->g(Landroid/content/Context;I)I

    move-result v0

    .line 35
    iget-object v6, p1, Le2/g$a;->a:Landroid/content/Context;

    const v7, 0x7f040300

    .line 36
    invoke-static {v6, v7, v0}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Le2/g$a;->i:I

    .line 37
    :cond_7
    iget-boolean v0, p1, Le2/g$a;->M:Z

    if-nez v0, :cond_8

    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x1010038

    invoke-static {v0, v6}, Lh2/b;->g(Landroid/content/Context;I)I

    move-result v0

    .line 39
    iget-object v6, p1, Le2/g$a;->a:Landroid/content/Context;

    const v7, 0x7f0402ee

    .line 40
    invoke-static {v6, v7, v0}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Le2/g$a;->j:I

    .line 41
    :cond_8
    iget-boolean v0, p1, Le2/g$a;->N:Z

    if-nez v0, :cond_9

    .line 42
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v6, 0x7f0402f6

    iget v7, p1, Le2/g$a;->j:I

    .line 43
    invoke-static {v0, v6, v7}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Le2/g$a;->K:I

    .line 44
    :cond_9
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f09021e

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le2/g;->e:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f090219

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f09021f

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le2/g;->i:Landroid/view/View;

    .line 47
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f090211

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f090213

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f09021c

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Le2/g;->l:Landroid/widget/CheckBox;

    .line 50
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f090202

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 51
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f090201

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 52
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v6, 0x7f090200

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 53
    iget-object v0, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    iget-object v6, p1, Le2/g$a;->l:Ljava/lang/CharSequence;

    const/16 v7, 0x8

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    iget-object v6, p1, Le2/g$a;->m:Ljava/lang/CharSequence;

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    iget-object v6, p1, Le2/g$a;->n:Ljava/lang/CharSequence;

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    const/16 v6, 0x8

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 57
    iget-object v0, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 58
    iget-object v0, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 59
    iget-object v0, p1, Le2/g$a;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 60
    iget-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    iget-object v6, p1, Le2/g$a;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 62
    :cond_d
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v6, 0x7f0402f3

    invoke-static {v0, v6}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 63
    iget-object v6, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v6, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 65
    :cond_e
    iget-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :goto_7
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v6, 0x7f0402f5

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v8, v3, [I

    aput v6, v8, v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, -0x1

    .line 68
    :try_start_0
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v9, 0x7f0402f4

    .line 71
    invoke-static {v0, v9, v4}, Lh2/b;->f(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f07019f

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_f
    if-le v8, v6, :cond_10

    .line 73
    iget-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 74
    iget-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 75
    iget-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 76
    iget-object v0, p0, Le2/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 77
    :cond_10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v8, 0x7f0402f1

    invoke-static {v0, v8}, Lh2/b;->g(Landroid/content/Context;I)I

    move-result v0

    .line 78
    iget-object v8, p1, Le2/g$a;->a:Landroid/content/Context;

    const v9, 0x7f0402f2

    .line 79
    invoke-static {v8, v9, v0}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v0

    .line 80
    iget-object v8, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v8, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setDividerColor(I)V

    .line 81
    iget-object v0, p0, Le2/g;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 82
    iget-object v8, p1, Le2/g$a;->D:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v8}, Le2/g;->i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 83
    iget-object v0, p0, Le2/g;->e:Landroid/widget/TextView;

    iget v8, p1, Le2/g$a;->i:I

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Le2/g;->e:Landroid/widget/TextView;

    iget-object v8, p1, Le2/g$a;->c:Le2/d;

    invoke-virtual {v8}, Le2/d;->a()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    iget-object v0, p0, Le2/g;->e:Landroid/widget/TextView;

    iget-object v8, p1, Le2/g$a;->c:Le2/d;

    invoke-virtual {v8}, Le2/d;->b()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 86
    iget-object v0, p1, Le2/g$a;->b:Ljava/lang/CharSequence;

    if-nez v0, :cond_11

    .line 87
    iget-object v0, p0, Le2/g;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 88
    :cond_11
    iget-object v8, p0, Le2/g;->e:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Le2/g;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_12
    :goto_8
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 91
    new-instance v8, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v8}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 92
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    iget-object v8, p1, Le2/g$a;->C:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v8}, Le2/g;->i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 93
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    const/4 v8, 0x0

    const v9, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 94
    iget-object v0, p1, Le2/g$a;->t:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_13

    .line 95
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Lh2/b;->g(Landroid/content/Context;I)I

    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_9

    .line 98
    :cond_13
    iget-object v1, p0, Le2/g;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 99
    :goto_9
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    iget v1, p1, Le2/g$a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    iget-object v1, p1, Le2/g$a;->d:Le2/d;

    invoke-virtual {v1}, Le2/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    iget-object v1, p1, Le2/g$a;->d:Le2/d;

    invoke-virtual {v1}, Le2/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 102
    iget-object v0, p1, Le2/g$a;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 103
    iget-object v1, p0, Le2/g;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 105
    :cond_14
    iget-object v0, p0, Le2/g;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_15
    :goto_a
    iget-object v0, p0, Le2/g;->l:Landroid/widget/CheckBox;

    if-eqz v0, :cond_16

    .line 107
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Le2/g;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Le2/g;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v0, p0, Le2/g;->l:Landroid/widget/CheckBox;

    iget-object v1, p1, Le2/g$a;->C:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v1}, Le2/g;->i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 111
    iget-object v0, p0, Le2/g;->l:Landroid/widget/CheckBox;

    iget v1, p1, Le2/g$a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Le2/g;->l:Landroid/widget/CheckBox;

    iget v1, p1, Le2/g$a;->p:I

    invoke-static {v0, v1}, Lg2/b;->a(Landroid/widget/CheckBox;I)V

    .line 113
    :cond_16
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v1, p1, Le2/g$a;->g:Le2/d;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setButtonGravity(Le2/d;)V

    .line 114
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v1, p1, Le2/g$a;->e:Le2/d;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setButtonStackedGravity(Le2/d;)V

    .line 115
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v0, v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setStackingBehavior(Le2/h;)V

    .line 116
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x101038c

    invoke-static {v0, v1, v3}, Lh2/b;->f(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 117
    iget-object v0, p1, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x7f040453

    invoke-static {v0, v1, v3}, Lh2/b;->f(Landroid/content/Context;IZ)Z

    move-result v0

    .line 118
    :cond_17
    iget-object v1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 119
    iget-object v8, p1, Le2/g$a;->D:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v8}, Le2/g;->i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 121
    iget-object v8, p1, Le2/g$a;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v8, p1, Le2/g$a;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    iget-object v1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v8, Le2/b;->a:Le2/b;

    invoke-virtual {p0, v8, v3}, Le2/g;->d(Le2/b;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 125
    invoke-virtual {p0, v8, v4}, Le2/g;->d(Le2/b;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 126
    invoke-virtual {v1, v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 130
    iget-object v8, p1, Le2/g$a;->D:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v8}, Le2/g;->i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 132
    iget-object v8, p1, Le2/g$a;->n:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v8, p1, Le2/g$a;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 134
    iget-object v1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v8, Le2/b;->c:Le2/b;

    invoke-virtual {p0, v8, v3}, Le2/g;->d(Le2/b;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 136
    invoke-virtual {p0, v8, v4}, Le2/g;->d(Le2/b;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 137
    invoke-virtual {v1, v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 141
    iget-object v8, p1, Le2/g$a;->D:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v8}, Le2/g;->i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 143
    iget-object v0, p1, Le2/g$a;->m:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p1, Le2/g$a;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    iget-object v0, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v1, Le2/b;->b:Le2/b;

    invoke-virtual {p0, v1, v3}, Le2/g;->d(Le2/b;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p0, v1, v4}, Le2/g;->d(Le2/b;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_19

    .line 150
    iget-object v0, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    if-nez v0, :cond_18

    .line 151
    iput v3, p0, Le2/g;->p:I

    .line 152
    new-instance v0, Le2/a;

    const v1, 0x7f0c008e

    .line 153
    invoke-direct {v0, p0, v1}, Le2/a;-><init>(Le2/g;I)V

    iput-object v0, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    goto :goto_b

    .line 154
    :cond_18
    instance-of v1, v0, Lg2/a;

    if-eqz v1, :cond_19

    .line 155
    check-cast v0, Lg2/a;

    invoke-interface {v0, p0}, Lg2/a;->a(Le2/g;)V

    .line 156
    :cond_19
    :goto_b
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    if-nez v0, :cond_1a

    goto :goto_d

    .line 157
    :cond_1a
    iget-object v1, p1, Le2/g$a;->C:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v1}, Le2/g;->i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 158
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    if-nez v0, :cond_1b

    goto :goto_c

    .line 159
    :cond_1b
    new-instance v1, Le2/f;

    invoke-direct {v1, p0}, Le2/f;-><init>(Le2/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    :goto_c
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 162
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    iget v1, p1, Le2/g$a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    iget v1, p1, Le2/g$a;->j:I

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v1, v8}, Lh2/b;->a(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 164
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    iget v1, p1, Le2/g$a;->p:I

    invoke-static {v0, v1}, Lg2/b;->c(Landroid/widget/EditText;I)V

    .line 165
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le2/g;->k:Landroid/widget/TextView;

    .line 166
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iput-object v5, p0, Le2/g;->k:Landroid/widget/TextView;

    .line 168
    :goto_d
    iget-object v0, p1, Le2/g$a;->o:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 169
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 170
    iput-boolean v3, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:Z

    .line 171
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v1, 0x7f090216

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 172
    iput-object v0, p0, Le2/g;->j:Landroid/widget/FrameLayout;

    .line 173
    iget-object v1, p1, Le2/g$a;->o:Landroid/view/View;

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    :cond_1c
    iget-boolean v5, p1, Le2/g$a;->I:Z

    const/4 v7, -0x2

    if-eqz v5, :cond_1e

    .line 177
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070199

    .line 178
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 179
    new-instance v9, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f070197

    .line 180
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f070196

    .line 181
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 182
    invoke-virtual {v9, v4}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 183
    instance-of v11, v1, Landroid/widget/EditText;

    if-eqz v11, :cond_1d

    .line 184
    invoke-virtual {v9, v8, v10, v8, v5}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_e

    .line 185
    :cond_1d
    invoke-virtual {v9, v4, v10, v4, v5}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 186
    invoke-virtual {v1, v8, v4, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 187
    :goto_e
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v9

    .line 188
    :cond_1e
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :cond_1f
    iget-object v0, p1, Le2/g$a;->H:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_20

    .line 190
    iput-object v0, p0, Le2/c;->b:Landroid/content/DialogInterface$OnShowListener;

    .line 191
    :cond_20
    invoke-virtual {p0}, Le2/c;->a()V

    .line 192
    iget-object v0, p0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_21

    goto :goto_f

    .line 193
    :cond_21
    iget-object v0, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    if-nez v0, :cond_22

    goto :goto_f

    .line 194
    :cond_22
    iget-object v0, p1, Le2/g$a;->G:Landroidx/recyclerview/widget/RecyclerView$m;

    if-nez v0, :cond_23

    .line 195
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 196
    invoke-direct {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 197
    iput-object v0, p1, Le2/g$a;->G:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 198
    :cond_23
    iget-object v0, p0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-nez v0, :cond_24

    .line 199
    iget-object v0, p0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Le2/g$a;->G:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 200
    :cond_24
    iget-object v0, p0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 201
    iget v0, p0, Le2/g;->p:I

    if-eqz v0, :cond_25

    .line 202
    iget-object v0, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    check-cast v0, Le2/a;

    .line 203
    iput-object p0, v0, Le2/a;->f:Le2/a$b;

    .line 204
    :cond_25
    :goto_f
    iget-object v0, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {p0, v0}, Le2/c;->b(Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_26

    goto :goto_10

    .line 206
    :cond_26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Le2/e;

    invoke-direct {v1, p0}, Le2/e;-><init>(Le2/g;)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 208
    :goto_10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 210
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 212
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 213
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 214
    iget-object v3, p1, Le2/g$a;->a:Landroid/content/Context;

    .line 215
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07019c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 216
    iget-object v4, p1, Le2/g$a;->a:Landroid/content/Context;

    .line 217
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07019a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 218
    iget-object p1, p1, Le2/g$a;->a:Landroid/content/Context;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f07019b

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 220
    iget-object v4, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMaxHeight(I)V

    .line 221
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 222
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 223
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 224
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public final c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p1

    .line 4
    :cond_1
    iget-object p1, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p1
.end method

.method public d(Le2/b;Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->a:Landroid/content/Context;

    const p2, 0x7f0402eb

    .line 3
    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    .line 6
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->a:Landroid/content/Context;

    const p2, 0x7f0402e9

    .line 8
    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    iget p2, p2, Le2/g$a;->h:I

    invoke-static {p1, p2}, Lh2/c;->a(Landroid/graphics/drawable/Drawable;I)V

    return-object p1

    .line 11
    :cond_3
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->a:Landroid/content/Context;

    const p2, 0x7f0402e7

    .line 13
    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 14
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 15
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    iget p2, p2, Le2/g$a;->h:I

    invoke-static {p1, p2}, Lh2/c;->a(Landroid/graphics/drawable/Drawable;I)V

    return-object p1

    .line 16
    :cond_5
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->a:Landroid/content/Context;

    const p2, 0x7f0402e8

    .line 18
    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    .line 19
    :cond_6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 20
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    iget p2, p2, Le2/g$a;->h:I

    invoke-static {p1, p2}, Lh2/c;->a(Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method public dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Le2/g;->c:Le2/g$a;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, v1, Le2/g$a;->a:Landroid/content/Context;

    const-string v1, "input_method"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Le2/c;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 10
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public e(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le2/g;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le2/g;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, -0x1

    if-ge p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget p2, p2, Le2/g$a;->j:I

    .line 6
    :goto_1
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget v0, p2, Le2/g$a;->p:I

    .line 7
    :goto_2
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Le2/g;->g:Landroid/widget/EditText;

    invoke-static {p2, v0}, Lg2/b;->c(Landroid/widget/EditText;I)V

    .line 9
    sget-object p2, Le2/b;->a:Le2/b;

    invoke-virtual {p0, p2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p2

    xor-int/2addr p1, v1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method public f(Le2/g;Landroid/view/View;ILjava/lang/CharSequence;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    .line 2
    :cond_0
    iget p1, p0, Le2/g;->p:I

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p5, 0x3

    const v1, 0x7f090215

    if-ne p1, p5, :cond_3

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 4
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return p4

    :cond_2
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_3
    const/4 p5, 0x2

    if-ne p1, p5, :cond_9

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 7
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    return p4

    .line 8
    :cond_4
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    iget p5, p2, Le2/g$a;->A:I

    .line 9
    iget-boolean v1, p2, Le2/g$a;->B:Z

    if-eqz v1, :cond_5

    iget-object p2, p2, Le2/g$a;->l:Ljava/lang/CharSequence;

    if-nez p2, :cond_5

    .line 10
    invoke-virtual {p0}, Le2/g;->dismiss()V

    .line 11
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    iput p3, p2, Le2/g$a;->A:I

    goto :goto_0

    :cond_5
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_9

    .line 12
    iget-object p2, p0, Le2/g;->c:Le2/g$a;

    iput p3, p2, Le2/g$a;->A:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 14
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {p1, p5, v0}, Landroidx/recyclerview/widget/RecyclerView$f;->c(II)V

    .line 16
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->F:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$f;->c(II)V

    goto :goto_2

    .line 18
    :cond_6
    :goto_1
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-boolean p1, p1, Le2/g$a;->B:Z

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p0}, Le2/g;->dismiss()V

    :cond_7
    if-nez p5, :cond_8

    .line 20
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz p5, :cond_9

    .line 21
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Le2/b;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iput-object p2, p1, Le2/g$a;->l:Ljava/lang/CharSequence;

    .line 4
    iget-object p1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Le2/g;->m:Lcom/afollestad/materialdialogs/internal/MDButton;

    if-nez p2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iput-object p2, p1, Le2/g$a;->n:Ljava/lang/CharSequence;

    .line 7
    iget-object p1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Le2/g;->o:Lcom/afollestad/materialdialogs/internal/MDButton;

    if-nez p2, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iput-object p2, p1, Le2/g$a;->m:Ljava/lang/CharSequence;

    .line 10
    iget-object p1, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Le2/g;->n:Lcom/afollestad/materialdialogs/internal/MDButton;

    if-nez p2, :cond_4

    const/16 v0, 0x8

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final i(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le2/b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->v:Le2/g$c;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0, p1}, Le2/g$c;->g(Le2/g;Le2/b;)V

    .line 6
    :cond_1
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-boolean p1, p1, Le2/g$a;->B:Z

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->w:Le2/g$c;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p0, p1}, Le2/g$c;->g(Le2/g;Le2/b;)V

    .line 11
    :cond_3
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-boolean p1, p1, Le2/g$a;->B:Z

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p0}, Le2/g;->dismiss()V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->u:Le2/g$c;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0, p0, p1}, Le2/g$c;->g(Le2/g;Le2/b;)V

    .line 16
    :cond_5
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Le2/g;->g()Z

    .line 20
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    iget-boolean p1, p1, Le2/g$a;->B:Z

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p0}, Le2/g;->dismiss()V

    .line 23
    :cond_6
    :goto_0
    iget-object p1, p0, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le2/g;->c:Le2/g$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Lh2/a;

    invoke-direct {v2, p0, v1}, Lh2/a;-><init>(Le2/g;Le2/g$a;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 5
    :goto_0
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Le2/g;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Le2/c;->b:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_2
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le2/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance v0, Le2/g$b;

    const-string v1, "Bad window token, you cannot show a dialog before an Activity is created or after it\'s hidden."

    invoke-direct {v0, v1}, Le2/g$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
