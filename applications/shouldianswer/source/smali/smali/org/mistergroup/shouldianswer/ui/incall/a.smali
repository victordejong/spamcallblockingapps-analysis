.class public final Lorg/mistergroup/shouldianswer/ui/incall/a;
.super Ljava/lang/Object;
.source "InCallTouchListener.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/incall/a$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/ui/incall/a$a;

.field private static final i:I = 0x0

# The value of this static final field might be set in the static constructor
.field private static final j:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final k:I = 0x2


# instance fields
.field private b:F

.field private c:F

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lorg/mistergroup/shouldianswer/a/ai;

.field private final h:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "Ljava/lang/Integer;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/incall/a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->a:Lorg/mistergroup/shouldianswer/ui/incall/a$a;

    const/4 v0, 0x1

    .line 133
    sput v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->j:I

    const/4 v0, 0x2

    .line 134
    sput v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->k:I

    return-void
.end method

.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ai;Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/a/ai;",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->h:Lkotlin/e/a/b;

    .line 21
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/x;->a()F

    move-result p1

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->c:F

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    const/high16 p1, -0x560000

    .line 24
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->f:I

    .line 29
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/a/ai;->d()Landroid/view/View;

    move-result-object p2

    const-string v0, "binding.root"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "binding.root.context"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f040090

    invoke-virtual {p1, p2, v0}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 19
    sget v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->j:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 19
    sget v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->k:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 33
    new-instance v0, Landroidx/e/a/e;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    sget-object v2, Landroidx/e/a/b;->b:Landroidx/e/a/b$d;

    check-cast v2, Landroidx/e/a/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/e/a/e;-><init>(Ljava/lang/Object;Landroidx/e/a/d;F)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroidx/e/a/e;->a(F)Landroidx/e/a/b;

    move-result-object v0

    check-cast v0, Landroidx/e/a/e;

    invoke-virtual {v0}, Landroidx/e/a/e;->a()V

    .line 34
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->T:Landroidx/appcompat/widget/AppCompatTextView;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 35
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->S:Landroidx/appcompat/widget/AppCompatTextView;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 36
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 37
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    const-string v1, "binding.imgAccept"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 38
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 40
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    const-string v1, "binding.llContent"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 41
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 42
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "motionEvent"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->b:F

    sub-float/2addr v1, v4

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "binding.llContent"

    if-eq v4, v5, :cond_7

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v4, v7, :cond_0

    if-eq v4, v8, :cond_7

    move v1, v5

    goto/16 :goto_3

    .line 57
    :cond_0
    iget v4, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->c:F

    div-float v4, v1, v4

    const/16 v7, 0x32

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v7, v5

    cmpl-float v9, v4, v7

    if-lez v9, :cond_1

    move v4, v2

    :cond_1
    int-to-float v9, v6

    cmpg-float v10, v4, v9

    const/4 v11, 0x0

    if-gez v10, :cond_2

    move v4, v11

    .line 60
    :cond_2
    iget v10, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->c:F

    div-float v10, v1, v10

    const/16 v12, 0x64

    int-to-float v12, v12

    div-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v12, v10, v7

    if-lez v12, :cond_3

    move v10, v2

    :cond_3
    cmpg-float v12, v10, v9

    if-gez v12, :cond_4

    move v10, v11

    :cond_4
    sub-float v12, v7, v4

    const/16 v13, 0xff

    int-to-float v14, v13

    mul-float/2addr v14, v4

    .line 64
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    cmpl-float v9, v1, v9

    const v16, 0x3dcccccd    # 0.1f

    const-string v5, "binding.imgAccept"

    if-lez v9, :cond_5

    .line 66
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v6, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    mul-float v16, v16, v4

    sub-float v7, v7, v16

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 67
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v6, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 68
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v6, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 70
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v12

    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->f:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 71
    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    iget v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->f:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 72
    iget v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v12

    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->f:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 69
    invoke-static {v2, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 75
    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    iget v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 76
    iget v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v12

    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 77
    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    iget v9, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 74
    invoke-static {v3, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 79
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {v6, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x87

    int-to-float v6, v6

    mul-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 81
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 82
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->y:Landroid/widget/LinearLayout;

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 83
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v3, v8

    div-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 86
    :cond_5
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    mul-float v16, v16, v10

    sub-float v8, v7, v16

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 87
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 88
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sub-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 90
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v12

    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 91
    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 92
    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    iget v8, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 89
    invoke-static {v2, v3, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 95
    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 96
    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    iget v8, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 97
    iget v8, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->d:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    iget v9, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->e:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 94
    invoke-static {v3, v7, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 99
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 100
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setRotation(F)V

    .line 101
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v2, -0x96

    int-to-float v2, v2

    .line 102
    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->c:F

    mul-float v4, v2, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    mul-float v1, v2, v3

    .line 103
    :cond_6
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 104
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    sub-int/2addr v13, v15

    shl-int/lit8 v1, v13, 0x18

    const v2, 0xffffff

    add-int/2addr v1, v2

    .line 109
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 110
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->S:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_2

    .line 114
    :cond_7
    sget v4, Lorg/mistergroup/shouldianswer/ui/incall/a;->i:I

    const/16 v5, -0x64

    int-to-float v5, v5

    .line 115
    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->c:F

    mul-float/2addr v5, v7

    cmpg-float v5, v1, v5

    if-gez v5, :cond_8

    .line 116
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 117
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 118
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->g:Lorg/mistergroup/shouldianswer/a/ai;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 119
    sget v4, Lorg/mistergroup/shouldianswer/ui/incall/a;->j:I

    goto :goto_1

    :cond_8
    const/16 v2, 0x3c

    int-to-float v2, v2

    mul-float/2addr v2, v7

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 121
    sget v4, Lorg/mistergroup/shouldianswer/ui/incall/a;->k:I

    goto :goto_1

    .line 123
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/ui/incall/a;->a()V

    .line 125
    :goto_1
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->h:Lkotlin/e/a/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 49
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->b:F

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 51
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->b:F

    int-to-float v1, v1

    iget v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->c:F

    const/16 v4, 0x96

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_b

    return v6

    :cond_b
    :goto_2
    const/4 v1, 0x1

    :goto_3
    return v1
.end method
