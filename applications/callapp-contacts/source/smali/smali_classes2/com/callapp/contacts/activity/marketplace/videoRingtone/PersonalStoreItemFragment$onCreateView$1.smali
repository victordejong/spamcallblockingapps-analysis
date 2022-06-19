.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
        "onChildViewAttachedToWindow",
        "",
        "view",
        "Landroid/view/View;",
        "onChildViewDetachedFromWindow",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;->getSelectedPersonalStoreItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 153
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;->setSelectedPersonalStoreItemIndex(I)V

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSnapOnScrollListener()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;->getSelectedPersonalStoreItemIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getPersonalStoreItemDelegate()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
