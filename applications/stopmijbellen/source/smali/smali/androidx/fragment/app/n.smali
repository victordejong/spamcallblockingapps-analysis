.class public Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/o;

    iget-object p1, p1, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, p1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroidx/fragment/app/a0;->b(Landroidx/fragment/app/x;Landroidx/fragment/app/t;Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/o;

    .line 4
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/b;

    .line 5
    iget-object p1, p1, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    const-string v0, "android:support:fragments"

    .line 6
    invoke-virtual {p1, v0}, Landroidx/savedstate/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 9
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    instance-of v1, v0, Landroidx/lifecycle/d0;

    if-eqz v1, :cond_0

    .line 10
    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->b0(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
