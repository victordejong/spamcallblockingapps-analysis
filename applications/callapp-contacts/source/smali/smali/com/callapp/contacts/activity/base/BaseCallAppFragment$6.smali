.class Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->setData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;Ljava/lang/Object;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->access$200(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)Landroidx/recyclerview/widget/RecyclerView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v1, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->access$300(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    .line 2665
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    :cond_0
    return-void

    .line 342
    :cond_1
    const-class v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
