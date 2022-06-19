.class public Landroidx/appcompat/app/g;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/appcompat/app/d;


# instance fields
.field private a:Landroidx/appcompat/app/e;

.field private final b:Landroidx/core/h/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p1, p2}, Landroidx/appcompat/app/g;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance v0, Landroidx/appcompat/app/g$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/g$1;-><init>(Landroidx/appcompat/app/g;)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->b:Landroidx/core/h/d$a;

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    .line 61
    invoke-static {p1, p2}, Landroidx/appcompat/app/g;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->a(I)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->a(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 180
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 182
    :cond_0
    return p1
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroidx/appcompat/view/b;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->d(I)Z

    move-result v0

    return v0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method public b()Landroidx/appcompat/app/e;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/app/e;

    if-nez v0, :cond_0

    .line 170
    invoke-static {p0, p0}, Landroidx/appcompat/app/e;->a(Landroid/app/Dialog;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/app/e;

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/app/e;

    return-object v0
.end method

.method public b(Landroidx/appcompat/view/b;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 207
    iget-object v1, p0, Landroidx/appcompat/app/g;->b:Landroidx/core/h/d$a;

    invoke-static {v1, v0, p0, p1}, Landroidx/core/h/d;->a(Landroidx/core/h/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->f()V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->h()V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->d()V

    .line 136
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->c(I)V

    .line 96
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->a(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method
