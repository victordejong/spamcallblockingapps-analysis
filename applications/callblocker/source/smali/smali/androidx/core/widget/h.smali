.class public final Landroidx/core/widget/h;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-boolean v0, Landroidx/core/widget/h;->b:Z

    if-nez v0, :cond_2

    .line 160
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/h;->a:Ljava/lang/reflect/Method;

    .line 162
    sget-object v0, Landroidx/core/widget/h;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    :goto_1
    sput-boolean v5, Landroidx/core/widget/h;->b:Z

    .line 168
    :cond_2
    sget-object v0, Landroidx/core/widget/h;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 170
    :try_start_1
    sget-object v0, Landroidx/core/widget/h;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 2

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 81
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {p1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    .line 72
    invoke-static {p4, v0}, Landroidx/core/h/c;->a(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 74
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 79
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 93
    sget-boolean v0, Landroidx/core/widget/h;->d:Z

    if-nez v0, :cond_2

    .line 95
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "mOverlapAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/h;->c:Ljava/lang/reflect/Field;

    .line 96
    sget-object v0, Landroidx/core/widget/h;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_1
    sput-boolean v3, Landroidx/core/widget/h;->d:Z

    .line 102
    :cond_2
    sget-object v0, Landroidx/core/widget/h;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 104
    :try_start_1
    sget-object v0, Landroidx/core/widget/h;->c:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string/jumbo v1, "PopupWindowCompatApi21"

    const-string/jumbo v2, "Could not set overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    const-string/jumbo v1, "PopupWindowCompatApi21"

    const-string/jumbo v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
