.class public abstract Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;
.super Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Frag:",
        "Landroidx/fragment/app/Fragment;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseTopBarActivity;"
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFrag;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFrag;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "top_bar_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->a:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->getNewFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->a:Landroidx/fragment/app/Fragment;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->a:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected abstract getNewFragment()Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFrag;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x7f0a02a9

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->a:Landroidx/fragment/app/Fragment;

    const-string v2, "top_bar_fragment"

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    return-void

    .line 37
    :cond_0
    const-class p1, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;

    const-string v0, "Fragment is null"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
