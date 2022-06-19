.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppBarManager;->setHasImageDrawable(Z)V

    .line 707
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    const v1, 0x7f0601f1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 708
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppBarManager;->getToolbarBackground()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$k2a2tcxoN3p73afYIGt6VVKpnbE(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 705
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$9$1$k2a2tcxoN3p73afYIGt6VVKpnbE;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$9$1$k2a2tcxoN3p73afYIGt6VVKpnbE;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9$1;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method
