.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "smoothScrollToPosition",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "position",
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
.field final synthetic a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;Landroid/content/Context;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance p2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1$smoothScrollToPosition$smoothScroller$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1$smoothScrollToPosition$smoothScroller$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V

    check-cast p2, Landroidx/recyclerview/widget/g;

    .line 187
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/g;->setTargetPosition(I)V

    .line 188
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1;->a(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method
