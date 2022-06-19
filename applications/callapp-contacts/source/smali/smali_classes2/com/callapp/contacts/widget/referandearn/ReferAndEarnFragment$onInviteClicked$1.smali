.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;->a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
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
        "com/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1",
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
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ")V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 90
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    check-cast v1, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    check-cast v1, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    check-cast v1, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    const-string v1, "ContactLoader().addSyncL\u2026(memoryContactItem.phone)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1;

    invoke-direct {v2, v1, v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/callapp/contacts/model/contact/ContactData;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
