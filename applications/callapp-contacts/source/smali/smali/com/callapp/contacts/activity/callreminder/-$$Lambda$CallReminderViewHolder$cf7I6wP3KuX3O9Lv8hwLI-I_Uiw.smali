.class public final synthetic Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

.field public final synthetic f$2:Lcom/callapp/contacts/action/Action$ContextType;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$0:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$1:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$2:Lcom/callapp/contacts/action/Action$ContextType;

    iput-object p4, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$0:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$1:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$2:Lcom/callapp/contacts/action/Action$ContextType;

    iget-object v3, p0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->lambda$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
