.class public Landroidx/activity/b;
.super Landroidx/core/app/e;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/activity/d;
.implements Landroidx/lifecycle/h;
.implements Landroidx/lifecycle/v;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/i;

.field private final b:Landroidx/savedstate/b;

.field private c:Landroidx/lifecycle/u;

.field private final d:Landroidx/activity/OnBackPressedDispatcher;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x13

    .line 84
    invoke-direct {p0}, Landroidx/core/app/e;-><init>()V

    .line 61
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/activity/b;->a:Landroidx/lifecycle/i;

    .line 63
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    .line 68
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/b$1;

    invoke-direct {v1, p0}, Landroidx/activity/b$1;-><init>(Landroidx/activity/b;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    .line 85
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/e;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 94
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/e;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/b;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/e;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/b;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 121
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/e;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    .line 123
    :cond_2
    return-void
.end method

.method static synthetic a(Landroidx/activity/b;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroidx/core/app/e;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public C_()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Landroidx/lifecycle/e;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroidx/activity/b;->a:Landroidx/lifecycle/i;

    return-object v0
.end method

.method public c()Landroidx/lifecycle/u;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Landroidx/activity/b;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/u;

    if-nez v0, :cond_2

    .line 263
    invoke-virtual {p0}, Landroidx/activity/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/b$a;

    .line 264
    if-eqz v0, :cond_1

    .line 266
    iget-object v0, v0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/u;

    iput-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/u;

    .line 268
    :cond_1
    iget-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/u;

    if-nez v0, :cond_2

    .line 269
    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0}, Landroidx/lifecycle/u;-><init>()V

    iput-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/u;

    .line 272
    :cond_2
    iget-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/u;

    return-object v0
.end method

.method public final d()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final e()Landroidx/savedstate/a;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    invoke-virtual {v0}, Landroidx/savedstate/b;->a()Landroidx/savedstate/a;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroidx/core/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 151
    invoke-static {p0}, Landroidx/lifecycle/q;->a(Landroid/app/Activity;)V

    .line 152
    iget v0, p0, Landroidx/activity/b;->e:I

    if-eqz v0, :cond_0

    .line 153
    iget v0, p0, Landroidx/activity/b;->e:I

    invoke-virtual {p0, v0}, Landroidx/activity/b;->setContentView(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Landroidx/activity/b;->C_()Ljava/lang/Object;

    move-result-object v2

    .line 178
    iget-object v1, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/u;

    .line 179
    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/activity/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/b$a;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget-object v0, v0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/u;

    move-object v1, v0

    .line 189
    :cond_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 190
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    .line 193
    :cond_1
    new-instance v0, Landroidx/activity/b$a;

    invoke-direct {v0}, Landroidx/activity/b$a;-><init>()V

    .line 194
    iput-object v2, v0, Landroidx/activity/b$a;->a:Ljava/lang/Object;

    .line 195
    iput-object v1, v0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/u;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/e;

    move-result-object v0

    .line 161
    instance-of v1, v0, Landroidx/lifecycle/i;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$b;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method
