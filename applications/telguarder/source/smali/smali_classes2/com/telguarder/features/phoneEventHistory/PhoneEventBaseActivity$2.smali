.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;
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

    .line 173
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->isMenuVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->startDetailActivityForPhoneEvent(I)V

    :cond_1
    return-void
.end method

.method public onItemLongClick(I)Z
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->cancelDetailActivityStart()V

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 189
    iget-object v2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$200(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    iget-object v2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v3, v2, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v2, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->createArcMenuItemsForSelectedPhoneCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 191
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->getInstance()Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v4, v3, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMenuItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2$1;

    invoke-direct {v5, p0, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2$1;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->getArcMenu(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;)Lcom/capricorn/ArcMenu;

    move-result-object v1

    iput-object v1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    .line 198
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    if-eqz p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$300(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    .line 200
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/UiHelper;->longPressHapticFeedback(Landroid/view/View;)V

    :cond_1
    return v0

    .line 185
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$100(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    return v0
.end method
