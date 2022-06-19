.class Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

.field final synthetic b:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

.field final synthetic c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 145
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 146
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Delete entry from reminders"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;-><init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;)V

    const v1, 0x7f120567

    const v2, 0x7f120566

    invoke-static {p1, v1, v2, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;IILcom/callapp/contacts/event/listener/Listener;)V

    return-void
.end method
