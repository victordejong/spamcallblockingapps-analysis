.class public Lcom/callapp/contacts/loader/UserMediaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserMediaData;
    .locals 0

    .line 22
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/UserMediaManager;->c(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    return-object p0
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/UserMediaManager;->c(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/UserMediaData;-><init>()V

    .line 32
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/model/objectbox/UserMediaData;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {v1, p3}, Lcom/callapp/contacts/model/objectbox/UserMediaData;->setPhotoUrl(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserMediaData_;->photoUrl:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method public static b(JLcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/UserMediaManager;->c(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method private static c(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Lio/objectbox/query/Query<",
            "Lcom/callapp/contacts/model/objectbox/UserMediaData;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 46
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/UserMediaData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    return-object p0
.end method
