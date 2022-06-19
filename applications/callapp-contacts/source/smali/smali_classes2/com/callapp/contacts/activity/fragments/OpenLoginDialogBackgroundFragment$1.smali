.class public Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment$1;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;I)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment$1;->b:Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;

    iput p3, p0, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment$1;->a:I

    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment$1;->b:Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/callapp/contacts/event/listener/BackgroundFragmentListener;

    if-eqz v1, :cond_0

    .line 30
    check-cast v0, Lcom/callapp/contacts/event/listener/BackgroundFragmentListener;

    iget v1, p0, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/event/listener/BackgroundFragmentListener;->onComplete(Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->c()V

    return-void
.end method
