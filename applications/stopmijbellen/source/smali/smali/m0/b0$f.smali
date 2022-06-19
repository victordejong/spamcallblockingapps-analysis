.class public Lm0/b0$f;
.super Lm0/b0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static h:Z = false

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/reflect/Field;

.field public static l:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Lf0/b;

.field public e:Lf0/b;

.field public f:Lm0/b0;

.field public g:Lf0/b;


# direct methods
.method public constructor <init>(Lm0/b0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm0/b0$k;-><init>(Lm0/b0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lm0/b0$f;->e:Lf0/b;

    .line 3
    iput-object p2, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private p(Landroid/view/View;)Lf0/b;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_5

    .line 2
    sget-boolean v0, Lm0/b0$f;->h:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lm0/b0$f;->q()V

    .line 4
    :cond_0
    sget-object v0, Lm0/b0$f;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Lm0/b0$f;->j:Ljava/lang/Class;

    if-eqz v2, :cond_4

    sget-object v2, Lm0/b0$f;->k:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "WindowInsetsCompat"

    const-string v0, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    .line 6
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 7
    :cond_2
    sget-object v0, Lm0/b0$f;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    sget-object v0, Lm0/b0$f;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    .line 9
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, p1}, Lf0/b;->a(IIII)Lf0/b;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    :cond_4
    :goto_0
    return-object v1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static q()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lm0/b0$f;->i:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lm0/b0$f;->j:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lm0/b0$f;->k:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lm0/b0$f;->l:Ljava/lang/reflect/Field;

    .line 6
    sget-object v1, Lm0/b0$f;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    sget-object v1, Lm0/b0$f;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    .line 9
    :goto_0
    sput-boolean v0, Lm0/b0$f;->h:Z

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm0/b0$f;->p(Landroid/view/View;)Lf0/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lf0/b;->e:Lf0/b;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lm0/b0$f;->r(Lf0/b;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm0/b0$k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lm0/b0$f;

    .line 3
    iget-object v0, p0, Lm0/b0$f;->g:Lf0/b;

    iget-object p1, p1, Lm0/b0$f;->g:Lf0/b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i()Lf0/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lm0/b0$f;->e:Lf0/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Lf0/b;->a(IIII)Lf0/b;

    move-result-object v0

    iput-object v0, p0, Lm0/b0$f;->e:Lf0/b;

    .line 8
    :cond_0
    iget-object v0, p0, Lm0/b0$f;->e:Lf0/b;

    return-object v0
.end method

.method public j(IIII)Lm0/b0;
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Lm0/b0;->i(Landroid/view/WindowInsets;)Lm0/b0;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 3
    new-instance v1, Lm0/b0$d;

    invoke-direct {v1, v0}, Lm0/b0$d;-><init>(Lm0/b0;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 4
    new-instance v1, Lm0/b0$c;

    invoke-direct {v1, v0}, Lm0/b0$c;-><init>(Lm0/b0;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lm0/b0$b;

    invoke-direct {v1, v0}, Lm0/b0$b;-><init>(Lm0/b0;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lm0/b0$f;->i()Lf0/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lm0/b0;->f(Lf0/b;IIII)Lf0/b;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Lm0/b0$e;->d(Lf0/b;)V

    .line 8
    invoke-virtual {p0}, Lm0/b0$k;->g()Lf0/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lm0/b0;->f(Lf0/b;IIII)Lf0/b;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Lm0/b0$e;->c(Lf0/b;)V

    .line 10
    invoke-virtual {v1}, Lm0/b0$e;->b()Lm0/b0;

    move-result-object p1

    return-object p1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public m([Lf0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/b0$f;->d:[Lf0/b;

    return-void
.end method

.method public n(Lm0/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/b0$f;->f:Lm0/b0;

    return-void
.end method

.method public r(Lf0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/b0$f;->g:Lf0/b;

    return-void
.end method
