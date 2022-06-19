.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getContactPlusItemsData()Ljava/util/List;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 120
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->b(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 124
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
