.class public Ld2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/j0;


# direct methods
.method public constructor <init>(Ld2/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/c0;->a:Ld2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 14

    .line 1
    iget-object v0, p0, Ld2/c0;->a:Ld2/j0;

    invoke-virtual {v0, p1}, Ld2/j0;->b(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Ld2/c0;->a:Ld2/j0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v7

    const-string v2, "editable"

    .line 5
    invoke-static {v1, v2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6
    new-instance v1, Ld2/b3;

    iget-object v2, v0, Ld2/j0;->y:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v7, v0}, Ld2/b3;-><init>(Landroid/content/Context;Ld2/t0;ILd2/j0;)V

    .line 7
    iget-object p1, v1, Ld2/b3;->p:Ld2/t0;

    .line 8
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "ad_session_id"

    .line 9
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iput-object v2, v1, Ld2/b3;->k:Ljava/lang/String;

    const-string v2, "x"

    .line 11
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->b:I

    const-string v2, "y"

    .line 12
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->c:I

    const-string v2, "width"

    .line 13
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->d:I

    const-string v2, "height"

    .line 14
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->e:I

    const-string v2, "font_family"

    .line 15
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->g:I

    const-string v2, "font_style"

    .line 16
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->f:I

    const-string v2, "font_size"

    .line 17
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->h:I

    const-string v2, "background_color"

    .line 18
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iput-object v2, v1, Ld2/b3;->l:Ljava/lang/String;

    const-string v2, "font_color"

    .line 20
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    iput-object v2, v1, Ld2/b3;->m:Ljava/lang/String;

    const-string v2, "text"

    .line 22
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, v1, Ld2/b3;->n:Ljava/lang/String;

    const-string v2, "align_x"

    .line 24
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ld2/b3;->i:I

    const-string v2, "align_y"

    .line 25
    invoke-static {p1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Ld2/b3;->j:I

    const/4 p1, 0x4

    .line 26
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 27
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Ld2/b3;->d:I

    iget v3, v1, Ld2/b3;->e:I

    invoke-direct {p1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    iget v2, v1, Ld2/b3;->b:I

    iget v3, v1, Ld2/b3;->c:I

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 29
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    iget-object v2, v1, Ld2/b3;->o:Ld2/j0;

    invoke-virtual {v2, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget p1, v1, Ld2/b3;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 33
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 34
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 35
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    :goto_0
    iget p1, v1, Ld2/b3;->f:I

    if-eqz p1, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 39
    :cond_6
    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 40
    :cond_7
    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 41
    :goto_1
    iget-object p1, v1, Ld2/b3;->n:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget p1, v1, Ld2/b3;->h:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 43
    iget p1, v1, Ld2/b3;->i:I

    invoke-virtual {v1, v5, p1}, Ld2/b3;->a(ZI)I

    move-result p1

    .line 44
    iget v2, v1, Ld2/b3;->j:I

    invoke-virtual {v1, v4, v2}, Ld2/b3;->a(ZI)I

    move-result v2

    or-int/2addr p1, v2

    .line 45
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 46
    iget-object p1, v1, Ld2/b3;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 47
    iget-object p1, v1, Ld2/b3;->l:Ljava/lang/String;

    invoke-static {p1}, Ld2/i3;->B(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 48
    :cond_8
    iget-object p1, v1, Ld2/b3;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 49
    iget-object p1, v1, Ld2/b3;->m:Ljava/lang/String;

    invoke-static {p1}, Ld2/i3;->B(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 50
    :cond_9
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 51
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 52
    new-instance v2, Ld2/r2;

    invoke-direct {v2, v1}, Ld2/r2;-><init>(Ld2/b3;)V

    const-string v3, "TextView.set_visible"

    invoke-static {v3, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 54
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 55
    new-instance v2, Ld2/s2;

    invoke-direct {v2, v1}, Ld2/s2;-><init>(Ld2/b3;)V

    const-string v4, "TextView.set_bounds"

    invoke-static {v4, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 57
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 58
    new-instance v2, Ld2/t2;

    invoke-direct {v2, v1}, Ld2/t2;-><init>(Ld2/b3;)V

    const-string v5, "TextView.set_font_color"

    invoke-static {v5, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 60
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 61
    new-instance v2, Ld2/u2;

    invoke-direct {v2, v1}, Ld2/u2;-><init>(Ld2/b3;)V

    const-string v6, "TextView.set_background_color"

    invoke-static {v6, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 63
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 64
    new-instance v2, Ld2/v2;

    invoke-direct {v2, v1}, Ld2/v2;-><init>(Ld2/b3;)V

    const-string v8, "TextView.set_typeface"

    invoke-static {v8, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 66
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 67
    new-instance v2, Ld2/w2;

    invoke-direct {v2, v1}, Ld2/w2;-><init>(Ld2/b3;)V

    const-string v9, "TextView.set_font_size"

    invoke-static {v9, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 69
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 70
    new-instance v2, Ld2/x2;

    invoke-direct {v2, v1}, Ld2/x2;-><init>(Ld2/b3;)V

    const-string v10, "TextView.set_font_style"

    invoke-static {v10, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 72
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 73
    new-instance v2, Ld2/y2;

    invoke-direct {v2, v1}, Ld2/y2;-><init>(Ld2/b3;)V

    const-string v11, "TextView.get_text"

    invoke-static {v11, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 75
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 76
    new-instance v2, Ld2/z2;

    invoke-direct {v2, v1}, Ld2/z2;-><init>(Ld2/b3;)V

    const-string v12, "TextView.set_text"

    invoke-static {v12, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 78
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 79
    new-instance v2, Ld2/q2;

    invoke-direct {v2, v1}, Ld2/q2;-><init>(Ld2/b3;)V

    const-string v13, "TextView.align"

    invoke-static {v13, v2}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 81
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 84
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 87
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 90
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 93
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 96
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 99
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 102
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 105
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, v1, Ld2/b3;->o:Ld2/j0;

    .line 108
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, v0, Ld2/j0;->d:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p1, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p1, v0, Ld2/j0;->f:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    const-string v2, "button"

    .line 113
    invoke-static {v1, v2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 114
    new-instance v1, Ld2/f3;

    iget-object v2, v0, Ld2/j0;->y:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v7, v0}, Ld2/f3;-><init>(Landroid/content/Context;Ld2/t0;ILd2/j0;)V

    .line 115
    invoke-virtual {v1}, Ld2/f3;->b()V

    .line 116
    iget-object p1, v0, Ld2/j0;->b:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, v0, Ld2/j0;->f:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 119
    :cond_b
    new-instance v8, Ld2/f3;

    iget-object v2, v0, Ld2/j0;->y:Landroid/content/Context;

    const v3, 0x1030141

    move-object v1, v8

    move-object v4, p1

    move v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ld2/f3;-><init>(Landroid/content/Context;ILd2/t0;ILd2/j0;)V

    .line 120
    invoke-virtual {v8}, Ld2/f3;->b()V

    .line 121
    iget-object p1, v0, Ld2/j0;->b:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p1, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p1, v0, Ld2/j0;->f:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v8

    .line 124
    :goto_2
    sget-object p1, La7/e;->b:La7/e;

    .line 125
    iget-object v0, v0, Ld2/j0;->x:Landroid/support/v4/media/a;

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 126
    :try_start_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/a;->f(Landroid/view/View;La7/e;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    return-void
.end method
