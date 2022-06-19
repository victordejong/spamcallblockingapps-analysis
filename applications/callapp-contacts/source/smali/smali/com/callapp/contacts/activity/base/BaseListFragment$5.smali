.class Lcom/callapp/contacts/activity/base/BaseListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseListFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseListFragment;I)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5;->b:Lcom/callapp/contacts/activity/base/BaseListFragment;

    iput p2, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 313
    iget v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$5;->b:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getEmptyListLoaded()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListFragment;->setListEmptyView(Landroid/view/View;)V

    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseListFragment$5$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/base/BaseListFragment$5$1;-><init>(Lcom/callapp/contacts/activity/base/BaseListFragment$5;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
