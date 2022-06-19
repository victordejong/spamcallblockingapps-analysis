.class Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$2;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/model/DataChangedInfo;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$2;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->isForeGroundVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$2;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->a(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$2;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Z

    return-void
.end method
