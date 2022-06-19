.class public abstract Lcom/callapp/contacts/loader/SimpleContactLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/loader/api/ContactDataLoader;


# instance fields
.field protected d:Z

.field protected e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/callapp/contacts/loader/SimpleContactLoader;->e:Z

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/contacts/loader/api/LoadContext;)V
.end method

.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;Z)V
    .locals 4

    .line 24
    iput-boolean p2, p0, Lcom/callapp/contacts/loader/SimpleContactLoader;->d:Z

    .line 27
    :try_start_0
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 28
    const-class p2, Lcom/callapp/contacts/loader/SimpleContactLoader;

    const-string v0, "Loading %s using %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/SimpleContactLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;)V

    .line 1051
    iget-object p2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->d:Lcom/callapp/contacts/event/Callback;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/callapp/contacts/loader/social/UnauthorizedAccessErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 36
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 33
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/loader/api/ContactDataLoader$-CC;->$default$b(Lcom/callapp/contacts/loader/api/ContactDataLoader;)V

    return-void
.end method

.method public b(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 0

    return-void
.end method

.method public getLoadedFields()Ljava/util/Set;
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
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    return-object v0
.end method
