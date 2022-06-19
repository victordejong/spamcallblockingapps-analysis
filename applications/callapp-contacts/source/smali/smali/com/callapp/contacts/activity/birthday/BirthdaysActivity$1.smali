.class Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-ne p1, v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->isForeGroundVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)V

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    :cond_1
    return-void
.end method
