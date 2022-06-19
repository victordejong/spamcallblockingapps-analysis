.class public Lcom/callapp/contacts/model/OBPrefsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrefs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/OBPref;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/OBPref;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 19
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/OBPref;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/OBPref_;->key:Lio/objectbox/g;

    invoke-virtual {v1, v2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/OBPref;

    if-nez p1, :cond_0

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v0, v1}, Lio/objectbox/a;->b(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 29
    new-instance v1, Lcom/callapp/contacts/model/objectbox/OBPref;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/OBPref;-><init>()V

    .line 30
    invoke-virtual {v1, p0}, Lcom/callapp/contacts/model/objectbox/OBPref;->setKey(Ljava/lang/String;)V

    .line 33
    :cond_1
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/model/objectbox/OBPref;->setValue(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    :cond_2
    return-void
.end method
