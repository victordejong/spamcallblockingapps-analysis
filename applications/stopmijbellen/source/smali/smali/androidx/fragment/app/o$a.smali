.class public Landroidx/fragment/app/o$a;
.super Landroidx/fragment/app/x;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;
.implements Landroidx/activity/c;
.implements Landroidx/activity/result/d;
.implements Landroidx/fragment/app/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/x<",
        "Landroidx/fragment/app/o;",
        ">;",
        "Landroidx/lifecycle/d0;",
        "Landroidx/activity/c;",
        "Landroidx/activity/result/d;",
        "Landroidx/fragment/app/e0;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    .line 2
    invoke-direct {p0, p1}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/o;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/a0;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    return-object v0
.end method

.method public f()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    sget v1, Lc0/a;->b:I

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->g:Landroidx/activity/result/ActivityResultRegistry;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->e:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroidx/fragment/app/o;->q()V

    return-void
.end method
