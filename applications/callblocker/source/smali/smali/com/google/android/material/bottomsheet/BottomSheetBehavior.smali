.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final B:I


# instance fields
.field private A:Landroid/animation/ValueAnimator;

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/view/VelocityTracker;

.field private I:I

.field private J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Landroidx/d/b/c$a;

.field a:I

.field b:I

.field c:I

.field d:F

.field e:I

.field f:F

.field g:Z

.field h:I

.field i:Landroidx/d/b/c;

.field j:I

.field k:I

.field l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field

.field m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Z

.field private p:I

.field private q:Z

.field private r:F

.field private s:I

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Lcom/google/android/material/q/g;

.field private x:Lcom/google/android/material/q/k;

.field private y:Z

.field private z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<TV;>.c;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    .line 222
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    .line 226
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    .line 232
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    .line 1204
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Landroidx/d/b/c$a;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 264
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    .line 187
    iput-boolean v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    .line 222
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    .line 226
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    .line 232
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    .line 1204
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Landroidx/d/b/c$a;

    .line 265
    sget-object v0, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    .line 267
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 268
    if-eqz v1, :cond_1

    .line 269
    sget v2, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_backgroundTint:I

    .line 270
    invoke-static {p1, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 272
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    .line 276
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f()V

    .line 278
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 279
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    .line 282
    :cond_0
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-ne v2, v6, :cond_2

    .line 284
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(I)V

    .line 290
    :goto_1
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Z)V

    .line 291
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 292
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 291
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Z)V

    .line 293
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 294
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 293
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(Z)V

    .line 295
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    .line 296
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    .line 297
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 296
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(F)V

    .line 298
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(I)V

    .line 299
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:F

    .line 302
    return-void

    .line 274
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    goto :goto_0

    .line 286
    :cond_2
    sget v1, Lcom/google/android/material/a$l;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 287
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 286
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lcom/google/android/material/q/g;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    .line 1103
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    if-eqz v0, :cond_0

    .line 1111
    sget v0, Lcom/google/android/material/a$b;->bottomSheetStyle:I

    sget v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    .line 1112
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Lcom/google/android/material/q/k;

    .line 1115
    new-instance v0, Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Lcom/google/android/material/q/k;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    .line 1116
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 1118
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p4}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1123
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1124
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->setTint(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroidx/core/h/a/c$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroidx/core/h/a/c$a;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1584
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v1, p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    invoke-static {p1, p2, v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a/c$a;Ljava/lang/CharSequence;Landroidx/core/h/a/f;)V

    .line 1595
    return-void
.end method

.method private a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1051
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-nez v0, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1055
    :cond_2
    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    .line 1057
    :cond_3
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1059
    :cond_4
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 1061
    :cond_5
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 1062
    :cond_6
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->e:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    .line 1064
    :cond_7
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1066
    :cond_8
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->f:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1479
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1480
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-nez v1, :cond_0

    .line 1481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The view is not a child of CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 1484
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1485
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v1, :cond_1

    .line 1486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_1
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    if-eqz v0, :cond_0

    .line 1026
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1031
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v1, :cond_1

    .line 1032
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    .line 1036
    :goto_1
    return-void

    .line 1028
    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    goto :goto_0

    .line 1034
    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_1
.end method

.method static synthetic d(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1039
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    .line 1040
    return-void
.end method

.method private d(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 1492
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1497
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 1501
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1502
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 1503
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_2

    if-eqz p1, :cond_2

    .line 1504
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1505
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Ljava/util/Map;

    .line 1512
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_7

    .line 1513
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1514
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_4

    .line 1512
    :cond_3
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1518
    :cond_4
    if-nez p1, :cond_5

    .line 1519
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Ljava/util/Map;

    .line 1520
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1522
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1526
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_6

    .line 1527
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    :cond_6
    const/4 v1, 0x4

    invoke-static {v4, v1}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1535
    :cond_7
    if-nez p1, :cond_0

    .line 1536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Ljava/util/Map;

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 1043
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 1044
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1046
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    .line 1048
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1130
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    .line 1131
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1132
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1142
    return-void

    .line 1130
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private g()F
    .locals 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1146
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return v0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1149
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    goto :goto_0
.end method

.method private g(I)V
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 943
    if-nez v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 948
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 958
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private h()I
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    goto :goto_0
.end method

.method private h(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1002
    if-ne p1, v5, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 1008
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Z

    if-eq v4, v0, :cond_0

    .line 1009
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Z

    .line 1010
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 1011
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1007
    goto :goto_1

    .line 1014
    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1015
    :goto_2
    sub-float/2addr v3, v0

    .line 1016
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    new-array v5, v5, [F

    aput v3, v5, v2

    aput v0, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1017
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    move v0, v3

    .line 1014
    goto :goto_2
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v2, 0x6

    const/4 v5, 0x5

    const/4 v1, 0x4

    const/4 v3, 0x3

    .line 1541
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1545
    if-eqz v0, :cond_0

    .line 1548
    const/high16 v4, 0x80000

    invoke-static {v0, v4}, Landroidx/core/h/u;->c(Landroid/view/View;I)V

    .line 1549
    const/high16 v4, 0x40000

    invoke-static {v0, v4}, Landroidx/core/h/u;->c(Landroid/view/View;I)V

    .line 1550
    const/high16 v4, 0x100000

    invoke-static {v0, v4}, Landroidx/core/h/u;->c(Landroid/view/View;I)V

    .line 1552
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-eq v4, v5, :cond_2

    .line 1553
    sget-object v4, Landroidx/core/h/a/c$a;->u:Landroidx/core/h/a/c$a;

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/c$a;I)V

    .line 1556
    :cond_2
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1559
    :pswitch_1
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v3, :cond_3

    .line 1560
    :goto_1
    sget-object v2, Landroidx/core/h/a/c$a;->t:Landroidx/core/h/a/c$a;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/c$a;I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1559
    goto :goto_1

    .line 1566
    :pswitch_2
    sget-object v2, Landroidx/core/h/a/c$a;->t:Landroidx/core/h/a/c$a;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/c$a;I)V

    .line 1568
    sget-object v1, Landroidx/core/h/a/c$a;->s:Landroidx/core/h/a/c$a;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/c$a;I)V

    goto :goto_0

    .line 1574
    :pswitch_3
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v1, :cond_4

    move v2, v3

    .line 1575
    :cond_4
    sget-object v1, Landroidx/core/h/a/c$a;->s:Landroidx/core/h/a/c$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/c$a;I)V

    goto :goto_0

    .line 1556
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1085
    invoke-static {p1}, Landroidx/core/h/u;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    :goto_0
    return-object p1

    .line 1088
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1089
    check-cast p1, Landroid/view/ViewGroup;

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1091
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 1093
    goto :goto_0

    .line 1090
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1097
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a()V

    .line 338
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 339
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    .line 340
    return-void
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 768
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ratio must be a float value between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    .line 772
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(IZ)V

    .line 703
    return-void
.end method

.method public final a(IZ)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 716
    .line 717
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 718
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    if-nez v2, :cond_4

    .line 719
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    .line 729
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()V

    .line 731
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 732
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 733
    if-eqz v0, :cond_0

    .line 734
    if-eqz p2, :cond_3

    .line 735
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(I)V

    .line 742
    :cond_0
    :goto_1
    return-void

    .line 722
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    if-eq v2, p1, :cond_4

    .line 723
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    .line 724
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    goto :goto_0

    .line 737
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method a(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 1158
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1159
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    .line 1174
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;IIZ)V

    .line 1175
    return-void

    .line 1160
    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 1161
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    .line 1162
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    if-gt v0, v2, :cond_0

    .line 1165
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    move p2, v1

    goto :goto_0

    .line 1167
    :cond_2
    if-ne p2, v1, :cond_3

    .line 1168
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v0

    goto :goto_0

    .line 1169
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 1170
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    goto :goto_0

    .line 1172
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal state argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroid/view/View;IIZ)V
    .locals 2

    .prologue
    .line 1178
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroidx/d/b/c;->a(II)Z

    move-result v0

    .line 1182
    :goto_0
    if-eqz v0, :cond_3

    .line 1183
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 1185
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h(I)V

    .line 1186
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    iput p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:I

    .line 1193
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    invoke-static {p1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1194
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;Z)Z

    .line 1202
    :goto_1
    return-void

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    .line 1181
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Landroidx/d/b/c;->a(Landroid/view/View;II)Z

    move-result v0

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    iput p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:I

    goto :goto_1

    .line 1200
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    .line 330
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 331
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    .line 332
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    .line 314
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 316
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;)V

    .line 318
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_1
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    goto :goto_0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 564
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 565
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    .line 569
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p3, v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    if-eqz v3, :cond_0

    .line 575
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    if-lez v3, :cond_2

    .line 576
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v3

    .line 626
    :goto_1
    invoke-virtual {p0, p2, v0, v3, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;IIZ)V

    .line 627
    iput-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    goto :goto_0

    .line 578
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g()F

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 580
    const/4 v0, 0x5

    goto :goto_1

    .line 581
    :cond_3
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    if-nez v3, :cond_9

    .line 582
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 583
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v4, :cond_5

    .line 584
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 585
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    move v3, v1

    .line 586
    goto :goto_1

    .line 588
    :cond_4
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v0, v1

    move v3, v2

    .line 589
    goto :goto_1

    .line 592
    :cond_5
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    if-ge v3, v4, :cond_7

    .line 593
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 594
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    move v3, v1

    .line 595
    goto :goto_1

    .line 597
    :cond_6
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    move v0, v2

    move v3, v1

    .line 598
    goto :goto_1

    .line 601
    :cond_7
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 602
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    move v0, v2

    move v3, v1

    .line 603
    goto :goto_1

    .line 605
    :cond_8
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v0, v1

    move v3, v2

    .line 606
    goto :goto_1

    .line 611
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v0, :cond_a

    .line 612
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v0, v1

    .line 613
    goto :goto_1

    .line 616
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 617
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v3, v0, :cond_b

    .line 618
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    move v0, v2

    .line 619
    goto/16 :goto_1

    .line 621
    :cond_b
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v0, v1

    .line 622
    goto/16 :goto_1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .prologue
    .line 642
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 520
    if-ne p7, v3, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 525
    :goto_1
    if-ne p3, v0, :cond_0

    .line 528
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 529
    sub-int v1, v0, p5

    .line 530
    if-lez p5, :cond_5

    .line 531
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 532
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 533
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 534
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 553
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f(I)V

    .line 554
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 555
    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    goto :goto_0

    .line 524
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 536
    :cond_4
    aput p5, p6, v3

    .line 537
    neg-int v0, p5

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 538
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_2

    .line 540
    :cond_5
    if-gez p5, :cond_2

    .line 541
    const/4 v2, -0x1

    invoke-virtual {p3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 542
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    if-le v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v1, :cond_7

    .line 543
    :cond_6
    aput p5, p6, v3

    .line 544
    neg-int v0, p5

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 545
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_2

    .line 547
    :cond_7
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 548
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 549
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_2
.end method

.method public a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-ne v0, p1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 680
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 684
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()V

    .line 688
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 690
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    goto :goto_0

    .line 688
    :cond_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    goto :goto_1
.end method

.method a(Landroid/view/View;F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    if-eqz v2, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return v0

    .line 1074
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 1076
    goto :goto_0

    .line 1078
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 1079
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 345
    invoke-static {p1}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 352
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/a$d;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:I

    .line 353
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 356
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    invoke-static {p2, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_2

    .line 362
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_6

    .line 363
    invoke-static {p2}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v0

    .line 362
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/material/q/g;->r(F)V

    .line 365
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne v0, v5, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Z

    .line 366
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Lcom/google/android/material/q/g;

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3, v0}, Lcom/google/android/material/q/g;->p(F)V

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    .line 369
    invoke-static {p2}, Landroidx/core/h/u;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    .line 371
    invoke-static {p2, v1}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    if-nez v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Landroidx/d/b/c$a;

    invoke-static {p1, v0}, Landroidx/d/b/c;->a(Landroid/view/ViewGroup;Landroidx/d/b/c$a;)Landroidx/d/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    .line 378
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 380
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 382
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:I

    .line 383
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 384
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    .line 385
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d()V

    .line 386
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()V

    .line 388
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne v2, v5, :cond_9

    .line 389
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 400
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    .line 401
    return v1

    .line 363
    :cond_6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    goto :goto_0

    :cond_7
    move v0, v2

    .line 365
    goto :goto_1

    .line 366
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    .line 390
    :cond_9
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    .line 391
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    goto :goto_3

    .line 392
    :cond_a
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 393
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    goto :goto_3

    .line 394
    :cond_b
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 395
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    goto :goto_3

    .line 396
    :cond_c
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-eq v2, v1, :cond_d

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 397
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {p2, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    goto :goto_3
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    .line 458
    :goto_0
    return v2

    .line 411
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 413
    if-nez v4, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e()V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 417
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 420
    packed-switch v4, :pswitch_data_0

    .line 449
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    .line 451
    invoke-virtual {v0, p3}, Landroidx/d/b/c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    .line 452
    goto :goto_0

    .line 423
    :pswitch_1
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 424
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 426
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-eqz v0, :cond_3

    .line 427
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    goto :goto_0

    .line 432
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    .line 433
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    .line 436
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-eq v0, v8, :cond_4

    .line 437
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 438
    :goto_2
    if-eqz v0, :cond_4

    iget v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    invoke-virtual {p1, v0, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 440
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 443
    :cond_4
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne v0, v7, :cond_6

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    .line 445
    invoke-virtual {p1, p2, v5, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    goto :goto_1

    :cond_5
    move-object v0, v3

    .line 437
    goto :goto_2

    :cond_6
    move v0, v2

    .line 445
    goto :goto_3

    .line 457
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 458
    :goto_4
    if-ne v4, v8, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-nez v3, :cond_9

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-eq v3, v1, :cond_9

    .line 462
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    int-to-float v0, v0

    .line 464
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    invoke-virtual {v3}, Landroidx/d/b/c;->b()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    :goto_5
    move v2, v1

    .line 458
    goto/16 :goto_0

    :cond_8
    move-object v0, v3

    .line 457
    goto :goto_4

    :cond_9
    move v1, v2

    .line 464
    goto :goto_5

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 651
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p3, v1, :cond_1

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 654
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 656
    :cond_1
    return v0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 506
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 507
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    .line 508
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 785
    if-gez p1, :cond_0

    .line 786
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    .line 789
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eq v0, p1, :cond_1

    .line 810
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    .line 811
    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 813
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    .line 815
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    .line 817
    :cond_1
    return-void
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 470
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 474
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne v3, v0, :cond_2

    if-eqz v2, :cond_0

    .line 477
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    if-eqz v3, :cond_3

    .line 478
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    invoke-virtual {v3, p3}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    .line 481
    :cond_3
    if-nez v2, :cond_4

    .line 482
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e()V

    .line 484
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    if-nez v3, :cond_5

    .line 485
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    .line 487
    :cond_5
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 490
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-nez v2, :cond_6

    .line 491
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    invoke-virtual {v3}, Landroidx/d/b/c;->b()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 492
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroidx/d/b/c;->a(Landroid/view/View;I)V

    .line 495
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 862
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    .line 863
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 838
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    .line 839
    return-void
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne p1, v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 930
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 934
    :cond_2
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    goto :goto_0

    .line 938
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(I)V

    goto :goto_0
.end method

.method e(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 974
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne v0, p1, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 979
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 984
    if-eqz v0, :cond_0

    .line 988
    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 989
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(Z)V

    .line 994
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h(I)V

    move v2, v1

    .line 995
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 996
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a(Landroid/view/View;I)V

    .line 995
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 990
    :cond_4
    const/4 v2, 0x5

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 991
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(Z)V

    goto :goto_1

    .line 998
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    goto :goto_0
.end method

.method f(I)V
    .locals 4

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1339
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1340
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v2, v1

    .line 1344
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 1345
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a(Landroid/view/View;F)V

    .line 1344
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1340
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    .line 1343
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v2, v1

    goto :goto_0

    .line 1348
    :cond_1
    return-void
.end method
