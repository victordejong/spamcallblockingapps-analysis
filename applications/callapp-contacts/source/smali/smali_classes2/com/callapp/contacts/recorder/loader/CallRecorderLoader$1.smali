.class final Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/framework/phone/Phone;

    .line 43
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    iget-object v3, p0, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/framework/phone/Phone;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getRecords()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setContactRecords(Ljava/util/List;)V

    :cond_1
    return-void
.end method
