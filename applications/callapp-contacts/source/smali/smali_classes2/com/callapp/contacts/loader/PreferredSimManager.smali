.class public Lcom/callapp/contacts/loader/PreferredSimManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/PreferredSimManager;->b(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/PreferredSimManager;->b(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData;-><init>()V

    .line 31
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-virtual {v1, p3}, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->setSimId(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    .line 34
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method

.method private static b(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Lio/objectbox/query/Query<",
            "Lcom/callapp/contacts/model/objectbox/PreferredSimData;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 39
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/PreferredSimData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    return-object p0
.end method
