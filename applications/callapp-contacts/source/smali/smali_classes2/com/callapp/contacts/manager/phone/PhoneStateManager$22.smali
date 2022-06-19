.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->registerForContactDataChanges(Lcom/callapp/contacts/model/call/CallData;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:J

.field final synthetic c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;J)V
    .locals 0

    .line 2475
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->a:Lcom/callapp/contacts/model/call/CallData;

    iput-wide p3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->b:J

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 8

    .line 2478
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v0, v1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v3

    .line 2479
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-wide v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->b:J

    iget-object v6, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    sget-object v7, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    .line 2480
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2481
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 2485
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->call:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 2489
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2490
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 2491
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->a:Lcom/callapp/contacts/model/call/CallData;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2492
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2494
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2800(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
