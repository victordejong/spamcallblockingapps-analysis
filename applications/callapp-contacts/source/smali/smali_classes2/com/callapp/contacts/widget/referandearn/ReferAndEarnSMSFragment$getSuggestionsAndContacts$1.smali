.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->getSuggestionsAndContacts()Landroid/util/Pair;
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
        "com/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1",
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
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

.field final synthetic b:Lcom/callapp/contacts/loader/api/ContactLoader;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/ContactLoader;",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->b:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iput-object p4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->b:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    const-string v2, "mci"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getContactId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    iget-object v3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v1, v3}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    const-string v3, "contactData"

    .line 127
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isInstalledApp()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    invoke-static {v4}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    const v3, 0x7f080498

    .line 128
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setBadgeResId(I)V

    .line 129
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setFullName(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->e:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-array v3, v4, [Lcom/callapp/framework/phone/Phone;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
