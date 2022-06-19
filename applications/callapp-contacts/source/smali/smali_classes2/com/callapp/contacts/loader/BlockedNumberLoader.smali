.class public Lcom/callapp/contacts/loader/BlockedNumberLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 9

    .line 22
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 23
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/callapp/contacts/manager/BlockManager;->c(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/callapp/common/util/RegexUtils;->d(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getBlockedNumberData()Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 30
    new-instance v8, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJ)V

    invoke-virtual {p1, v8}, Lcom/callapp/contacts/model/contact/ContactData;->setBlockedNumberData(Lcom/callapp/contacts/model/objectbox/BlockedNumberData;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->setFullName(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->setWhen(J)V

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    :cond_1
    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
