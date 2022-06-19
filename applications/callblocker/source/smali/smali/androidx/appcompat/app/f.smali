.class Landroidx/appcompat/app/f;
.super Landroidx/appcompat/app/e;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/f$d;,
        Landroidx/appcompat/app/f$f;,
        Landroidx/appcompat/app/f$e;,
        Landroidx/appcompat/app/f$c;,
        Landroidx/appcompat/app/f$g;,
        Landroidx/appcompat/app/f$h;,
        Landroidx/appcompat/app/f$a;,
        Landroidx/appcompat/app/f$i;,
        Landroidx/appcompat/app/f$b;
    }
.end annotation


# static fields
.field private static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Z

.field private static final v:[I

.field private static w:Z

.field private static final x:Z


# instance fields
.field private A:Landroidx/appcompat/widget/w;

.field private B:Landroidx/appcompat/app/f$a;

.field private C:Landroidx/appcompat/app/f$i;

.field private D:Z

.field private E:Z

.field private F:Landroid/view/ViewGroup;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/view/View;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:[Landroidx/appcompat/app/f$h;

.field private M:Landroidx/appcompat/app/f$h;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Landroidx/appcompat/app/f$e;

.field private W:Landroidx/appcompat/app/f$e;

.field private final X:Ljava/lang/Runnable;

.field private Y:Z

.field private Z:Landroid/graphics/Rect;

.field final a:Ljava/lang/Object;

.field private aa:Landroid/graphics/Rect;

.field private ab:Landroidx/appcompat/app/AppCompatViewInflater;

.field final b:Landroid/content/Context;

.field c:Landroid/view/Window;

.field final d:Landroidx/appcompat/app/d;

.field e:Landroidx/appcompat/app/a;

.field f:Landroid/view/MenuInflater;

.field g:Landroidx/appcompat/view/b;

.field h:Landroidx/appcompat/widget/ActionBarContextView;

.field i:Landroid/widget/PopupWindow;

.field j:Ljava/lang/Runnable;

.field k:Landroidx/core/h/y;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field private y:Landroidx/appcompat/app/f$c;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Landroidx/appcompat/app/f;->u:Z

    .line 135
    new-array v0, v1, [I

    const v3, 0x1010054

    aput v3, v0, v2

    sput-object v0, Landroidx/appcompat/app/f;->v:[I

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v0, v3, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Landroidx/appcompat/app/f;->x:Z

    .line 154
    sget-boolean v0, Landroidx/appcompat/app/f;->u:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroidx/appcompat/app/f;->w:Z

    if-nez v0, :cond_1

    .line 156
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 158
    new-instance v2, Landroidx/appcompat/app/f$1;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/f$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 183
    sput-boolean v1, Landroidx/appcompat/app/f;->w:Z

    .line 185
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 133
    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/d;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/d;)V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 294
    invoke-direct {p0}, Landroidx/appcompat/app/e;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/h/y;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->D:Z

    .line 244
    iput v1, p0, Landroidx/appcompat/app/f;->R:I

    .line 256
    new-instance v0, Landroidx/appcompat/app/f$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$2;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->X:Ljava/lang/Runnable;

    .line 295
    iput-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 296
    iput-object p3, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    .line 297
    iput-object p4, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    .line 299
    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->i()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/f;->R:I

    .line 310
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    if-ne v0, v1, :cond_1

    .line 312
    sget-object v0, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 313
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/f;->R:I

    .line 316
    sget-object v0, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_1
    if-eqz p2, :cond_2

    .line 321
    invoke-direct {p0, p2}, Landroidx/appcompat/app/f;->a(Landroid/view/Window;)V

    .line 328
    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/i;->a()V

    .line 329
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    .line 873
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 879
    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 880
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 881
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 882
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 880
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->a(IIII)V

    .line 884
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/a$j;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 885
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 886
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 888
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    .line 890
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 889
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 892
    :cond_0
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 893
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    .line 894
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 893
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 896
    :cond_1
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 897
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    .line 898
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 897
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 900
    :cond_2
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    .line 902
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 901
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 904
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    .line 907
    return-void
.end method

.method private B()Landroidx/appcompat/app/c;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1470
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 1471
    :goto_0
    if-eqz v0, :cond_2

    .line 1472
    instance-of v2, v0, Landroidx/appcompat/app/c;

    if-eqz v2, :cond_0

    .line 1473
    check-cast v0, Landroidx/appcompat/app/c;

    .line 1481
    :goto_1
    return-object v0

    .line 1475
    :cond_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 1476
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1478
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1481
    goto :goto_1
.end method

.method private C()V
    .locals 2

    .prologue
    .line 2108
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->E:Z

    if-eqz v0, :cond_0

    .line 2109
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2112
    :cond_0
    return-void
.end method

.method private D()I
    .locals 2

    .prologue
    .line 2232
    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v0

    goto :goto_0
.end method

.method private E()Landroidx/appcompat/app/f$e;
    .locals 2

    .prologue
    .line 2398
    iget-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    if-nez v0, :cond_0

    .line 2399
    new-instance v0, Landroidx/appcompat/app/f$d;

    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f$d;-><init>(Landroidx/appcompat/app/f;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    .line 2401
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    return-object v0
.end method

.method private F()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2405
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->U:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2406
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2407
    if-nez v1, :cond_0

    .line 2427
    :goto_0
    return v0

    .line 2413
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    .line 2414
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 2413
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 2415
    if-eqz v1, :cond_2

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->T:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    :cond_1
    :goto_2
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->U:Z

    .line 2427
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->T:Z

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2415
    goto :goto_1

    .line 2417
    :catch_0
    move-exception v1

    .line 2420
    const-string/jumbo v3, "AppCompatDelegate"

    const-string/jumbo v4, "Exception while getting ActivityInfo"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2421
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->T:Z

    goto :goto_2
.end method

.method private a(Landroid/view/Window;)V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 637
    instance-of v1, v0, Landroidx/appcompat/app/f$c;

    if-eqz v1, :cond_1

    .line 638
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_1
    new-instance v1, Landroidx/appcompat/app/f$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/f$c;-><init>(Landroidx/appcompat/app/f;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    .line 643
    iget-object v0, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 645
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/f;->v:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ap;

    move-result-object v0

    .line 647
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 648
    if-eqz v1, :cond_2

    .line 650
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 654
    iput-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    .line 655
    return-void
.end method

.method private a(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1486
    iget-boolean v0, p1, Landroidx/appcompat/app/f$h;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-eqz v0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    if-nez v0, :cond_2

    .line 1493
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1494
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    move v0, v9

    .line 1496
    :goto_1
    if-nez v0, :cond_0

    .line 1501
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1502
    if-eqz v0, :cond_4

    iget v4, p1, Landroidx/appcompat/app/f$h;->a:I

    iget-object v5, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1504
    invoke-virtual {p0, p1, v9}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1494
    goto :goto_1

    .line 1508
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1509
    if-eqz v8, :cond_0

    .line 1514
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroidx/appcompat/app/f$h;->q:Z

    if-eqz v0, :cond_b

    .line 1520
    :cond_5
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 1522
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1530
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->c(Landroidx/appcompat/app/f$h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/f$h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1535
    if-nez v0, :cond_d

    .line 1536
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1539
    :goto_3
    iget v0, p1, Landroidx/appcompat/app/f$h;->b:I

    .line 1540
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1542
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1543
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 1544
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1546
    :cond_7
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1553
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    move v1, v2

    .line 1564
    :cond_9
    :goto_4
    iput-boolean v3, p1, Landroidx/appcompat/app/f$h;->n:Z

    .line 1566
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroidx/appcompat/app/f$h;->d:I

    iget v4, p1, Landroidx/appcompat/app/f$h;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1573
    iget v1, p1, Landroidx/appcompat/app/f$h;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1574
    iget v1, p1, Landroidx/appcompat/app/f$h;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1576
    iget-object v1, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    iput-boolean v9, p1, Landroidx/appcompat/app/f$h;->o:Z

    goto/16 :goto_0

    .line 1524
    :cond_a
    iget-boolean v0, p1, Landroidx/appcompat/app/f$h;->q:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1526
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_2

    .line 1555
    :cond_b
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1558
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1559
    if-eqz v0, :cond_c

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_9

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move-object v1, v0

    goto :goto_3
.end method

.method private a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1588
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0}, Landroidx/appcompat/widget/w;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 1589
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    .line 1590
    invoke-interface {v0}, Landroidx/appcompat/widget/w;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1592
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1594
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v1}, Landroidx/appcompat/widget/w;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 1595
    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_3

    .line 1597
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->r:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/appcompat/app/f;->s:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1599
    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/f;->X:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1600
    iget-object v1, p0, Landroidx/appcompat/app/f;->X:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1603
    :cond_2
    invoke-virtual {p0, v4, v3}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v1

    .line 1607
    iget-object v2, v1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroidx/appcompat/app/f$h;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    iget-object v3, v1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    .line 1608
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1609
    iget-object v1, v1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1610
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0}, Landroidx/appcompat/widget/w;->h()Z

    .line 1629
    :cond_3
    :goto_0
    return-void

    .line 1614
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v1}, Landroidx/appcompat/widget/w;->i()Z

    .line 1615
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_3

    .line 1616
    invoke-virtual {p0, v4, v3}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v1

    .line 1617
    iget-object v1, v1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1623
    :cond_5
    invoke-virtual {p0, v4, v3}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    .line 1625
    iput-boolean v3, v0, Landroidx/appcompat/app/f$h;->q:Z

    .line 1626
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    .line 1628
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1415
    if-nez p1, :cond_0

    move v0, v2

    .line 1433
    :goto_0
    return v0

    .line 1419
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    .line 1421
    :goto_1
    if-nez v1, :cond_1

    .line 1426
    const/4 v0, 0x1

    goto :goto_0

    .line 1427
    :cond_1
    if-eq v1, v3, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 1428
    invoke-static {v0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 1433
    goto :goto_0

    .line 1435
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method private a(Landroidx/appcompat/app/f$h;)Z
    .locals 2

    .prologue
    .line 1581
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$h;->a(Landroid/content/Context;)V

    .line 1582
    new-instance v0, Landroidx/appcompat/app/f$g;

    iget-object v1, p1, Landroidx/appcompat/app/f$h;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f$g;-><init>(Landroidx/appcompat/app/f;Landroid/content/Context;)V

    iput-object v0, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    .line 1583
    const/16 v0, 0x51

    iput v0, p1, Landroidx/appcompat/app/f$h;->c:I

    .line 1584
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroidx/appcompat/app/f$h;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1972
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1992
    :cond_0
    :goto_0
    return v0

    .line 1980
    :cond_1
    iget-boolean v1, p1, Landroidx/appcompat/app/f$h;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_3

    .line 1982
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1985
    :cond_3
    if-eqz v0, :cond_0

    .line 1987
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-nez v1, :cond_0

    .line 1988
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 3

    .prologue
    .line 2163
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-eqz v0, :cond_1

    .line 2165
    const/4 v0, 0x0

    .line 2185
    :cond_0
    :goto_0
    return v0

    .line 2168
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()I

    move-result v1

    .line 2169
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->j(I)I

    move-result v0

    .line 2170
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/f;->b(IZ)Z

    move-result v0

    .line 2172
    if-nez v1, :cond_3

    .line 2173
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->u()Landroidx/appcompat/app/f$e;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/f$e;->d()V

    .line 2178
    :cond_2
    :goto_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 2179
    invoke-direct {p0}, Landroidx/appcompat/app/f;->E()Landroidx/appcompat/app/f$e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/f$e;->d()V

    goto :goto_0

    .line 2174
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$e;

    if-eqz v2, :cond_2

    .line 2176
    iget-object v2, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$e;

    invoke-virtual {v2}, Landroidx/appcompat/app/f$e;->e()V

    goto :goto_1

    .line 2180
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    if-eqz v1, :cond_0

    .line 2182
    iget-object v1, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    invoke-virtual {v1}, Landroidx/appcompat/app/f$e;->e()V

    goto :goto_0
.end method

.method private b(IZ)Z
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2245
    .line 2247
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2248
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v0, 0x30

    .line 2251
    packed-switch p1, :pswitch_data_0

    move v1, v2

    .line 2266
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->F()Z

    move-result v5

    .line 2268
    sget-boolean v0, Landroidx/appcompat/app/f;->x:Z

    if-nez v0, :cond_0

    if-eq v1, v2, :cond_5

    :cond_0
    if-nez v5, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_5

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->O:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_5

    .line 2274
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 2275
    iget v0, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr v0, v1

    iput v0, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 2281
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 2294
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    .line 2297
    if-nez v0, :cond_2

    if-eq v2, v1, :cond_2

    if-eqz p2, :cond_2

    if-nez v5, :cond_2

    iget-boolean v3, p0, Landroidx/appcompat/app/f;->O:Z

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_1

    iget-boolean v3, p0, Landroidx/appcompat/app/f;->P:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 2311
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/a;->b(Landroid/app/Activity;)V

    move v0, v4

    .line 2315
    :cond_2
    if-nez v0, :cond_4

    if-eq v2, v1, :cond_4

    .line 2320
    invoke-direct {p0, v1, v5}, Landroidx/appcompat/app/f;->c(IZ)V

    .line 2330
    :goto_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/appcompat/app/c;

    if-eqz v0, :cond_3

    .line 2331
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/c;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c;->a(I)V

    .line 2334
    :cond_3
    return v4

    .line 2253
    :pswitch_0
    const/16 v0, 0x20

    move v1, v0

    .line 2254
    goto :goto_0

    .line 2256
    :pswitch_1
    const/16 v0, 0x10

    move v1, v0

    .line 2257
    goto :goto_0

    .line 2283
    :catch_0
    move-exception v0

    .line 2287
    const-string/jumbo v2, "AppCompatDelegate"

    const-string/jumbo v6, "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 2290
    goto :goto_1

    :cond_4
    move v4, v0

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1

    .line 2251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroidx/appcompat/app/f$h;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1632
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 1635
    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_4

    .line 1637
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1638
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1639
    sget v0, Landroidx/appcompat/a$a;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1641
    const/4 v0, 0x0

    .line 1642
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 1643
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1644
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1645
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1646
    sget v4, Landroidx/appcompat/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1653
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1654
    if-nez v0, :cond_1

    .line 1655
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1656
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1658
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1661
    if-eqz v2, :cond_4

    .line 1662
    new-instance v0, Landroidx/appcompat/view/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 1663
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1667
    :goto_1
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 1668
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 1669
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/f$h;->a(Landroidx/appcompat/view/menu/g;)V

    .line 1671
    return v5

    .line 1649
    :cond_3
    sget v4, Landroidx/appcompat/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1696
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-eqz v0, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return v2

    .line 1701
    :cond_1
    iget-boolean v0, p1, Landroidx/appcompat/app/f$h;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1702
    goto :goto_0

    .line 1705
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    if-eq v0, p1, :cond_3

    .line 1707
    iget-object v0, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    .line 1710
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1712
    if-eqz v3, :cond_4

    .line 1713
    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    .line 1716
    :cond_4
    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_c

    :cond_5
    move v0, v1

    .line 1719
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v4, :cond_6

    .line 1722
    iget-object v4, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v4}, Landroidx/appcompat/widget/w;->j()V

    .line 1725
    :cond_6
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    if-nez v4, :cond_12

    if-eqz v0, :cond_7

    .line 1726
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/app/i;

    if-nez v4, :cond_12

    .line 1729
    :cond_7
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroidx/appcompat/app/f$h;->r:Z

    if-eqz v4, :cond_e

    .line 1730
    :cond_8
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_9

    .line 1731
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v4, :cond_0

    .line 1736
    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v4, :cond_b

    .line 1737
    iget-object v4, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$a;

    if-nez v4, :cond_a

    .line 1738
    new-instance v4, Landroidx/appcompat/app/f$a;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/f$a;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v4, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$a;

    .line 1740
    :cond_a
    iget-object v4, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    iget-object v5, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    iget-object v6, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$a;

    invoke-interface {v4, v5, v6}, Landroidx/appcompat/widget/w;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 1745
    :cond_b
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->h()V

    .line 1746
    iget v4, p1, Landroidx/appcompat/app/f$h;->a:I

    iget-object v5, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1748
    invoke-virtual {p1, v7}, Landroidx/appcompat/app/f$h;->a(Landroidx/appcompat/view/menu/g;)V

    .line 1750
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    iget-object v1, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$a;

    invoke-interface {v0, v7, v1}, Landroidx/appcompat/widget/w;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1716
    goto :goto_1

    .line 1758
    :cond_d
    iput-boolean v2, p1, Landroidx/appcompat/app/f$h;->r:Z

    .line 1763
    :cond_e
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->h()V

    .line 1767
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1768
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    iget-object v5, p1, Landroidx/appcompat/app/f$h;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/g;->d(Landroid/os/Bundle;)V

    .line 1769
    iput-object v7, p1, Landroidx/appcompat/app/f$h;->s:Landroid/os/Bundle;

    .line 1773
    :cond_f
    iget-object v4, p1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    iget-object v5, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1774
    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_10

    .line 1777
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    iget-object v1, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$a;

    invoke-interface {v0, v7, v1}, Landroidx/appcompat/widget/w;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 1779
    :cond_10
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->i()V

    goto/16 :goto_0

    .line 1784
    :cond_11
    if-eqz p2, :cond_13

    .line 1785
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1784
    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1786
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_14

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Landroidx/appcompat/app/f$h;->p:Z

    .line 1787
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    iget-boolean v3, p1, Landroidx/appcompat/app/f$h;->p:Z

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    .line 1788
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->i()V

    .line 1792
    :cond_12
    iput-boolean v1, p1, Landroidx/appcompat/app/f$h;->m:Z

    .line 1793
    iput-boolean v2, p1, Landroidx/appcompat/app/f$h;->n:Z

    .line 1794
    iput-object p1, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    move v2, v1

    .line 1796
    goto/16 :goto_0

    .line 1785
    :cond_13
    const/4 v0, -0x1

    goto :goto_2

    :cond_14
    move v0, v2

    .line 1786
    goto :goto_3
.end method

.method private c(IZ)V
    .locals 4

    .prologue
    .line 2341
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2342
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2344
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    or-int/2addr v1, p1

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 2345
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2348
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    .line 2349
    invoke-static {v0}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Resources;)V

    .line 2352
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/f;->S:I

    if-eqz v0, :cond_1

    .line 2355
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget v1, p0, Landroidx/appcompat/app/f;->S:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 2357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2363
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/app/f;->S:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2367
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 2368
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 2369
    instance-of v1, v0, Landroidx/lifecycle/h;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 2371
    check-cast v1, Landroidx/lifecycle/h;

    invoke-interface {v1}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/e;

    move-result-object v1

    .line 2372
    invoke-virtual {v1}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v1

    sget-object v3, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/e$b;->a(Landroidx/lifecycle/e$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2373
    invoke-virtual {v0, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2382
    :cond_2
    :goto_0
    return-void

    .line 2377
    :cond_3
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->Q:Z

    if-eqz v1, :cond_2

    .line 2378
    invoke-virtual {v0, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method private c(Landroidx/appcompat/app/f$h;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1675
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    iput-object v0, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    .line 1692
    :goto_0
    return v1

    .line 1680
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_1

    move v1, v2

    .line 1681
    goto :goto_0

    .line 1684
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/app/f$i;

    if-nez v0, :cond_2

    .line 1685
    new-instance v0, Landroidx/appcompat/app/f$i;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$i;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/app/f$i;

    .line 1688
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/app/f$i;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$h;->a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;

    move-result-object v0

    .line 1690
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    .line 1692
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1850
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1851
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    .line 1852
    iget-boolean v1, v0, Landroidx/appcompat/app/f$h;->o:Z

    if-nez v1, :cond_0

    .line 1853
    invoke-direct {p0, v0, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1857
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1861
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1910
    :goto_0
    return v0

    .line 1866
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v3

    .line 1867
    if-nez p1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    .line 1868
    invoke-interface {v0}, Landroidx/appcompat/widget/w;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 1869
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1870
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0}, Landroidx/appcompat/widget/w;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1871
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1872
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0}, Landroidx/appcompat/widget/w;->h()Z

    move-result v2

    .line 1901
    :goto_1
    if-eqz v2, :cond_1

    .line 1902
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1904
    if-eqz v0, :cond_6

    .line 1905
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 1910
    goto :goto_0

    .line 1875
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0}, Landroidx/appcompat/widget/w;->i()Z

    move-result v2

    goto :goto_1

    .line 1878
    :cond_3
    iget-boolean v0, v3, Landroidx/appcompat/app/f$h;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Landroidx/appcompat/app/f$h;->n:Z

    if-eqz v0, :cond_5

    .line 1881
    :cond_4
    iget-boolean v0, v3, Landroidx/appcompat/app/f$h;->o:Z

    .line 1883
    invoke-virtual {p0, v3, v2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    move v2, v0

    goto :goto_1

    .line 1884
    :cond_5
    iget-boolean v0, v3, Landroidx/appcompat/app/f$h;->m:Z

    if-eqz v0, :cond_7

    .line 1886
    iget-boolean v0, v3, Landroidx/appcompat/app/f$h;->r:Z

    if-eqz v0, :cond_8

    .line 1889
    iput-boolean v1, v3, Landroidx/appcompat/app/f$h;->m:Z

    .line 1890
    invoke-direct {p0, v3, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1893
    :goto_3
    if-eqz v0, :cond_7

    .line 1895
    invoke-direct {p0, v3, p2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1907
    :cond_6
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private k(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1996
    iget v0, p0, Landroidx/appcompat/app/f;->s:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/app/f;->s:I

    .line 1998
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez v0, :cond_0

    .line 1999
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->X:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2000
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->r:Z

    .line 2002
    :cond_0
    return-void
.end method

.method private l(I)I
    .locals 2

    .prologue
    .line 2115
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 2116
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const/16 p1, 0x6c

    .line 2125
    :cond_0
    :goto_0
    return p1

    .line 2119
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 2120
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 396
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    .line 398
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 403
    new-instance v1, Landroidx/appcompat/app/l;

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/l;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    .line 407
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->Y:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->c(Z)V

    goto :goto_0

    .line 404
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 405
    new-instance v1, Landroidx/appcompat/app/l;

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/l;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    goto :goto_1
.end method

.method private w()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$e;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$e;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->e()V

    .line 609
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->e()V

    .line 612
    :cond_1
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/Window;)V

    .line 625
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-nez v0, :cond_1

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_1
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 658
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->E:Z

    if-nez v0, :cond_2

    .line 659
    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    .line 662
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->n()Ljava/lang/CharSequence;

    move-result-object v0

    .line 663
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v1, :cond_3

    .line 665
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/w;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 673
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->A()V

    .line 675
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/ViewGroup;)V

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->E:Z

    .line 684
    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    .line 685
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_2

    .line 686
    :cond_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->k(I)V

    .line 689
    :cond_2
    return-void

    .line 666
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 667
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 668
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/app/f;->G:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Landroidx/appcompat/app/f;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private z()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 692
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 694
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 696
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 701
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/f;->d(I)Z

    .line 706
    :cond_1
    :goto_0
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/f;->d(I)Z

    .line 709
    :cond_2
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 710
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->d(I)Z

    .line 712
    :cond_3
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/f;->o:Z

    .line 713
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 716
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 717
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 719
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 723
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->p:Z

    if-nez v1, :cond_a

    .line 724
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->o:Z

    if-eqz v1, :cond_5

    .line 726
    sget v1, Landroidx/appcompat/a$g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 730
    iput-boolean v5, p0, Landroidx/appcompat/app/f;->m:Z

    iput-boolean v5, p0, Landroidx/appcompat/app/f;->l:Z

    move-object v2, v0

    .line 811
    :goto_1
    if-nez v2, :cond_d

    .line 812
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_4
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->d(I)Z

    goto/16 :goto_0

    .line 731
    :cond_5
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    if-eqz v0, :cond_11

    .line 737
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 738
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroidx/appcompat/a$a;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 741
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 742
    new-instance v0, Landroidx/appcompat/view/d;

    iget-object v2, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 748
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$g;->abc_screen_toolbar:I

    .line 749
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 751
    sget v1, Landroidx/appcompat/a$f;->decor_content_parent:I

    .line 752
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/w;

    iput-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    .line 753
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/w;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 758
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->m:Z

    if-eqz v1, :cond_6

    .line 759
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v1, v6}, Landroidx/appcompat/widget/w;->a(I)V

    .line 761
    :cond_6
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->I:Z

    if-eqz v1, :cond_7

    .line 762
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/w;->a(I)V

    .line 764
    :cond_7
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->J:Z

    if-eqz v1, :cond_8

    .line 765
    iget-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/w;->a(I)V

    :cond_8
    move-object v2, v0

    .line 767
    goto/16 :goto_1

    .line 744
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    goto :goto_2

    .line 769
    :cond_a
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->n:Z

    if-eqz v1, :cond_b

    .line 770
    sget v1, Landroidx/appcompat/a$g;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 776
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 779
    new-instance v0, Landroidx/appcompat/app/f$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$3;-><init>(Landroidx/appcompat/app/f;)V

    invoke-static {v1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/q;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 773
    :cond_b
    sget v1, Landroidx/appcompat/a$g;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 801
    check-cast v0, Landroidx/appcompat/widget/aa;

    new-instance v2, Landroidx/appcompat/app/f$4;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/f$4;-><init>(Landroidx/appcompat/app/f;)V

    invoke-interface {v0, v2}, Landroidx/appcompat/widget/aa;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/aa$a;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 822
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-nez v0, :cond_e

    .line 823
    sget v0, Landroidx/appcompat/a$f;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/app/f;->G:Landroid/widget/TextView;

    .line 827
    :cond_e
    invoke-static {v2}, Landroidx/appcompat/widget/av;->b(Landroid/view/View;)V

    .line 829
    sget v0, Landroidx/appcompat/a$f;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 832
    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 833
    if-eqz v1, :cond_10

    .line 836
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 837
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 838
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 839
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 844
    :cond_f
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 845
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ContentFrameLayout;->setId(I)V

    .line 849
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 850
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 855
    :cond_10
    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 857
    new-instance v1, Landroidx/appcompat/app/f$5;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$5;-><init>(Landroidx/appcompat/app/f;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 867
    return-object v2

    :cond_11
    move-object v2, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1375
    iget-object v0, p0, Landroidx/appcompat/app/f;->ab:Landroidx/appcompat/app/AppCompatViewInflater;

    if-nez v0, :cond_1

    .line 1376
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1377
    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_viewInflaterClass:I

    .line 1378
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1379
    if-eqz v2, :cond_0

    const-class v0, Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1380
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1383
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/f;->ab:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1399
    :cond_1
    :goto_0
    sget-boolean v0, Landroidx/appcompat/app/f;->u:Z

    if-eqz v0, :cond_5

    .line 1400
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_4

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1402
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v7, :cond_3

    move v0, v7

    :goto_1
    move v5, v0

    .line 1407
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->ab:Landroidx/appcompat/app/AppCompatViewInflater;

    sget-boolean v6, Landroidx/appcompat/app/f;->u:Z

    .line 1410
    invoke-static {}, Landroidx/appcompat/widget/au;->a()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1407
    invoke-virtual/range {v0 .. v8}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1386
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1387
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 1388
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1389
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v0, p0, Landroidx/appcompat/app/f;->ab:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    const-string/jumbo v3, "AppCompatDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to instantiate custom view inflater "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ". Falling back to default."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/f;->ab:Landroidx/appcompat/app/AppCompatViewInflater;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1402
    goto :goto_1

    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1404
    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/ViewParent;)Z

    move-result v0

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_2
.end method

.method public a()Landroidx/appcompat/app/a;
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Landroidx/appcompat/app/f;->v()V

    .line 384
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method protected a(IZ)Landroidx/appcompat/app/f$h;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1955
    iget-object v0, p0, Landroidx/appcompat/app/f;->L:[Landroidx/appcompat/app/f$h;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1956
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroidx/appcompat/app/f$h;

    .line 1957
    if-eqz v0, :cond_1

    .line 1958
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1960
    :cond_1
    iput-object v1, p0, Landroidx/appcompat/app/f;->L:[Landroidx/appcompat/app/f$h;

    move-object v0, v1

    .line 1963
    :cond_2
    aget-object v1, v0, p1

    .line 1964
    if-nez v1, :cond_3

    .line 1965
    new-instance v1, Landroidx/appcompat/app/f$h;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/f$h;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1967
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method a(Landroid/view/Menu;)Landroidx/appcompat/app/f$h;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1942
    iget-object v3, p0, Landroidx/appcompat/app/f;->L:[Landroidx/appcompat/app/f$h;

    .line 1943
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1944
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1945
    aget-object v1, v3, v2

    .line 1946
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1950
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1943
    goto :goto_0

    .line 1944
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1950
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 3

    .prologue
    .line 1043
    if-nez p1, :cond_0

    .line 1044
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    .line 1051
    :cond_1
    new-instance v0, Landroidx/appcompat/app/f$b;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$b;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V

    .line 1053
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v1

    .line 1054
    if-eqz v1, :cond_2

    .line 1055
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 1056
    iget-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz v1, :cond_2

    .line 1057
    iget-object v1, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    iget-object v2, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-interface {v1, v2}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/view/b;)V

    .line 1061
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-nez v1, :cond_3

    .line 1063
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 1066
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 616
    iput p1, p0, Landroidx/appcompat/app/f;->S:I

    .line 617
    return-void
.end method

.method a(ILandroidx/appcompat/app/f$h;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1915
    if-nez p3, :cond_1

    .line 1917
    if-nez p2, :cond_0

    .line 1918
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->L:[Landroidx/appcompat/app/f$h;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1919
    iget-object v0, p0, Landroidx/appcompat/app/f;->L:[Landroidx/appcompat/app/f$h;

    aget-object p2, v0, p1

    .line 1923
    :cond_0
    if-eqz p2, :cond_1

    .line 1925
    iget-object p3, p2, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    .line 1930
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroidx/appcompat/app/f$h;->o:Z

    if-nez v0, :cond_3

    .line 1939
    :cond_2
    :goto_0
    return-void

    .line 1933
    :cond_3
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v0, :cond_2

    .line 1937
    iget-object v0, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Z)Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->O:Z

    .line 336
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 487
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->E:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    .line 497
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;)V

    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Z)Z

    .line 502
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 342
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->O:Z

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Z)Z

    .line 350
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 352
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 353
    const/4 v1, 0x0

    .line 355
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/f;->b(Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    :goto_0
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 362
    if-nez v0, :cond_1

    .line 363
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->Y:Z

    .line 370
    :cond_0
    :goto_1
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->P:Z

    .line 371
    return-void

    .line 356
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->c(Z)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 543
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    .line 544
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 545
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 546
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    iget-object v0, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 548
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 561
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    .line 562
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 564
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v0, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 566
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 870
    return-void
.end method

.method a(Landroidx/appcompat/app/f$h;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1818
    if-eqz p2, :cond_1

    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    .line 1819
    invoke-interface {v0}, Landroidx/appcompat/widget/w;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1820
    iget-object v0, p1, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/menu/g;)V

    .line 1847
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1825
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroidx/appcompat/app/f$h;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1826
    iget-object v1, p1, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1828
    if-eqz p2, :cond_2

    .line 1829
    iget v0, p1, Landroidx/appcompat/app/f$h;->a:I

    invoke-virtual {p0, v0, p1, v3}, Landroidx/appcompat/app/f;->a(ILandroidx/appcompat/app/f$h;Landroid/view/Menu;)V

    .line 1833
    :cond_2
    iput-boolean v2, p1, Landroidx/appcompat/app/f$h;->m:Z

    .line 1834
    iput-boolean v2, p1, Landroidx/appcompat/app/f$h;->n:Z

    .line 1835
    iput-boolean v2, p1, Landroidx/appcompat/app/f$h;->o:Z

    .line 1838
    iput-object v3, p1, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    .line 1842
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/app/f$h;->q:Z

    .line 1844
    iget-object v0, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    if-ne v0, p1, :cond_0

    .line 1845
    iput-object v3, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .prologue
    .line 1038
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/view/menu/g;Z)V

    .line 1039
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 979
    iput-object p1, p0, Landroidx/appcompat/app/f;->z:Ljava/lang/CharSequence;

    .line 981
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/w;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 984
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Landroidx/appcompat/app/f;->G:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1270
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v2

    .line 1271
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return v0

    .line 1277
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    if-eqz v2, :cond_2

    .line 1278
    iget-object v2, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 1280
    if-eqz v2, :cond_2

    .line 1281
    iget-object v1, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    iput-boolean v0, v1, Landroidx/appcompat/app/f$h;->n:Z

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/f;->M:Landroidx/appcompat/app/f$h;

    if-nez v2, :cond_3

    .line 1293
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v2

    .line 1294
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z

    .line 1295
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 1296
    iput-boolean v1, v2, Landroidx/appcompat/app/f$h;->m:Z

    .line 1297
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 1301
    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1307
    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v1, Landroidx/core/h/d$a;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v1, Landroidx/appcompat/app/g;

    if-eqz v1, :cond_2

    .line 1308
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1309
    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Landroidx/core/h/d;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1325
    :cond_1
    :goto_0
    return v0

    .line 1314
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_3

    .line 1316
    iget-object v1, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    invoke-virtual {v1}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1321
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1323
    if-nez v2, :cond_4

    .line 1325
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/app/f;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1323
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1325
    :cond_5
    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/app/f;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1026
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_0

    .line 1028
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->q()Landroidx/appcompat/view/menu/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->a(Landroid/view/Menu;)Landroidx/appcompat/app/f$h;

    move-result-object v1

    .line 1029
    if-eqz v1, :cond_0

    .line 1030
    iget v1, v1, Landroidx/appcompat/app/f$h;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 1033
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0}, Landroidx/appcompat/app/f;->v()V

    .line 469
    new-instance v1, Landroidx/appcompat/view/g;

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    .line 470
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    .line 472
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    return-object v0

    .line 470
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    goto :goto_0
.end method

.method public b(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    .line 480
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1078
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->q()V

    .line 1079
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    .line 1083
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/f$b;

    if-nez v0, :cond_1

    .line 1085
    new-instance v0, Landroidx/appcompat/app/f$b;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$b;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V

    move-object p1, v0

    .line 1089
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v0, :cond_c

    .line 1091
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1097
    :goto_0
    if-eqz v0, :cond_4

    .line 1098
    iput-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 1223
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_3

    .line 1224
    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    iget-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-interface {v0, v1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/view/b;)V

    .line 1226
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    return-object v0

    .line 1092
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 1100
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v0, :cond_5

    .line 1101
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->o:Z

    if-eqz v0, :cond_8

    .line 1103
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1104
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1105
    sget v5, Landroidx/appcompat/a$a;->actionBarTheme:I

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1108
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    .line 1109
    iget-object v5, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1110
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1111
    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1113
    new-instance v0, Landroidx/appcompat/view/d;

    iget-object v6, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 1114
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1119
    :goto_2
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1120
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroidx/appcompat/a$a;->actionModePopupWindowStyle:I

    invoke-direct {v5, v0, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    .line 1122
    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;I)V

    .line 1124
    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1125
    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1127
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroidx/appcompat/a$a;->actionBarSize:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1129
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 1130
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1129
    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1131
    iget-object v4, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1132
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1133
    new-instance v0, Landroidx/appcompat/app/f$6;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$6;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    .line 1174
    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    .line 1175
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->q()V

    .line 1176
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    .line 1177
    new-instance v4, Landroidx/appcompat/view/e;

    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-direct {v4, v5, v6, p1, v0}, Landroidx/appcompat/view/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V

    .line 1179
    invoke-virtual {v4}, Landroidx/appcompat/view/b;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1180
    invoke-virtual {v4}, Landroidx/appcompat/view/b;->d()V

    .line 1181
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    .line 1182
    iput-object v4, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 1184
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1185
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1186
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/h/u;->m(Landroid/view/View;)Landroidx/core/h/y;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/core/h/y;->a(F)Landroidx/core/h/y;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/h/y;

    .line 1187
    iget-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/h/y;

    new-instance v1, Landroidx/appcompat/app/f$7;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$7;-><init>(Landroidx/appcompat/app/f;)V

    invoke-virtual {v0, v1}, Landroidx/core/h/y;->a(Landroidx/core/h/z;)Landroidx/core/h/y;

    .line 1215
    :cond_6
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1116
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    goto/16 :goto_2

    .line 1164
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    sget v4, Landroidx/appcompat/a$f;->action_mode_bar_stub:I

    .line 1165
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    .line 1166
    if-eqz v0, :cond_5

    .line 1168
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1169
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 1177
    goto :goto_4

    .line 1206
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1207
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1210
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1211
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    goto :goto_5

    .line 1219
    :cond_b
    iput-object v3, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    goto/16 :goto_1

    :cond_c
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    .line 377
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 570
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    .line 571
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 572
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 574
    return-void
.end method

.method b(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .prologue
    .line 1800
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->K:Z

    if-eqz v0, :cond_0

    .line 1811
    :goto_0
    return-void

    .line 1804
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->K:Z

    .line 1805
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0}, Landroidx/appcompat/widget/w;->k()V

    .line 1806
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1807
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_1

    .line 1808
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1810
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->K:Z

    goto :goto_0
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1329
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 1352
    :cond_1
    :goto_0
    return v0

    .line 1331
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/f;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1334
    :sswitch_1
    iget-boolean v2, p0, Landroidx/appcompat/app/f;->N:Z

    .line 1335
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->N:Z

    .line 1337
    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v3

    .line 1338
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroidx/appcompat/app/f$h;->o:Z

    if-eqz v4, :cond_2

    .line 1339
    if-nez v2, :cond_1

    .line 1343
    invoke-virtual {p0, v3, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    goto :goto_0

    .line 1347
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1329
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->Q:Z

    .line 510
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->t()Z

    .line 512
    invoke-static {p0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/e;)V

    .line 513
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 552
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    .line 553
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 554
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 555
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 556
    iget-object v0, p0, Landroidx/appcompat/app/f;->y:Landroidx/appcompat/app/f$c;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 557
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 578
    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 580
    sget-object v0, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/app/f;->R:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_0
    return-void
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1356
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 1369
    :goto_1
    return v0

    .line 1358
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/f;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 1366
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    :goto_2
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->N:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_2

    .line 1356
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 517
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->Q:Z

    .line 519
    invoke-static {p0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/e;)V

    .line 521
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->d(Z)V

    .line 526
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 529
    invoke-direct {p0}, Landroidx/appcompat/app/f;->w()V

    .line 531
    :cond_1
    return-void
.end method

.method public d(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 911
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->l(I)I

    move-result v2

    .line 913
    iget-boolean v3, p0, Landroidx/appcompat/app/f;->p:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 948
    :goto_0
    return v0

    .line 916
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/app/f;->l:Z

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    .line 918
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    .line 921
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 948
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 923
    :sswitch_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()V

    .line 924
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->l:Z

    move v0, v1

    .line 925
    goto :goto_0

    .line 927
    :sswitch_1
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()V

    .line 928
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->m:Z

    move v0, v1

    .line 929
    goto :goto_0

    .line 931
    :sswitch_2
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()V

    .line 932
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->n:Z

    move v0, v1

    .line 933
    goto :goto_0

    .line 935
    :sswitch_3
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()V

    .line 936
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->I:Z

    move v0, v1

    .line 937
    goto :goto_0

    .line 939
    :sswitch_4
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()V

    .line 940
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->J:Z

    move v0, v1

    .line 941
    goto :goto_0

    .line 943
    :sswitch_5
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()V

    .line 944
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->p:Z

    move v0, v1

    .line 945
    goto :goto_0

    .line 921
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public e()V
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_0

    .line 537
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->d(Z)V

    .line 539
    :cond_0
    return-void
.end method

.method e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1000
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 1001
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 1002
    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->e(Z)V

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    if-nez p1, :cond_0

    .line 1008
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    .line 1009
    iget-boolean v1, v0, Landroidx/appcompat/app/f$h;->o:Z

    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 1072
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1074
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->k(I)V

    goto :goto_0
.end method

.method f(I)V
    .locals 2

    .prologue
    .line 1016
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 1018
    if-eqz v0, :cond_0

    .line 1019
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->e(Z)V

    .line 1022
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 587
    invoke-static {p0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/e;)V

    .line 589
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->r:Z

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 593
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->Q:Z

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    .line 596
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->g()V

    .line 601
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/app/f;->w()V

    .line 602
    return-void
.end method

.method g(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1814
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$h;Z)V

    .line 1815
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 1441
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1443
    invoke-static {v0, p0}, Landroidx/core/h/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/f;

    if-nez v0, :cond_0

    .line 1446
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method h(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2005
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    .line 2007
    iget-object v1, v0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_1

    .line 2008
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2009
    iget-object v2, v0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->c(Landroid/os/Bundle;)V

    .line 2010
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2011
    iput-object v1, v0, Landroidx/appcompat/app/f$h;->s:Landroid/os/Bundle;

    .line 2014
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->h()V

    .line 2015
    iget-object v1, v0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->clear()V

    .line 2017
    :cond_1
    iput-boolean v4, v0, Landroidx/appcompat/app/f$h;->r:Z

    .line 2018
    iput-boolean v4, v0, Landroidx/appcompat/app/f$h;->q:Z

    .line 2021
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_3

    .line 2023
    invoke-virtual {p0, v3, v3}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    .line 2024
    if-eqz v0, :cond_3

    .line 2025
    iput-boolean v3, v0, Landroidx/appcompat/app/f$h;->m:Z

    .line 2026
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$h;Landroid/view/KeyEvent;)Z

    .line 2029
    :cond_3
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 2198
    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    return v0
.end method

.method i(I)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2038
    .line 2040
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 2041
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 2042
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2043
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2046
    iget-object v1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2047
    iget-object v1, p0, Landroidx/appcompat/app/f;->Z:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 2048
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/app/f;->Z:Landroid/graphics/Rect;

    .line 2049
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/app/f;->aa:Landroid/graphics/Rect;

    .line 2051
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->Z:Landroid/graphics/Rect;

    .line 2052
    iget-object v4, p0, Landroidx/appcompat/app/f;->aa:Landroid/graphics/Rect;

    .line 2053
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2055
    iget-object v5, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2056
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 2057
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 2059
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2061
    iget-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    if-nez v1, :cond_5

    .line 2062
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    .line 2063
    iget-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/a$c;->abc_input_method_navigation_guard:I

    .line 2064
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2063
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2065
    iget-object v1, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 2079
    :goto_1
    iget-object v4, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 2085
    :goto_2
    iget-boolean v4, p0, Landroidx/appcompat/app/f;->n:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v4, v3

    .line 2095
    :goto_3
    if-eqz v1, :cond_2

    .line 2096
    iget-object v1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v4

    .line 2100
    :goto_4
    iget-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2101
    iget-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2104
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 2056
    goto :goto_0

    .line 2069
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2070
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 2071
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2072
    iget-object v4, p0, Landroidx/appcompat/app/f;->H:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 2079
    goto :goto_2

    .line 2090
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 2092
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v3

    move v4, v2

    goto :goto_3

    .line 2101
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v1, v2

    move v4, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method j(I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 2203
    sparse-switch p1, :sswitch_data_0

    .line 2225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2210
    :sswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 2211
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 2212
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_0

    move p1, v1

    .line 2223
    :goto_0
    :sswitch_1
    return p1

    .line 2218
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->u()Landroidx/appcompat/app/f$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->a()I

    move-result p1

    goto :goto_0

    .line 2220
    :sswitch_2
    invoke-direct {p0}, Landroidx/appcompat/app/f;->E()Landroidx/appcompat/app/f$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->a()I

    move-result p1

    goto :goto_0

    :sswitch_3
    move p1, v1

    .line 2223
    goto :goto_0

    .line 2203
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_3
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
    .end sparse-switch
.end method

.method final k()Landroidx/appcompat/app/a;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method final l()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final m()Landroid/content/Context;
    .locals 2

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 458
    :cond_0
    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 461
    :cond_1
    return-object v0
.end method

.method final n()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 996
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->z:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final o()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1457
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/f;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1465
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 1242
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->D:Z

    return v0
.end method

.method q()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/h/y;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/h/y;

    invoke-virtual {v0}, Landroidx/core/h/y;->b()V

    .line 1249
    :cond_0
    return-void
.end method

.method r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1253
    iget-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v1, :cond_1

    .line 1254
    iget-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-virtual {v1}, Landroidx/appcompat/view/b;->c()V

    .line 1265
    :cond_0
    :goto_0
    return v0

    .line 1259
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v1

    .line 1260
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/appcompat/app/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2133
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/widget/w;

    invoke-interface {v0}, Landroidx/appcompat/widget/w;->k()V

    .line 2137
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 2138
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2139
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    .line 2149
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->q()V

    .line 2151
    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$h;

    move-result-object v0

    .line 2152
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_3

    .line 2153
    iget-object v0, v0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    .line 2155
    :cond_3
    return-void

    .line 2142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 2159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Z)Z

    move-result v0

    return v0
.end method

.method final u()Landroidx/appcompat/app/f$e;
    .locals 2

    .prologue
    .line 2390
    iget-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$e;

    if-nez v0, :cond_0

    .line 2391
    new-instance v0, Landroidx/appcompat/app/f$f;

    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 2392
    invoke-static {v1}, Landroidx/appcompat/app/k;->a(Landroid/content/Context;)Landroidx/appcompat/app/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f$f;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/app/k;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$e;

    .line 2394
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$e;

    return-object v0
.end method
