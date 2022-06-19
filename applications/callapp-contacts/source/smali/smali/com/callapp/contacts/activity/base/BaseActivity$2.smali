.class Lcom/callapp/contacts/activity/base/BaseActivity$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity$2;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 546
    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$2;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseActivity;->setForeGroundVisible(Z)V

    :cond_0
    return-void
.end method
