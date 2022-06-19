.class public final Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/api/ContactLoader;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic c:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iput-object p3, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->c:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p4, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 9

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    const-string v2, "mci"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getContactId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    const-string v1, "contactLoader.load(mci.phone, mci.getContactId())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->d:Ljava/util/ArrayList;

    new-instance v8, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v3

    const-string v2, "contactData.nameOrNumber"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
