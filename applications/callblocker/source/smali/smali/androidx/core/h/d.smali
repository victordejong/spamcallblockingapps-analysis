.class public Landroidx/core/h/d;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/h/d$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Landroidx/core/h/d;->a:Z

    .line 47
    sput-object v1, Landroidx/core/h/d;->b:Ljava/lang/reflect/Method;

    .line 48
    sput-boolean v0, Landroidx/core/h/d;->c:Z

    .line 49
    sput-object v1, Landroidx/core/h/d;->d:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static a(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    sget-boolean v0, Landroidx/core/h/d;->c:Z

    if-nez v0, :cond_0

    .line 144
    :try_start_0
    const-class v0, Landroid/app/Dialog;

    const-string/jumbo v1, "mOnKeyListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/h/d;->d:Ljava/lang/reflect/Field;

    .line 145
    sget-object v0, Landroidx/core/h/d;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :goto_0
    sput-boolean v2, Landroidx/core/h/d;->c:Z

    .line 151
    :cond_0
    sget-object v0, Landroidx/core/h/d;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 153
    :try_start_1
    sget-object v0, Landroidx/core/h/d;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :goto_1
    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 96
    sget-boolean v0, Landroidx/core/h/d;->a:Z

    if-nez v0, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "onMenuKeyEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/h/d;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    :goto_0
    sput-boolean v6, Landroidx/core/h/d;->a:Z

    .line 104
    :cond_0
    sget-object v0, Landroidx/core/h/d;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 106
    :try_start_1
    sget-object v0, Landroidx/core/h/d;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 111
    :goto_1
    return v0

    .line 108
    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    move v0, v1

    .line 111
    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    goto :goto_2

    .line 100
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 121
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 124
    const/16 v4, 0x52

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 125
    invoke-static {v2, p1}, Landroidx/core/h/d;->a(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 134
    invoke-static {v1, p1}, Landroidx/core/h/u;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 137
    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-static {p0}, Landroidx/core/h/d;->a(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 166
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 170
    invoke-static {v1, p1}, Landroidx/core/h/u;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 173
    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 63
    invoke-static {p0, p1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroidx/core/h/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 84
    invoke-interface {p0, p3}, Landroidx/core/h/d$a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 86
    :cond_2
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 87
    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, p3}, Landroidx/core/h/d;->a(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 88
    :cond_3
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_4

    .line 89
    check-cast p2, Landroid/app/Dialog;

    invoke-static {p2, p3}, Landroidx/core/h/d;->a(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 91
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p1, p3}, Landroidx/core/h/u;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 92
    :cond_5
    invoke-interface {p0, p3}, Landroidx/core/h/d$a;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method
