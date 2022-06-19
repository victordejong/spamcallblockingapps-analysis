.class final Landroidx/transition/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;I)I
    .locals 7

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(I)I

    move-result p0

    return p0

    .line 86
    :cond_0
    sget-boolean v0, Landroidx/transition/ad;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 88
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v4, "getChildDrawingOrder"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    sput-object v0, Landroidx/transition/ad;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    sput-boolean v3, Landroidx/transition/ad;->c:Z

    .line 96
    :cond_1
    sget-object v0, Landroidx/transition/ad;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 98
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_2
    return p1
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/transition/ac;
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Landroidx/transition/ab;

    invoke-direct {v0, p0}, Landroidx/transition/ab;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    .line 1032
    :cond_0
    invoke-static {p0}, Landroidx/transition/af;->c(Landroid/view/View;)Landroidx/transition/af;

    move-result-object p0

    check-cast p0, Landroidx/transition/aa;

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void

    .line 58
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 1068
    sget-boolean v0, Landroidx/transition/ad;->a:Z

    if-eqz v0, :cond_1

    .line 1072
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1074
    :catch_0
    sput-boolean v2, Landroidx/transition/ad;->a:Z

    :cond_1
    return-void

    .line 2046
    :cond_2
    sget-object v0, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 2047
    new-instance v0, Landroidx/transition/ae$1;

    invoke-direct {v0}, Landroidx/transition/ae$1;-><init>()V

    .line 2053
    sput-object v0, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2054
    sget-object v0, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2055
    sget-object v0, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2056
    sget-object v0, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2057
    sget-object v0, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_3
    if-eqz p1, :cond_7

    .line 2061
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2063
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2114
    sget-boolean v0, Landroidx/transition/ae;->e:Z

    if-nez v0, :cond_4

    .line 2116
    :try_start_1
    const-class v0, Landroid/animation/LayoutTransition;

    const-string v3, "cancel"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2117
    sput-object v0, Landroidx/transition/ae;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2121
    :catch_1
    sput-boolean v1, Landroidx/transition/ae;->e:Z

    .line 2123
    :cond_4
    sget-object v0, Landroidx/transition/ae;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 2125
    :try_start_2
    sget-object v0, Landroidx/transition/ae;->d:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    nop

    .line 2066
    :cond_5
    :goto_0
    sget-object v0, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    if-eq p1, v0, :cond_6

    .line 2067
    sget v0, Landroidx/transition/o$a;->transition_layout_save:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2071
    :cond_6
    sget-object p1, Landroidx/transition/ae;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    .line 2074
    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2076
    sget-boolean p1, Landroidx/transition/ae;->c:Z

    if-nez p1, :cond_8

    .line 2078
    :try_start_3
    const-class p1, Landroid/view/ViewGroup;

    const-string v0, "mLayoutSuppressed"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 2079
    sput-object p1, Landroidx/transition/ae;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2083
    :catch_3
    sput-boolean v1, Landroidx/transition/ae;->c:Z

    .line 2086
    :cond_8
    sget-object p1, Landroidx/transition/ae;->b:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_a

    .line 2088
    :try_start_4
    sget-object p1, Landroidx/transition/ae;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz p1, :cond_9

    .line 2090
    :try_start_5
    sget-object v0, Landroidx/transition/ae;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_9
    move v2, p1

    goto :goto_1

    :catch_5
    nop

    :cond_a
    :goto_1
    if-eqz v2, :cond_b

    .line 2097
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2100
    :cond_b
    sget p1, Landroidx/transition/o$a;->transition_layout_save:I

    .line 2101
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/LayoutTransition;

    if-eqz p1, :cond_c

    .line 2103
    sget v0, Landroidx/transition/o$a;->transition_layout_save:I

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2104
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_c
    return-void
.end method
