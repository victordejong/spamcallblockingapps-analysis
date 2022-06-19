.class final Landroidx/transition/ChangeTransform$a;
.super Landroidx/transition/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/transition/f;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/transition/f;)V
    .locals 0

    .line 525
    invoke-direct {p0}, Landroidx/transition/t;-><init>()V

    .line 526
    iput-object p1, p0, Landroidx/transition/ChangeTransform$a;->a:Landroid/view/View;

    .line 527
    iput-object p2, p0, Landroidx/transition/ChangeTransform$a;->b:Landroidx/transition/f;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/transition/Transition;)V
    .locals 7

    .line 532
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    .line 533
    iget-object p1, p0, Landroidx/transition/ChangeTransform$a;->a:Landroid/view/View;

    .line 1041
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_1

    .line 1113
    sget-boolean v0, Landroidx/transition/h;->c:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 1115
    :try_start_0
    invoke-static {}, Landroidx/transition/h;->a()V

    .line 1116
    sget-object v0, Landroidx/transition/h;->a:Ljava/lang/Class;

    const-string v4, "removeGhost"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1117
    sput-object v0, Landroidx/transition/h;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :catch_0
    sput-boolean v3, Landroidx/transition/h;->c:Z

    .line 1059
    :cond_0
    sget-object v0, Landroidx/transition/h;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 1061
    :try_start_1
    sget-object v0, Landroidx/transition/h;->b:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1065
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1045
    :cond_1
    invoke-static {p1}, Landroidx/transition/i;->a(Landroid/view/View;)V

    .line 534
    :catch_2
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$a;->a:Landroid/view/View;

    sget v0, Landroidx/transition/o$a;->transition_transform:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 535
    iget-object p1, p0, Landroidx/transition/ChangeTransform$a;->a:Landroid/view/View;

    sget v0, Landroidx/transition/o$a;->parent_matrix:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 540
    iget-object v0, p0, Landroidx/transition/ChangeTransform$a;->b:Landroidx/transition/f;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroidx/transition/f;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 545
    iget-object v0, p0, Landroidx/transition/ChangeTransform$a;->b:Landroidx/transition/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/transition/f;->setVisibility(I)V

    return-void
.end method
