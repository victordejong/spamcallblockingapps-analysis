.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ListPopupWindow$c;,
        Landroidx/appcompat/widget/ListPopupWindow$d;,
        Landroidx/appcompat/widget/ListPopupWindow$e;,
        Landroidx/appcompat/widget/ListPopupWindow$a;,
        Landroidx/appcompat/widget/ListPopupWindow$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/database/DataSetObserver;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final D:Landroidx/appcompat/widget/ListPopupWindow$d;

.field private final E:Landroidx/appcompat/widget/ListPopupWindow$c;

.field private final F:Landroidx/appcompat/widget/ListPopupWindow$a;

.field private G:Ljava/lang/Runnable;

.field private final H:Landroid/graphics/Rect;

.field private I:Landroid/graphics/Rect;

.field private d:Landroid/content/Context;

.field public e:Landroidx/appcompat/widget/DropDownListView;

.field public f:I

.field public g:I

.field h:I

.field public i:Landroid/view/View;

.field public j:Landroid/widget/AdapterView$OnItemClickListener;

.field final k:Landroidx/appcompat/widget/ListPopupWindow$e;

.field final l:Landroid/os/Handler;

.field public m:Z

.field public n:Landroid/widget/PopupWindow;

.field private o:Landroid/widget/ListAdapter;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Landroid/view/View;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_0

    .line 86
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setClipToScreenEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ListPopupWindow;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setEpicenterBounds"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ListPopupWindow;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 100
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v0, v3, :cond_1

    .line 102
    :try_start_2
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "getMaxAvailableHeight"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ListPopupWindow;->b:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 224
    sget v0, Landroidx/appcompat/a$a;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 235
    sget v0, Landroidx/appcompat/a$a;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 115
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    .line 116
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    const/16 v0, 0x3ea

    .line 119
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->s:I

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->g:I

    .line 126
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->w:Z

    .line 127
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    const v1, 0x7fffffff

    .line 128
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    .line 131
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:I

    .line 142
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$e;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->k:Landroidx/appcompat/widget/ListPopupWindow$e;

    .line 143
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$d;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroidx/appcompat/widget/ListPopupWindow$d;

    .line 144
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$c;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->E:Landroidx/appcompat/widget/ListPopupWindow$c;

    .line 145
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$a;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->F:Landroidx/appcompat/widget/ListPopupWindow$a;

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    .line 262
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroid/content/Context;

    .line 263
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->l:Landroid/os/Handler;

    .line 265
    sget-object v1, Landroidx/appcompat/a$j;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 267
    sget v2, Landroidx/appcompat/a$j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    .line 269
    sget v2, Landroidx/appcompat/a$j;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->r:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 272
    iput-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->t:Z

    .line 274
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    new-instance v0, Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    .line 277
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private a(Landroid/view/View;IZ)I
    .locals 5

    .line 1445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 1446
    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1448
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1449
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v2, v3

    .line 1448
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1455
    :catch_0
    :cond_0
    iget-object p3, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p1

    return p1

    .line 1457
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method

.method private a()V
    .locals 2

    .line 789
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 791
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 792
    check-cast v0, Landroid/view/ViewGroup;

    .line 793
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 1

    .line 950
    new-instance v0, Landroidx/appcompat/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 505
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->r:I

    const/4 p1, 0x1

    .line 506
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->t:Z

    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->I:Landroid/graphics/Rect;

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 432
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->A:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$b;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->A:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 289
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 292
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 294
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->A:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 297
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    if-eqz p1, :cond_3

    .line 298
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 785
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 423
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 486
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    return-void
.end method

.method public final c()I
    .locals 1

    .line 493
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 496
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->r:I

    return v0
.end method

.method public final d()V
    .locals 2

    .line 772
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 773
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 774
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 775
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    .line 776
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->l:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->k:Landroidx/appcompat/widget/ListPopupWindow$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 565
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 568
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    return-void

    .line 1555
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 860
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final e_()V
    .locals 17

    move-object/from16 v1, p0

    .line 2158
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    const/high16 v2, -0x80000000

    const-string v3, "ListPopupWindow"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v0, :cond_6

    .line 2159
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroid/content/Context;

    .line 2167
    new-instance v7, Landroidx/appcompat/widget/ListPopupWindow$1;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/ListPopupWindow$1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->G:Ljava/lang/Runnable;

    .line 2178
    iget-boolean v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->m:Z

    xor-int/2addr v7, v4

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    move-result-object v7

    iput-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    .line 2179
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 2180
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2182
    :cond_0
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2183
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2184
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/DropDownListView;->setFocusable(Z)V

    .line 2185
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 2186
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    new-instance v8, Landroidx/appcompat/widget/ListPopupWindow$2;

    invoke-direct {v8, v1}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2204
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->E:Landroidx/appcompat/widget/ListPopupWindow$c;

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2206
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v7, :cond_1

    .line 2207
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2210
    :cond_1
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    .line 2212
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 2216
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2217
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2223
    iget v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->z:I

    if-eqz v10, :cond_3

    if-eq v10, v4, :cond_2

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Invalid hint position "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->z:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2225
    :cond_2
    invoke-virtual {v9, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2226
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2230
    :cond_3
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2231
    invoke-virtual {v9, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2243
    :goto_0
    iget v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    if-ltz v0, :cond_4

    const/high16 v7, -0x80000000

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 2250
    :goto_1
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2252
    invoke-virtual {v8, v0, v5}, Landroid/view/View;->measure(II)V

    .line 2254
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2255
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v0

    move v0, v7

    move-object v7, v9

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 2261
    :goto_2
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_3

    .line 2263
    :cond_6
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 2264
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2267
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 2268
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v8

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 2276
    :goto_3
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 2278
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2279
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    .line 2283
    iget-boolean v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->t:Z

    if-nez v8, :cond_9

    .line 2284
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iput v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->r:I

    goto :goto_4

    .line 2287
    :cond_8
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v7, 0x0

    .line 2292
    :cond_9
    :goto_4
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    .line 2293
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    .line 2460
    :goto_5
    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->i:Landroid/view/View;

    .line 2294
    iget v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->r:I

    invoke-direct {v1, v9, v10, v8}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/view/View;IZ)I

    move-result v8

    .line 2296
    iget-boolean v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->w:Z

    const/4 v10, -0x2

    if-nez v9, :cond_f

    iget v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    if-ne v9, v6, :cond_b

    goto :goto_7

    .line 2301
    :cond_b
    iget v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    if-eq v9, v10, :cond_d

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v9, v6, :cond_c

    .line 2315
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_6

    .line 2309
    :cond_c
    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroid/content/Context;

    .line 2310
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 2309
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_6

    .line 2303
    :cond_d
    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroid/content/Context;

    .line 2304
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, v1, Landroidx/appcompat/widget/ListPopupWindow;->H:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 2303
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_6
    move v12, v2

    .line 2321
    iget-object v11, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    const/4 v13, 0x0

    const/4 v14, -0x1

    sub-int v15, v8, v0

    const/16 v16, -0x1

    invoke-virtual/range {v11 .. v16}, Landroidx/appcompat/widget/DropDownListView;->a(IIIII)I

    move-result v2

    if-lez v2, :cond_e

    .line 2324
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v8}, Landroidx/appcompat/widget/DropDownListView;->getPaddingTop()I

    move-result v8

    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    .line 2325
    invoke-virtual {v9}, Landroidx/appcompat/widget/DropDownListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    :cond_e
    add-int/2addr v2, v0

    goto :goto_8

    :cond_f
    :goto_7
    add-int v2, v8, v7

    .line 665
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ListPopupWindow;->n()Z

    move-result v0

    .line 666
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->s:I

    invoke-static {v7, v8}, Landroidx/core/widget/g;->a(Landroid/widget/PopupWindow;I)V

    .line 668
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 3460
    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->i:Landroid/view/View;

    .line 669
    invoke-static {v3}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_10

    return-void

    .line 674
    :cond_10
    iget v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    if-ne v3, v6, :cond_11

    const/4 v3, -0x1

    goto :goto_9

    :cond_11
    if-ne v3, v10, :cond_12

    .line 4460
    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->i:Landroid/view/View;

    .line 679
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 685
    :cond_12
    :goto_9
    iget v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    if-ne v7, v6, :cond_17

    if-eqz v0, :cond_13

    goto :goto_a

    :cond_13
    const/4 v2, -0x1

    :goto_a
    if-eqz v0, :cond_15

    .line 690
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    if-ne v7, v6, :cond_14

    const/4 v7, -0x1

    goto :goto_b

    :cond_14
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 692
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_d

    .line 694
    :cond_15
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    if-ne v7, v6, :cond_16

    const/4 v7, -0x1

    goto :goto_c

    :cond_16
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 696
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_d

    :cond_17
    if-ne v7, v10, :cond_18

    goto :goto_d

    :cond_18
    move v2, v7

    .line 704
    :goto_d
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget-boolean v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    if-nez v7, :cond_19

    iget-boolean v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->w:Z

    if-nez v7, :cond_19

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 706
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    .line 5460
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->i:Landroid/view/View;

    .line 706
    iget v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    iget v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->r:I

    if-gez v3, :cond_1a

    const/4 v11, -0x1

    goto :goto_f

    :cond_1a
    move v11, v3

    :goto_f
    if-gez v2, :cond_1b

    const/4 v12, -0x1

    goto :goto_10

    :cond_1b
    move v12, v2

    :goto_10
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    .line 711
    :cond_1c
    iget v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    if-ne v0, v6, :cond_1d

    const/4 v0, -0x1

    goto :goto_11

    :cond_1d
    if-ne v0, v10, :cond_1e

    .line 6460
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->i:Landroid/view/View;

    .line 715
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 722
    :cond_1e
    :goto_11
    iget v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    if-ne v7, v6, :cond_1f

    const/4 v2, -0x1

    goto :goto_12

    :cond_1f
    if-ne v7, v10, :cond_20

    goto :goto_12

    :cond_20
    move v2, v7

    .line 732
    :goto_12
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 733
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_21

    .line 7432
    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 7434
    :try_start_0
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    new-array v8, v4, [Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v9, v8, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    nop

    goto :goto_13

    .line 7440
    :cond_21
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 738
    :cond_22
    :goto_13
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget-boolean v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    if-nez v7, :cond_23

    iget-boolean v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->w:Z

    if-nez v7, :cond_23

    const/4 v7, 0x1

    goto :goto_14

    :cond_23
    const/4 v7, 0x0

    :goto_14
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 739
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroidx/appcompat/widget/ListPopupWindow$d;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 740
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->v:Z

    if-eqz v0, :cond_24

    .line 741
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget-boolean v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->u:Z

    invoke-static {v0, v7}, Landroidx/core/widget/g;->a(Landroid/widget/PopupWindow;Z)V

    .line 743
    :cond_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_25

    .line 744
    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_26

    .line 746
    :try_start_1
    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->I:Landroid/graphics/Rect;

    aput-object v7, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_15

    :catch_1
    move-exception v0

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 748
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 752
    :cond_25
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->I:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 754
    :cond_26
    :goto_15
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    .line 7460
    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->i:Landroid/view/View;

    .line 754
    iget v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    iget v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->r:I

    iget v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->g:I

    .line 8068
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_27

    .line 8069
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_16

    .line 8073
    :cond_27
    invoke-static {v2}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v7

    .line 8072
    invoke-static {v5, v7}, Landroidx/core/view/e;->a(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    const/4 v7, 0x5

    if-ne v5, v7, :cond_28

    .line 8077
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int/2addr v3, v5

    .line 8079
    :cond_28
    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 756
    :goto_16
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    .line 758
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->m:Z

    if-eqz v0, :cond_29

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 759
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ListPopupWindow;->m()V

    .line 761
    :cond_2a
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->m:Z

    if-nez v0, :cond_2b

    .line 762
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->l:Landroid/os/Handler;

    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->F:Landroidx/appcompat/widget/ListPopupWindow$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    return-void
.end method

.method public final f()I
    .locals 1

    .line 477
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    return v0
.end method

.method public final g()Landroid/widget/ListView;
    .locals 1

    .line 946
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    return-object v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:I

    return-void
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->m:Z

    .line 336
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public final k()I
    .locals 1

    .line 545
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->q:I

    return v0
.end method

.method public final l()V
    .locals 2

    .line 811
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 846
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8552
    iput-boolean v1, v0, Landroidx/appcompat/widget/DropDownListView;->a:Z

    .line 851
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 2

    .line 868
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()I
    .locals 1

    .line 8860
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 911
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    .line 1338
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->v:Z

    .line 1339
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->u:Z

    return-void
.end method
