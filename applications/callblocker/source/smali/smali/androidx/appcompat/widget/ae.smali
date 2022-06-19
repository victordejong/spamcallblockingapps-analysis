.class public Landroidx/appcompat/widget/ae;
.super Landroidx/appcompat/widget/ac;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/widget/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ae$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private b:Landroidx/appcompat/widget/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 61
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ae;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v0, "MenuPopupWindow"

    const-string/jumbo v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroidx/appcompat/widget/z;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroidx/appcompat/widget/ae$a;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/ae$a;-><init>(Landroid/content/Context;Z)V

    .line 78
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ae$a;->setHoverListener(Landroidx/appcompat/widget/ad;)V

    .line 79
    return-object v0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->b:Landroidx/appcompat/widget/ad;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->b:Landroidx/appcompat/widget/ad;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/ad;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V

    .line 130
    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/widget/ad;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Landroidx/appcompat/widget/ae;->b:Landroidx/appcompat/widget/ad;

    .line 96
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->g:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 86
    :cond_0
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->b:Landroidx/appcompat/widget/ad;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->b:Landroidx/appcompat/widget/ad;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/ad;->b(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V

    .line 122
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->g:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 92
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 5

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 104
    sget-object v0, Landroidx/appcompat/widget/ae;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/ae;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/widget/ae;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v0, "MenuPopupWindow"

    const-string/jumbo v1, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    goto :goto_0
.end method
