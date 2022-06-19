.class Lcom/callapp/contacts/loader/external/GravatarLoader$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/external/GravatarLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/common/model/json/JSONEmail;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/callapp/contacts/loader/external/GravatarLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/common/model/json/JSONEmail;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Map;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->d:Lcom/callapp/contacts/loader/external/GravatarLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->a:Lcom/callapp/common/model/json/JSONEmail;

    iput-object p3, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p4, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->d:Lcom/callapp/contacts/loader/external/GravatarLoader;

    iget-object v1, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->a:Lcom/callapp/common/model/json/JSONEmail;

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/model/contact/ContactData;->isEmailFromDevice(Lcom/callapp/common/model/json/JSONEmail;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/loader/external/GravatarLoader;->a(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/common/model/json/JSONEmail;Z)Lcom/callapp/contacts/model/contact/GravatarData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->a:Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/GravatarData;->setKey(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$1;->a:Lcom/callapp/common/model/json/JSONEmail;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
