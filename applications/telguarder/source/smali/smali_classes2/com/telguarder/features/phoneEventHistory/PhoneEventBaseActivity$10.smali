.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->showContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 479
    sget-boolean v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->active:Z

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    iget-object v2, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v3}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$1100(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;-><init>(Ljava/util/List;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;)V

    iput-object v1, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    .line 482
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyDataSetChanged()V

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$900(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$1000(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$1200(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    .line 490
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-boolean v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->spamFilter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$1300(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    :cond_1
    return-void
.end method
