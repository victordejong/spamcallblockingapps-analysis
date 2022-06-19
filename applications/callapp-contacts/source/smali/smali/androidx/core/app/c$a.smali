.class final Landroidx/core/app/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field private b:Landroid/app/Activity;

.field private final c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Landroidx/core/app/c$a;->d:Z

    .line 187
    iput-boolean v0, p0, Landroidx/core/app/c$a;->e:Z

    .line 191
    iput-boolean v0, p0, Landroidx/core/app/c$a;->f:Z

    .line 194
    iput-object p1, p0, Landroidx/core/app/c$a;->b:Landroid/app/Activity;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroidx/core/app/c$a;->c:I

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/core/app/c$a;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Landroidx/core/app/c$a;->b:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Landroidx/core/app/c$a;->e:Z

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 218
    iget-boolean v0, p0, Landroidx/core/app/c$a;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/core/app/c$a;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/core/app/c$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/c$a;->a:Ljava/lang/Object;

    iget v1, p0, Landroidx/core/app/c$a;->c:I

    .line 222
    invoke-static {v0, v1, p1}, Landroidx/core/app/c;->a(Ljava/lang/Object;ILandroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Landroidx/core/app/c$a;->f:Z

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Landroidx/core/app/c$a;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/core/app/c$a;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Landroidx/core/app/c$a;->d:Z

    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
