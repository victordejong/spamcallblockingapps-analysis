.class public final Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$onCreateView$2;
.super Landroidx/recyclerview/widget/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$onCreateView$2",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "onChanged",
        "",
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
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$onCreateView$2;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 79
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->d:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;->getSelectedVideoRingtoneIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$onCreateView$2;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->d:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;->getSelectedVideoRingtoneIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_0
    return-void
.end method
