.class Lcom/callapp/contacts/activity/base/BaseListFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseListFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseListFragment$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseListFragment$5;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5$1;->a:Lcom/callapp/contacts/activity/base/BaseListFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5$1;->a:Lcom/callapp/contacts/activity/base/BaseListFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseListFragment$5;->b:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->b(Lcom/callapp/contacts/activity/base/BaseListFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5$1;->a:Lcom/callapp/contacts/activity/base/BaseListFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseListFragment$5;->b:Lcom/callapp/contacts/activity/base/BaseListFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5$1;->a:Lcom/callapp/contacts/activity/base/BaseListFragment$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseListFragment$5;->b:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getEmptyListViewLoading()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListFragment;->setListEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
