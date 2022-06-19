.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# static fields
.field private static final r:I


# instance fields
.field private A:I

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private G:I

.field private H:I

.field private I:I

.field final n:Lcom/google/android/material/k/h;

.field o:Z

.field p:Landroid/animation/AnimatorListenerAdapter;

.field q:Lcom/google/android/material/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/a/k<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final s:I

.field private t:Landroid/animation/Animator;

.field private u:Landroid/animation/Animator;

.field private v:I

.field private w:I

.field private final x:Z

.field private final y:Z

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 239
    sget v0, Lcom/google/android/material/a$b;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 243
    sget v6, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:I

    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance p1, Lcom/google/android/material/k/h;

    invoke-direct {p1}, Lcom/google/android/material/k/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    const/4 v7, 0x0

    .line 151
    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    .line 162
    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    .line 163
    iput-boolean v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->D:Z

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:Z

    .line 190
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/AnimatorListenerAdapter;

    .line 206
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Lcom/google/android/material/a/k;

    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 247
    sget-object v2, Lcom/google/android/material/a$l;->BottomAppBar:[I

    new-array v5, v7, [I

    move-object v0, v8

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 251
    sget v1, Lcom/google/android/material/a$l;->BottomAppBar_backgroundTint:I

    .line 252
    invoke-static {v8, v0, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 254
    sget v2, Lcom/google/android/material/a$l;->BottomAppBar_elevation:I

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 255
    sget v3, Lcom/google/android/material/a$l;->BottomAppBar_fabCradleMargin:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    .line 256
    sget v4, Lcom/google/android/material/a$l;->BottomAppBar_fabCradleRoundedCornerRadius:I

    .line 257
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    .line 258
    sget v5, Lcom/google/android/material/a$l;->BottomAppBar_fabCradleVerticalOffset:I

    .line 259
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    .line 260
    sget v9, Lcom/google/android/material/a$l;->BottomAppBar_fabAlignmentMode:I

    .line 261
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    .line 262
    sget v9, Lcom/google/android/material/a$l;->BottomAppBar_fabAnimationMode:I

    .line 263
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    .line 264
    sget v9, Lcom/google/android/material/a$l;->BottomAppBar_hideOnScroll:I

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Z

    .line 266
    sget v9, Lcom/google/android/material/a$l;->BottomAppBar_paddingBottomSystemWindowInsets:I

    .line 267
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Z

    .line 268
    sget v9, Lcom/google/android/material/a$l;->BottomAppBar_paddingLeftSystemWindowInsets:I

    .line 269
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    .line 270
    sget v9, Lcom/google/android/material/a$l;->BottomAppBar_paddingRightSystemWindowInsets:I

    .line 271
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:Z

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v9, Lcom/google/android/material/a$d;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    .line 278
    new-instance v0, Lcom/google/android/material/bottomappbar/a;

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/material/bottomappbar/a;-><init>(FFF)V

    .line 281
    invoke-static {}, Lcom/google/android/material/k/m;->a()Lcom/google/android/material/k/m$a;

    move-result-object v3

    .line 1390
    iput-object v0, v3, Lcom/google/android/material/k/m$a;->i:Lcom/google/android/material/k/f;

    .line 281
    invoke-virtual {v3}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object v0

    .line 282
    invoke-virtual {p1, v0}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 283
    invoke-virtual {p1}, Lcom/google/android/material/k/h;->f()V

    .line 284
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 1910
    iget-object v3, p1, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput-object v0, v3, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    .line 1911
    invoke-virtual {p1}, Lcom/google/android/material/k/h;->h()V

    .line 285
    invoke-virtual {p1, v8}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    int-to-float v0, v2

    .line 286
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setElevation(F)V

    .line 287
    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 288
    invoke-static {p0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 290
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 2164
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/a$l;->Insets:[I

    .line 2165
    invoke-virtual {v0, p2, v1, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2167
    sget p3, Lcom/google/android/material/a$l;->Insets_paddingBottomSystemWindowInsets:I

    .line 2168
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 2169
    sget v0, Lcom/google/android/material/a$l;->Insets_paddingLeftSystemWindowInsets:I

    .line 2170
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2171
    sget v1, Lcom/google/android/material/a$l;->Insets_paddingRightSystemWindowInsets:I

    .line 2172
    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2174
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2176
    new-instance p2, Lcom/google/android/material/internal/r$2;

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/google/android/material/internal/r$2;-><init>(ZZZLcom/google/android/material/internal/r$a;)V

    invoke-static {p0, p2}, Lcom/google/android/material/internal/r;->a(Landroid/view/View;Lcom/google/android/material/internal/r$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    .line 108
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->G:I

    return p1
.end method

.method private a(IZ)V
    .locals 3

    .line 659
    invoke-static {p0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    iput-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->D:Z

    .line 663
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(I)V

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 671
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 679
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZLjava/util/List;)V

    .line 681
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 682
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 683
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Landroid/animation/Animator;

    .line 684
    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private a(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 706
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    const-string v5, "alpha"

    .line 713
    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 716
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    move-result v6

    .line 717
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 720
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v4

    if-lez v6, :cond_1

    new-array v4, v1, [F

    const/4 v6, 0x0

    aput v6, v4, v3

    .line 722
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 724
    new-instance v5, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    invoke-direct {v5, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 743
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x96

    .line 744
    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v4, p2, v3

    aput-object v2, p2, v1

    .line 745
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 746
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 747
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_2

    .line 750
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private a(Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 1

    .line 807
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$8;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    if-eqz p4, :cond_0

    .line 817
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 819
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 3

    .line 13928
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/AnimatorListenerAdapter;

    .line 14627
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v1

    .line 15401
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/d;->r:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 15402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/floatingactionbutton/d;->r:Ljava/util/ArrayList;

    .line 15404
    :cond_0
    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13929
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$9;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 15595
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v1

    .line 16385
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/d;->q:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 16386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/floatingactionbutton/d;->q:Ljava/util/ArrayList;

    .line 16388
    :cond_1
    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13942
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Lcom/google/android/material/a/k;

    .line 17359
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;

    invoke-direct {v1, p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/a/k;)V

    .line 17623
    iget-object p0, v0, Lcom/google/android/material/floatingactionbutton/d;->s:Ljava/util/ArrayList;

    if-nez p0, :cond_2

    .line 17624
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/google/android/material/floatingactionbutton/d;->s:Ljava/util/ArrayList;

    .line 17626
    :cond_2
    iget-object p0, v0, Lcom/google/android/material/floatingactionbutton/d;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->D:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    .line 108
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->I:I

    return p1
.end method

.method private b(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 789
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method private c(I)F
    .locals 3

    .line 759
    invoke-static {p0}, Lcom/google/android/material/internal/r;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_0

    .line 761
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->I:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->H:I

    .line 762
    :goto_0
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    add-int/2addr v2, p1

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    mul-int p1, p1, v1

    int-to-float p1, p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    .line 108
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->H:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c(I)F

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/k/h;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Z

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    return p0
.end method

.method static synthetic h(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->I:I

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:Z

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->H:I

    return p0
.end method

.method static synthetic k(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 522
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()V

    return-void
.end method

.method private m()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .line 591
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n()Landroid/view/View;

    move-result-object v0

    .line 592
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u()V

    return-void
.end method

.method private n()Landroid/view/View;
    .locals 4

    .line 597
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 603
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 604
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v3, :cond_1

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method static synthetic n(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 1

    .line 11531
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 11533
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 1

    .line 613
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9739
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p()F
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    .line 10190
    iget v0, v0, Lcom/google/android/material/bottomappbar/a;->d:F

    neg-float v0, v0

    return v0
.end method

.method static synthetic p(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Landroid/animation/Animator;

    return-object v0
.end method

.method private q()F
    .locals 1

    .line 770
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c(I)F

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->D:Z

    return v0
.end method

.method static synthetic r(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Landroid/animation/Animator;

    return-object v0
.end method

.method private r()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 776
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 777
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 778
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic s(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    return p0
.end method

.method private s()V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method

.method private t()V
    .locals 3

    .line 898
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()F

    move-result v1

    .line 11171
    iput v1, v0, Lcom/google/android/material/bottomappbar/a;->e:F

    .line 899
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n()Landroid/view/View;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/k/h;->p(F)V

    if-eqz v0, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 903
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method static synthetic u(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()F

    move-result p0

    return p0
.end method

.method private u()V
    .locals 3

    .line 908
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Landroid/animation/Animator;

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 912
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 913
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 914
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    return-void

    .line 916
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_1
    return-void
.end method

.method static synthetic v(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 11946
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->G:I

    return p0
.end method

.method private v()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->F:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->F:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->F:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object v0
.end method

.method static synthetic w(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 11954
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->I:I

    return p0
.end method

.method static synthetic x(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 12950
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->H:I

    return p0
.end method

.method static synthetic y(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    return p0
.end method

.method static synthetic z(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    if-nez p3, :cond_0

    goto :goto_6

    .line 837
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/r;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 838
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 841
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 842
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 844
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v4, :cond_2

    .line 845
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    const v5, 0x800007

    and-int/2addr v4, v5

    const v5, 0x800003

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 851
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_3

    .line 852
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 856
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result p1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result p1

    :goto_4
    if-eqz p2, :cond_7

    .line 857
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->H:I

    goto :goto_5

    :cond_7
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->I:I

    neg-int p2, p2

    :goto_5
    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    return p3

    :cond_8
    :goto_6
    return v1
.end method

.method public final synthetic a()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->v()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 500
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    .line 501
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->f()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 502
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(I)V

    :cond_0
    return-void
.end method

.method final k()Lcom/google/android/material/bottomappbar/a;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    .line 10271
    iget-object v0, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 10712
    iget-object v0, v0, Lcom/google/android/material/k/m;->j:Lcom/google/android/material/k/f;

    .line 893
    check-cast v0, Lcom/google/android/material/bottomappbar/a;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 978
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 980
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    invoke-static {p0, v0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;Lcom/google/android/material/k/h;)V

    .line 984
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 874
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    .line 883
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()V

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1130
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 1131
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1134
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    .line 1135
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1136
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    .line 1137
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1121
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1122
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1123
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    .line 1124
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    .line 7439
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    .line 8190
    iget v0, v0, Lcom/google/android/material/bottomappbar/a;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->a(F)V

    .line 450
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    invoke-virtual {p1}, Lcom/google/android/material/k/h;->invalidateSelf()V

    .line 451
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->r(F)V

    .line 487
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    .line 8808
    iget-object p1, p1, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget p1, p1, Lcom/google/android/material/k/h$a;->r:I

    .line 488
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->j()I

    move-result v0

    sub-int/2addr p1, v0

    .line 489
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->v()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    .line 9074
    iput p1, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->c:I

    .line 9076
    iget p1, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 9077
    iget p1, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->a:I

    iget v0, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->c:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabAlignmentModeAndReplaceMenu(II)V

    return-void
.end method

.method public setFabAlignmentModeAndReplaceMenu(II)V
    .locals 4

    .line 366
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    const/4 p2, 0x1

    .line 367
    iput-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->D:Z

    .line 368
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->E:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZ)V

    .line 2554
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    if-eq v0, p1, :cond_5

    invoke-static {p0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2558
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 2559
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2562
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2564
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    if-ne v1, p2, :cond_2

    .line 2653
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    new-array p2, p2, [F

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c(I)F

    move-result v3

    aput v3, p2, v2

    const-string v2, "translationX"

    invoke-static {v1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x12c

    .line 2654
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2655
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3626
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3735
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/d;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 3632
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l()V

    .line 3634
    new-instance v2, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    .line 4619
    invoke-virtual {v1, v2, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    .line 2570
    :cond_4
    :goto_0
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2571
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2572
    iput-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Landroid/animation/Animator;

    .line 2573
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2586
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 370
    :cond_5
    :goto_1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    .line 5406
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    .line 6206
    iget v0, v0, Lcom/google/android/material/bottomappbar/a;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    .line 6210
    iput p1, v0, Lcom/google/android/material/bottomappbar/a;->b:F

    .line 415
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    invoke-virtual {p1}, Lcom/google/android/material/k/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    .line 7214
    iget v0, v0, Lcom/google/android/material/bottomappbar/a;->a:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    .line 7218
    iput p1, v0, Lcom/google/android/material/bottomappbar/a;->a:F

    .line 429
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/k/h;

    invoke-virtual {p1}, Lcom/google/android/material/k/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
