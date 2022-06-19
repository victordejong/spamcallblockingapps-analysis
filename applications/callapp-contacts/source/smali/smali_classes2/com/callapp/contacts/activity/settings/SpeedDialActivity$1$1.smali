.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    iget-object v4, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;

    iget-object v4, v4, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-static {v4}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)Ljava/util/List;

    move-result-object v4

    const v5, 0x7f0a06ac

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
