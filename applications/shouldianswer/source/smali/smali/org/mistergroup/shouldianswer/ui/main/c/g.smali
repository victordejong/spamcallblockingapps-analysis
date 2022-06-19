.class public final Lorg/mistergroup/shouldianswer/ui/main/c/g;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
.source "LogViewNumberHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/c/g$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/ui/main/c/g$a;

.field private static final d:Lkotlinx/coroutines/bb;

.field private static final e:Lkotlinx/coroutines/bb;


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/ui/main/c/c;

.field private final c:Lorg/mistergroup/shouldianswer/a/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/g$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g$a;

    const-string v0, "LogItemsLoader"

    .line 183
    invoke-static {v0}, Lkotlinx/coroutines/ch;->a(Ljava/lang/String;)Lkotlinx/coroutines/bb;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->d:Lkotlinx/coroutines/bb;

    const-string v0, "LogItemsPhotoLoader"

    .line 184
    invoke-static {v0}, Lkotlinx/coroutines/ch;->a(Ljava/lang/String;)Lkotlinx/coroutines/bb;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->e:Lkotlinx/coroutines/bb;

    return-void
.end method

.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    .line 20
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;Landroid/view/View;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V

    check-cast v0, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 36
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/g$3;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/g$3;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/g$4;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/g$4;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;
    .locals 1

    .line 17
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->b:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    if-nez p0, :cond_0

    const-string v0, "item"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/c/g;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->d()V

    return-void
.end method

.method public static final synthetic c()Lkotlinx/coroutines/bb;
    .locals 1

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->e:Lkotlinx/coroutines/bb;

    return-object v0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/a/ag;
    .locals 0

    .line 17
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    return-object p0
.end method

.method private final d()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "binding.tvTime"

    const-string v2, "java.lang.String.format(format, *args)"

    const-string v3, "binding.tvCaption"

    const-string v4, "binding.tvDescription"

    const-string v5, "binding.root.context"

    const-string v6, "binding.root"

    const/4 v7, 0x2

    .line 106
    :try_start_0
    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->b:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    if-nez v8, :cond_0

    const-string v9, "item"

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 108
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->c()Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 110
    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ag;->o:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v11, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v11

    .line 112
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v11

    .line 113
    sget-object v12, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v12, v11}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v12

    .line 114
    sget-object v13, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v11}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v11

    .line 116
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v13

    sget-object v14, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v13, v14, :cond_1

    const v12, 0x7f0800a3

    .line 118
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v14, 0x7f0401e8

    invoke-virtual {v11, v13, v14}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result v11

    .line 121
    :cond_1
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    const-string v14, "binding.imgCallType"

    invoke-static {v13, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v12, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/16 v14, 0x8

    :goto_0
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez v12, :cond_3

    .line 123
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v11, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_3
    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    const-string v13, "binding.imgCallHistory1"

    invoke-static {v11, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_4

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v13

    sget-object v15, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v13, v15, :cond_4

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    const/16 v13, 0x8

    :goto_1
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    const-string v13, "binding.imgCallHistory2"

    invoke-static {v11, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v7, :cond_5

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v13

    sget-object v15, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v13, v15, :cond_5

    const/4 v13, 0x0

    goto :goto_2

    :cond_5
    const/16 v13, 0x8

    :goto_2
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v14, :cond_6

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v11

    sget-object v13, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v11, v13, :cond_6

    .line 131
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v11

    .line 132
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    sget-object v15, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v15, v11}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    sget-object v15, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v14, v11}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v11

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v11, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    :cond_6
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v7, :cond_7

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v11

    sget-object v13, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v11, v13, :cond_7

    .line 136
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v11

    .line 137
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v14, v11}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v15, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v15

    invoke-static {v15, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v11}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v11

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v11, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    :cond_7
    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    const-string v13, "binding.butCall"

    invoke-static {v11, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v13, 0x7f100164

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "context.getString(R.stri\u2026r_but_call_accessibility)"

    invoke-static {v13, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->d()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v15, v16

    array-length v14, v15

    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ag;->o:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v11, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v11, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->f:Landroid/widget/ImageView;

    const-string v11, "binding.imgAllowSmall"

    invoke-static {v3, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->g()Ljava/lang/Boolean;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_3

    :cond_8
    const/16 v11, 0x8

    :goto_3
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->g:Landroid/widget/ImageView;

    const-string v11, "binding.imgBlockSmall"

    invoke-static {v3, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v11

    sget-object v13, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v11, v13, :cond_9

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    const/16 v11, 0x8

    :goto_4
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->c()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v11, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v11, "binding.tvDescription.text"

    invoke-static {v4, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_b

    const/16 v4, 0x8

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 147
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->h()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v12, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    const/16 v0, 0x8

    :goto_7
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 150
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "binding.imgRatingBig"

    const-string v4, "binding.imgRatingSmall"

    const-string v8, "binding.imgContactPhoto"

    if-eqz v0, :cond_d

    .line 151
    :try_start_1
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 152
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v11, 0x7f100165

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "context.getString(R.stri\u2026er_contact_accessibility)"

    invoke-static {v9, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Lcom/makeramen/roundedimageview/RoundedImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v0, v2, :cond_e

    .line 156
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    goto :goto_8

    .line 160
    :cond_d
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 161
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 167
    :cond_e
    :goto_8
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 169
    :cond_f
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    .line 171
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v4, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ag;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "binding.tvContactPhoto"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/mistergroup/shouldianswer/utils/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :cond_10
    return-void

    :catch_0
    move-exception v0

    .line 178
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v7, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_11
    :goto_9
    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->b:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    .line 56
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->c()Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    invoke-direct {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;-><init>()V

    .line 58
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v2

    const-string v3, "context"

    .line 59
    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c$a;)V

    .line 62
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    const-string v1, "binding.imgCallHistory1"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    const-string v2, "binding.imgCallHistory2"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    const-string v2, "binding.imgRatingBig"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    const-string v2, "binding.imgRatingSmall"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v3, "binding.imgContactPhoto"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvTime"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvDescription"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    const-string v3, "binding.imgCallType"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvContactPhoto"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 72
    :cond_0
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->d()V

    .line 74
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/g;->d:Lkotlinx/coroutines/bb;

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    const/4 v3, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;Lorg/mistergroup/shouldianswer/ui/main/c/c;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    :cond_1
    return-void
.end method
