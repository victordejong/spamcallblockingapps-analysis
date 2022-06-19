.class Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;
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

.field final synthetic b:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;->b:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3$1;-><init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->a(Landroid/content/Context;IJLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method
