.class Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker$1;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker$1;->a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker$1;->a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Z)Z

    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker$1;->a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Z)Z

    return-void

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker$1;->a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Z)Z

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
