.class Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->a(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Ljava/util/List;Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;)V

    iput-object v1, v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 119
    :cond_0
    const-class v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
