.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateCallList(Landroid/telecom/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$3;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$3;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$3;->a:Lcom/callapp/framework/phone/Phone;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;)V

    return-void
.end method
