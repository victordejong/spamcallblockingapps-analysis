.class public Landroidx/core/h/u;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/h/u$d;,
        Landroidx/core/h/u$a;,
        Landroidx/core/h/u$b;,
        Landroidx/core/h/u$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Z

.field private static f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/core/h/y;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Z

.field private static j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:[I

.field private static l:Landroidx/core/h/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/core/h/u;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 470
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/h/u;->g:Ljava/util/WeakHashMap;

    .line 474
    sput-boolean v2, Landroidx/core/h/u;->i:Z

    .line 1189
    const/16 v0, 0x20

    new-array v0, v0, [I

    sget v1, Landroidx/core/a$c;->accessibility_custom_action_0:I

    aput v1, v0, v2

    sget v1, Landroidx/core/a$c;->accessibility_custom_action_1:I

    aput v1, v0, v3

    const/4 v1, 0x2

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_10:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_11:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_12:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_13:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_14:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_15:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_16:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_17:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_18:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_19:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_20:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_21:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_22:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_23:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_24:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_25:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_26:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_27:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_28:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_29:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_30:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Landroidx/core/a$c;->accessibility_custom_action_31:I

    aput v2, v0, v1

    sput-object v0, Landroidx/core/h/u;->k:[I

    .line 4051
    new-instance v0, Landroidx/core/h/u$a;

    invoke-direct {v0}, Landroidx/core/h/u$a;-><init>()V

    sput-object v0, Landroidx/core/h/u;->l:Landroidx/core/h/u$a;

    return-void
.end method

.method public static A(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 3299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3300
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static B(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 3309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3310
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    .line 3312
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static C(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 3321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 3322
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    .line 3324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static D(Landroid/view/View;)Landroid/view/Display;
    .locals 2

    .prologue
    .line 3420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3421
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3428
    :goto_0
    return-object v0

    .line 3423
    :cond_0
    invoke-static {p0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3424
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3426
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    .line 3428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static E(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3801
    invoke-static {}, Landroidx/core/h/u;->b()Landroidx/core/h/u$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/h/u$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3802
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static F(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3874
    invoke-static {}, Landroidx/core/h/u;->c()Landroidx/core/h/u$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/h/u$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static G(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3914
    invoke-static {}, Landroidx/core/h/u;->d()Landroidx/core/h/u$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/h/u$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3915
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static H(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 907
    sget-boolean v0, Landroidx/core/h/u;->i:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 928
    :goto_0
    return-object v0

    .line 910
    :cond_0
    sget-object v0, Landroidx/core/h/u;->h:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 912
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v2, "mAccessibilityDelegate"

    .line 913
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/h/u;->h:Ljava/lang/reflect/Field;

    .line 914
    sget-object v0, Landroidx/core/h/u;->h:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_1
    :try_start_1
    sget-object v0, Landroidx/core/h/u;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 922
    instance-of v2, v0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v2, :cond_2

    .line 923
    check-cast v0, Landroid/view/View$AccessibilityDelegate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    sput-boolean v3, Landroidx/core/h/u;->i:Z

    move-object v0, v1

    .line 917
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 925
    goto :goto_0

    .line 926
    :catch_1
    move-exception v0

    .line 927
    sput-boolean v3, Landroidx/core/h/u;->i:Z

    move-object v0, v1

    .line 928
    goto :goto_0
.end method

.method private static I(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/h/a/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1298
    sget v0, Landroidx/core/a$c;->tag_accessibility_actions:I

    .line 1299
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1300
    if-nez v0, :cond_0

    .line 1301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    sget v1, Landroidx/core/a$c;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1304
    :cond_0
    return-object v0
.end method

.method private static J(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3267
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 3268
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3269
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3270
    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 744
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 745
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAutofill()I

    move-result v0

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 479
    sget-object v0, Landroidx/core/h/u;->j:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/h/u;->j:Ljava/lang/ThreadLocal;

    .line 482
    :cond_0
    sget-object v0, Landroidx/core/h/u;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 483
    if-nez v0, :cond_1

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 485
    sget-object v1, Landroidx/core/h/u;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 487
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 488
    return-object v0
.end method

.method public static a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;
    .locals 3

    .prologue
    .line 2452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2453
    invoke-static {p1}, Landroidx/core/h/ac;->a(Landroidx/core/h/ac;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 2454
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2455
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2456
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2458
    :cond_0
    invoke-static {v0}, Landroidx/core/h/ac;->a(Ljava/lang/Object;)Landroidx/core/h/ac;

    move-result-object p1

    .line 2460
    :cond_1
    return-object p1
.end method

.method private static a(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 1288
    invoke-static {p1}, Landroidx/core/h/u;->I(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 1289
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1290
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/a/c$a;

    invoke-virtual {v0}, Landroidx/core/h/a/c$a;->a()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 1291
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1295
    :cond_0
    return-void

    .line 1289
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 2245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2246
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2248
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 788
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 789
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 791
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 3373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3374
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 3376
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 1781
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1782
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1786
    :goto_0
    return-void

    .line 1784
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 2589
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 2590
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_2

    .line 2595
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2596
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2597
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 2598
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2599
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2600
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2602
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2608
    :cond_2
    :goto_1
    return-void

    .line 2597
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2605
    :cond_4
    instance-of v0, p0, Landroidx/core/h/t;

    if-eqz v0, :cond_2

    .line 2606
    check-cast p0, Landroidx/core/h/t;

    invoke-interface {p0, p1}, Landroidx/core/h/t;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 2636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 2637
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_2

    .line 2642
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2643
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2644
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 2645
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2646
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2647
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2649
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2655
    :cond_2
    :goto_1
    return-void

    .line 2644
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2652
    :cond_4
    instance-of v0, p0, Landroidx/core/h/t;

    if-eqz v0, :cond_2

    .line 2653
    check-cast p0, Landroidx/core/h/t;

    invoke-interface {p0, p1}, Landroidx/core/h/t;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3285
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 3287
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 2559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2560
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2564
    :goto_0
    return-void

    .line 2562
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroidx/core/h/a/c$a;)V
    .locals 2

    .prologue
    .line 1263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1264
    invoke-static {p0}, Landroidx/core/h/u;->c(Landroid/view/View;)Landroidx/core/h/a;

    .line 1265
    invoke-virtual {p1}, Landroidx/core/h/a/c$a;->a()I

    move-result v0

    invoke-static {v0, p0}, Landroidx/core/h/u;->a(ILandroid/view/View;)V

    .line 1266
    invoke-static {p0}, Landroidx/core/h/u;->I(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/h/u;->g(Landroid/view/View;I)V

    .line 1270
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroidx/core/h/a/c$a;Ljava/lang/CharSequence;Landroidx/core/h/a/f;)V
    .locals 1

    .prologue
    .line 1258
    invoke-virtual {p1, p2, p3}, Landroidx/core/h/a/c$a;->a(Ljava/lang/CharSequence;Landroidx/core/h/a/f;)Landroidx/core/h/a/c$a;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a/c$a;)V

    .line 1259
    return-void
.end method

.method public static a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p1}, Landroidx/core/h/a/c;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 657
    return-void
.end method

.method public static a(Landroid/view/View;Landroidx/core/h/a;)V
    .locals 1

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    invoke-static {p0}, Landroidx/core/h/u;->H(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/h/a$a;

    if-eqz v0, :cond_0

    .line 688
    new-instance p1, Landroidx/core/h/a;

    invoke-direct {p1}, Landroidx/core/h/a;-><init>()V

    .line 690
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 691
    return-void

    .line 690
    :cond_1
    invoke-virtual {p1}, Landroidx/core/h/a;->a()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroidx/core/h/q;)V
    .locals 2

    .prologue
    .line 2421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2422
    if-nez p1, :cond_1

    .line 2423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2427
    :cond_1
    new-instance v0, Landroidx/core/h/u$1;

    invoke-direct {v0, p1}, Landroidx/core/h/u$1;-><init>(Landroidx/core/h/q;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroidx/core/h/s;)V
    .locals 2

    .prologue
    .line 3402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3403
    if-eqz p1, :cond_1

    .line 3404
    invoke-virtual {p1}, Landroidx/core/h/s;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/PointerIcon;

    check-cast v0, Landroid/view/PointerIcon;

    .line 3403
    invoke-virtual {p0, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 3406
    :cond_0
    return-void

    .line 3404
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1010
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1011
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1032
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1033
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2292
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 2299
    :goto_0
    return-void

    .line 2294
    :cond_0
    sget-object v0, Landroidx/core/h/u;->f:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2295
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/h/u;->f:Ljava/util/WeakHashMap;

    .line 2297
    :cond_1
    sget-object v0, Landroidx/core/h/u;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 955
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 956
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 958
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 1154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1155
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 1157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3750
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3751
    const/4 v0, 0x0

    .line 3753
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroidx/core/h/u$d;->a(Landroid/view/View;)Landroidx/core/h/u$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/h/u$d;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)Landroidx/core/h/a;
    .locals 2

    .prologue
    .line 884
    invoke-static {p0}, Landroidx/core/h/u;->H(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 885
    if-nez v0, :cond_0

    .line 886
    const/4 v0, 0x0

    .line 891
    :goto_0
    return-object v0

    .line 888
    :cond_0
    instance-of v1, v0, Landroidx/core/h/a$a;

    if-eqz v1, :cond_1

    .line 889
    check-cast v0, Landroidx/core/h/a$a;

    iget-object v0, v0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    goto :goto_0

    .line 891
    :cond_1
    new-instance v1, Landroidx/core/h/a;

    invoke-direct {v1, v0}, Landroidx/core/h/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;
    .locals 3

    .prologue
    .line 2477
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2478
    invoke-static {p1}, Landroidx/core/h/ac;->a(Landroidx/core/h/ac;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 2479
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2480
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2481
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2483
    :cond_0
    invoke-static {v0}, Landroidx/core/h/ac;->a(Ljava/lang/Object;)Landroidx/core/h/ac;

    move-result-object p1

    .line 2485
    :cond_1
    return-object p1
.end method

.method private static b()Landroidx/core/h/u$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/h/u$b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3806
    new-instance v0, Landroidx/core/h/u$2;

    sget v1, Landroidx/core/a$c;->tag_screen_reader_focusable:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/h/u$2;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1081
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1082
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1087
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1088
    const/4 p1, 0x2

    .line 1091
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2398
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2399
    return-void
.end method

.method static b(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3758
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3759
    const/4 v0, 0x0

    .line 3761
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroidx/core/h/u$d;->a(Landroid/view/View;)Landroidx/core/h/u$d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/h/u$d;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method static c(Landroid/view/View;)Landroidx/core/h/a;
    .locals 1

    .prologue
    .line 896
    invoke-static {p0}, Landroidx/core/h/u;->b(Landroid/view/View;)Landroidx/core/h/a;

    move-result-object v0

    .line 897
    if-nez v0, :cond_0

    .line 898
    new-instance v0, Landroidx/core/h/a;

    invoke-direct {v0}, Landroidx/core/h/a;-><init>()V

    .line 900
    :cond_0
    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 901
    return-object v0
.end method

.method private static c()Landroidx/core/h/u$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/h/u$b",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3878
    new-instance v0, Landroidx/core/h/u$3;

    sget v1, Landroidx/core/a$c;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/h/u$3;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static c(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1281
    invoke-static {p1, p0}, Landroidx/core/h/u;->a(ILandroid/view/View;)V

    .line 1282
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/h/u;->g(Landroid/view/View;I)V

    .line 1285
    :cond_0
    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 3931
    invoke-static {}, Landroidx/core/h/u;->d()Landroidx/core/h/u$b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/core/h/u$b;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 3932
    return-void
.end method

.method private static d()Landroidx/core/h/u$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/h/u$b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3935
    new-instance v0, Landroidx/core/h/u$4;

    sget v1, Landroidx/core/a$c;->tag_accessibility_heading:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/h/u$4;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static d(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1729
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1730
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1732
    :cond_0
    return-void
.end method

.method public static d(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 941
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 942
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    .line 944
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 970
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 971
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public static e(Landroid/view/View;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 3177
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3204
    :cond_0
    :goto_0
    return-void

    .line 3178
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3179
    invoke-static {}, Landroidx/core/h/u;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 3182
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3183
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 3184
    check-cast v0, Landroid/view/View;

    .line 3185
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3188
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3189
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3188
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3193
    :goto_1
    invoke-static {p0, p1}, Landroidx/core/h/u;->h(Landroid/view/View;I)V

    .line 3197
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3198
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3197
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3199
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3188
    goto :goto_1

    .line 3202
    :cond_3
    invoke-static {p0, p1}, Landroidx/core/h/u;->h(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static f(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1054
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1055
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 1057
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/view/View;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 3225
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3252
    :cond_0
    :goto_0
    return-void

    .line 3226
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3227
    invoke-static {}, Landroidx/core/h/u;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 3230
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3231
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 3232
    check-cast v0, Landroid/view/View;

    .line 3233
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3236
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3237
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3236
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3241
    :goto_1
    invoke-static {p0, p1}, Landroidx/core/h/u;->i(Landroid/view/View;I)V

    .line 3245
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3246
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3245
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3247
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3236
    goto :goto_1

    .line 3250
    :cond_3
    invoke-static {p0, p1}, Landroidx/core/h/u;->i(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static g(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1516
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 1518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 4026
    .line 4027
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4028
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4049
    :cond_0
    :goto_0
    return-void

    .line 4031
    :cond_1
    invoke-static {p0}, Landroidx/core/h/u;->F(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 4034
    :goto_1
    invoke-static {p0}, Landroidx/core/h/u;->h(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    .line 4035
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 4036
    :cond_2
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 4037
    if-eqz v0, :cond_4

    const/16 v0, 0x20

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4039
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4040
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 4031
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 4037
    :cond_4
    const/16 v0, 0x800

    goto :goto_2

    .line 4041
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4043
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4044
    :catch_0
    move-exception v0

    .line 4045
    const-string/jumbo v1, "ViewCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static h(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1694
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    .line 1696
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 3207
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3208
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3209
    invoke-static {p0}, Landroidx/core/h/u;->J(Landroid/view/View;)V

    .line 3211
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3212
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3213
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->J(Landroid/view/View;)V

    .line 3216
    :cond_0
    return-void
.end method

.method public static i(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1744
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1745
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 1747
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method private static i(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 3255
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3256
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3257
    invoke-static {p0}, Landroidx/core/h/u;->J(Landroid/view/View;)V

    .line 3259
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3260
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3261
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->J(Landroid/view/View;)V

    .line 3264
    :cond_0
    return-void
.end method

.method public static j(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1760
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1761
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    .line 1763
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method public static k(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1904
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1905
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    .line 1927
    :goto_0
    return v0

    .line 1908
    :cond_0
    sget-boolean v0, Landroidx/core/h/u;->c:Z

    if-nez v0, :cond_1

    .line 1910
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/h/u;->b:Ljava/lang/reflect/Field;

    .line 1911
    sget-object v0, Landroidx/core/h/u;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1915
    :goto_1
    sput-boolean v2, Landroidx/core/h/u;->c:Z

    .line 1918
    :cond_1
    sget-object v0, Landroidx/core/h/u;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1920
    :try_start_1
    sget-object v0, Landroidx/core/h/u;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 1921
    :catch_0
    move-exception v0

    .line 1927
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1912
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static l(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1938
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1939
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 1961
    :goto_0
    return v0

    .line 1942
    :cond_0
    sget-boolean v0, Landroidx/core/h/u;->e:Z

    if-nez v0, :cond_1

    .line 1944
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/h/u;->d:Ljava/lang/reflect/Field;

    .line 1945
    sget-object v0, Landroidx/core/h/u;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1949
    :goto_1
    sput-boolean v2, Landroidx/core/h/u;->e:Z

    .line 1952
    :cond_1
    sget-object v0, Landroidx/core/h/u;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1954
    :try_start_1
    sget-object v0, Landroidx/core/h/u;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 1955
    :catch_0
    move-exception v0

    .line 1961
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1946
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static m(Landroid/view/View;)Landroidx/core/h/y;
    .locals 2

    .prologue
    .line 1972
    sget-object v0, Landroidx/core/h/u;->g:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 1973
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/h/u;->g:Ljava/util/WeakHashMap;

    .line 1975
    :cond_0
    sget-object v0, Landroidx/core/h/u;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/y;

    .line 1976
    if-nez v0, :cond_1

    .line 1977
    new-instance v0, Landroidx/core/h/y;

    invoke-direct {v0, p0}, Landroidx/core/h/y;-><init>(Landroid/view/View;)V

    .line 1978
    sget-object v1, Landroidx/core/h/u;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    :cond_1
    return-object v0
.end method

.method public static n(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 2256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2257
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 2259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2314
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 2319
    :goto_0
    return-object v0

    .line 2316
    :cond_0
    sget-object v0, Landroidx/core/h/u;->f:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2317
    const/4 v0, 0x0

    goto :goto_0

    .line 2319
    :cond_1
    sget-object v0, Landroidx/core/h/u;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static p(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 2326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2327
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    .line 2329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 2338
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 2342
    :cond_0
    :goto_0
    return-void

    .line 2339
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2340
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    goto :goto_0
.end method

.method public static r(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2382
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2383
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    .line 2385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static s(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2533
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2534
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    .line 2536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2547
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v0

    .line 2549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 2573
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2574
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2576
    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroidx/core/h/t;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/h/t;

    .line 2577
    invoke-interface {p0}, Landroidx/core/h/t;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 2618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2619
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 2621
    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroidx/core/h/t;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/h/t;

    .line 2622
    invoke-interface {p0}, Landroidx/core/h/t;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2698
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    .line 2703
    :goto_0
    return v0

    .line 2700
    :cond_0
    instance-of v0, p0, Landroidx/core/h/i;

    if-eqz v0, :cond_1

    .line 2701
    check-cast p0, Landroidx/core/h/i;

    invoke-interface {p0}, Landroidx/core/h/i;->isNestedScrollingEnabled()Z

    move-result v0

    goto :goto_0

    .line 2703
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static x(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2739
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 2743
    :cond_0
    :goto_0
    return-void

    .line 2740
    :cond_1
    instance-of v0, p0, Landroidx/core/h/i;

    if-eqz v0, :cond_0

    .line 2741
    check-cast p0, Landroidx/core/h/i;

    invoke-interface {p0}, Landroidx/core/h/i;->stopNestedScroll()V

    goto :goto_0
.end method

.method public static y(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 3115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3116
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    .line 3118
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static z(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 3146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3147
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    .line 3149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
