.class Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;->getInvalidateDataListener()Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-ne p1, v0, :cond_1

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;->getCurrentFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
