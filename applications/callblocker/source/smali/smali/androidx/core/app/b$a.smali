.class final Landroidx/core/app/b$a;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-boolean v0, p0, Landroidx/core/app/b$a;->c:Z

    .line 179
    iput-boolean v0, p0, Landroidx/core/app/b$a;->d:Z

    .line 180
    iput-boolean v0, p0, Landroidx/core/app/b$a;->e:Z

    .line 183
    iput-object p1, p0, Landroidx/core/app/b$a;->b:Landroid/app/Activity;

    .line 184
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroidx/core/app/b$a;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/b$a;->b:Landroid/app/Activity;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/b$a;->d:Z

    .line 235
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Landroidx/core/app/b$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/core/app/b$a;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/core/app/b$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/b$a;->a:Ljava/lang/Object;

    .line 210
    invoke-static {v0, p1}, Landroidx/core/app/b;->a(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/b$a;->e:Z

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/b$a;->a:Ljava/lang/Object;

    .line 215
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroidx/core/app/b$a;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/b$a;->c:Z

    .line 198
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method
