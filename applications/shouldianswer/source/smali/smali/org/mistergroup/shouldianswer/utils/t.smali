.class public final Lorg/mistergroup/shouldianswer/utils/t;
.super Ljava/lang/Object;
.source "RingingAlertHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/utils/t$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/LayoutInflater;

.field private b:Lorg/mistergroup/shouldianswer/utils/t$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Lorg/mistergroup/shouldianswer/model/ag;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private final q:Landroid/content/Context;

.field private final r:Z


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/t;->q:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/mistergroup/shouldianswer/utils/t;->r:Z

    const-string p1, ""

    .line 32
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->c:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->d:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->e:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->f:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->g:Ljava/lang/String;

    .line 39
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->j:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/utils/t;)Lorg/mistergroup/shouldianswer/utils/t$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/utils/t;->b:Lorg/mistergroup/shouldianswer/utils/t$a;

    return-object p0
.end method

.method private final a(Landroid/widget/LinearLayout;Lorg/mistergroup/shouldianswer/components/b/b;)V
    .locals 12

    const-string v0, "rowBinding.tvNick"

    const-string v1, "rowBinding.tvComment"

    .line 85
    :try_start_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 87
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    const-string v7, ""

    if-eqz v4, :cond_2

    move-object v3, v2

    move-object v2, v7

    .line 92
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->d()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v4

    sget-object v8, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    if-eq v4, v8, :cond_6

    .line 93
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v5

    :goto_3
    if-eqz v4, :cond_5

    sget-object v2, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->d()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->d()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 95
    :cond_6
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v6

    goto :goto_5

    :cond_8
    :goto_4
    move v4, v5

    :goto_5
    if-eqz v4, :cond_9

    move-object v2, v3

    move-object v3, v7

    .line 100
    :cond_9
    :goto_6
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/t;->a:Landroid/view/LayoutInflater;

    if-nez v4, :cond_a

    const-string v7, "layoutInflater"

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    const v7, 0x7f0d001f

    move-object v8, p1

    check-cast v8, Landroid/view/ViewGroup;

    invoke-static {v4, v7, v8, v6}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lorg/mistergroup/shouldianswer/a/g;

    const-string v7, "rowBinding"

    .line 101
    invoke-static {v4, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/a/g;->d()Landroid/view/View;

    move-result-object v7

    const-string v8, "rowBinding.root"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v9, p0, Lorg/mistergroup/shouldianswer/utils/t;->q:Landroid/content/Context;

    iget-object v10, v4, Lorg/mistergroup/shouldianswer/a/g;->c:Landroid/widget/ImageView;

    const-string v11, "rowBinding.imgRating"

    invoke-static {v10, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 104
    iget-object v8, v4, Lorg/mistergroup/shouldianswer/a/g;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v9, "rowBinding.tvTitle"

    invoke-static {v8, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, v4, Lorg/mistergroup/shouldianswer/a/g;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v4, Lorg/mistergroup/shouldianswer/a/g;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    move v1, v6

    goto :goto_8

    :cond_c
    :goto_7
    move v1, v5

    :goto_8
    const/16 v3, 0x8

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_9

    :cond_d
    move v1, v6

    :goto_9
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 107
    iget-object v1, v4, Lorg/mistergroup/shouldianswer/a/g;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->b()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, v4, Lorg/mistergroup/shouldianswer/a/g;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/b/b;->b()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_e

    goto :goto_a

    :cond_e
    move v5, v6

    :cond_f
    :goto_a
    if-eqz v5, :cond_10

    goto :goto_b

    :cond_10
    move v3, v6

    :goto_b
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 109
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 110
    invoke-virtual {p2, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v7, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception p1

    .line 113
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_c
    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/utils/t;Landroid/widget/LinearLayout;Lorg/mistergroup/shouldianswer/components/b/b;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Lorg/mistergroup/shouldianswer/components/b/b;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/LayoutInflater;
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->a:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const-string v1, "layoutInflater"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/widget/LinearLayout;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/utils/t$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/t$c;

    iget v1, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t$c;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/utils/t$c;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget v2, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->e:Ljava/lang/Object;

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->e:Ljava/lang/Object;

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 120
    sget-object p2, Lorg/mistergroup/shouldianswer/components/b/a;->a:Lorg/mistergroup/shouldianswer/components/b/a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->e:Ljava/lang/Object;

    iput v4, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    invoke-virtual {p2, v2, v0}, Lorg/mistergroup/shouldianswer/components/b/a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 118
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 121
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/utils/t$d;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p2, p1, v6}, Lorg/mistergroup/shouldianswer/utils/t$d;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Ljava/util/List;Landroid/widget/LinearLayout;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->e:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->f:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/utils/t$c;->b:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method

.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/utils/t$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/t$b;

    iget v1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t$b;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/utils/t$b;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    const-string v3, "%s x "

    const-string v4, "java.lang.String.format(format, *args)"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget v8, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->j:I

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->i:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->h:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->g:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v5, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    iget v2, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->j:I

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->i:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->h:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iget-object v10, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->g:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v11, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v10, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v12, v7

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v10, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v10

    .line 54
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->q:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->a:Landroid/view/LayoutInflater;

    .line 55
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->r:Z

    if-nez p1, :cond_6

    .line 56
    iput-object v10, p0, Lorg/mistergroup/shouldianswer/utils/t;->c:Ljava/lang/String;

    goto/16 :goto_6

    .line 58
    :cond_6
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    iput v9, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    move-object v11, v2

    .line 52
    :goto_1
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p1, v2, Lorg/mistergroup/shouldianswer/utils/t;->j:Lorg/mistergroup/shouldianswer/model/ag;

    .line 65
    iget-object p1, v11, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v11, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    iput-object v11, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    iput v7, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v12, v10

    move-object v2, v11

    move-object v10, v2

    .line 52
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v2, Lorg/mistergroup/shouldianswer/utils/t;->h:Z

    .line 66
    iget-object p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->j:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne p1, v2, :cond_9

    move p1, v9

    goto :goto_3

    :cond_9
    move p1, v8

    :goto_3
    iput-boolean p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->i:Z

    .line 68
    iget-object p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v2, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->c:Ljava/lang/String;

    .line 69
    iget-object p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->d:Ljava/lang/String;

    .line 71
    sget-object p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/e;

    invoke-virtual {p1, v12}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->e:Ljava/lang/String;

    .line 72
    sget-object p1, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    new-array p1, v9, [Ljava/lang/Object;

    iget-object v2, v10, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    iput-object v12, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    iput-object v3, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->h:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->i:Ljava/lang/Object;

    iput v8, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->j:I

    iput v6, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v6, p1

    move-object v7, v6

    move-object p1, v2

    move-object v11, v3

    move v2, v8

    move-object v13, v10

    .line 52
    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    array-length p1, v7

    invoke-static {v7, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v11, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v10, Lorg/mistergroup/shouldianswer/utils/t;->f:Ljava/lang/String;

    .line 73
    sget-object p1, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    new-array p1, v9, [Ljava/lang/Object;

    iget-object v2, v13, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v13, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->d:Ljava/lang/Object;

    iput-object v12, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->e:Ljava/lang/Object;

    iput-object v3, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->f:Ljava/lang/Object;

    iput-object v13, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->h:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->i:Ljava/lang/Object;

    iput v8, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->j:I

    iput v5, v0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    return-object v1

    :cond_b
    move-object v1, p1

    move-object v2, v1

    move-object p1, v0

    move-object v5, v3

    move-object v3, v13

    .line 52
    :goto_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v8

    array-length p1, v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v3, Lorg/mistergroup/shouldianswer/utils/t;->g:Ljava/lang/String;

    .line 75
    :goto_6
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    .line 54
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 10

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "butMoreInfo"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBar"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tvLoadError"

    invoke-static {p4, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "RingingAlertHelper.loadReviews"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v0, 0x8

    .line 136
    invoke-virtual {p4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 137
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t$e;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lorg/mistergroup/shouldianswer/utils/t$e;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/Button;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->o:Lkotlin/e/a/b;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->k:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->l:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->m:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/t;->n:Z

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->h:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->i:Z

    return v0
.end method

.method public final i()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->j:Lorg/mistergroup/shouldianswer/model/ag;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->k:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->l:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->m:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->n:Z

    return v0
.end method

.method public final n()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->p:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-object v0
.end method

.method public final o()Landroid/content/Context;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t;->q:Landroid/content/Context;

    return-object v0
.end method
