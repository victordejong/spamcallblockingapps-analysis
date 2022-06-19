.class final Landroidx/transition/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/f;


# static fields
.field static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static b:Ljava/lang/reflect/Method;

.field static c:Z

.field private static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Z


# instance fields
.field private final g:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroidx/transition/h;->g:Landroid/view/View;

    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/f;
    .locals 8

    .line 1099
    sget-boolean v0, Landroidx/transition/h;->f:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 1101
    :try_start_0
    invoke-static {}, Landroidx/transition/h;->a()V

    .line 1102
    sget-object v0, Landroidx/transition/h;->a:Ljava/lang/Class;

    const-string v5, "addGhost"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v6, v2

    const-class v7, Landroid/view/ViewGroup;

    aput-object v7, v6, v4

    const-class v7, Landroid/graphics/Matrix;

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1104
    sput-object v0, Landroidx/transition/h;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :catch_0
    sput-boolean v4, Landroidx/transition/h;->f:Z

    .line 44
    :cond_0
    sget-object v0, Landroidx/transition/h;->e:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 46
    :try_start_1
    new-instance v6, Landroidx/transition/h;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    .line 47
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-direct {v6, p0}, Landroidx/transition/h;-><init>(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    :catch_1
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    :cond_1
    return-object v5
.end method

.method static a()V
    .locals 1

    .line 88
    sget-boolean v0, Landroidx/transition/h;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.view.GhostView"

    .line 90
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/transition/h;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    .line 94
    sput-boolean v0, Landroidx/transition/h;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/transition/h;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
