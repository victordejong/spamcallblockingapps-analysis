.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 2208
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$2;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$2;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 2211
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$2;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;)V

    return-void
.end method
