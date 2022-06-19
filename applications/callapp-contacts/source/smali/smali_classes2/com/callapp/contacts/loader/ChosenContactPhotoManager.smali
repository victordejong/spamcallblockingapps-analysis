.class public Lcom/callapp/contacts/loader/ChosenContactPhotoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->c(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    return-object p0
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    move-result-object v1

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;-><init>()V

    .line 26
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {v1, p3}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 30
    invoke-virtual {v1, p4}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->setUrl(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method

.method public static b(JLcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->c(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

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
            "Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    return-object p0
.end method
