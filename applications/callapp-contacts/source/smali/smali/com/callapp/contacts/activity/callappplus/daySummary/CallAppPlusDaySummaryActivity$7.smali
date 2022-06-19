.class Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Ljava/util/List;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;)V

    iput-object v1, v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 193
    :cond_0
    const-class v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
