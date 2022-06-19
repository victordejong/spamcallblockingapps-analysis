.class Lcom/callapp/contacts/activity/base/BaseListFragment$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseListFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$2;->a:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$2;->a:Lcom/callapp/contacts/activity/base/BaseListFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseListFragment;->i:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    .line 1040
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;-><init>(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
