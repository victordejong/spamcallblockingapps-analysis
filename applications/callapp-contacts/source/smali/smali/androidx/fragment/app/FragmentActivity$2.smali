.class final Landroidx/fragment/app/FragmentActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 143
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/f;

    .line 1116
    iget-object v1, v0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v1, v1, Landroidx/fragment/app/h;->e:Landroidx/fragment/app/FragmentManager;

    iget-object v2, v0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/Fragment;)V

    .line 144
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSavedStateRegistry()Landroidx/savedstate/b;

    move-result-object v0

    const-string v1, "android:support:fragments"

    .line 145
    invoke-virtual {v0, v1}, Landroidx/savedstate/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 149
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/f;

    .line 1193
    iget-object v2, v1, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    instance-of v2, v2, Landroidx/lifecycle/ad;

    if-eqz v2, :cond_0

    .line 1198
    iget-object v1, v1, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v1, v1, Landroidx/fragment/app/h;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->a(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
