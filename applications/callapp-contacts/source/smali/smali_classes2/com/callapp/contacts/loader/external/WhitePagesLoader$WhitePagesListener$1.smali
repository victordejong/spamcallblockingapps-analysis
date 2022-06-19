.class Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->setWhitePagesDataList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->b:Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;

    iput-object p2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 198
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {v0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a(Lorg/json/JSONObject;)Lcom/callapp/contacts/model/contact/WhitePagesData;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->b:Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;

    invoke-static {v1}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a(Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;)Lcom/callapp/contacts/loader/api/LoadContext;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->setKey(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->b:Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;

    invoke-static {v1}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->b(Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;)Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->b:Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;

    invoke-static {v2}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a(Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;)Lcom/callapp/contacts/loader/api/LoadContext;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V

    .line 203
    const-class v0, Lcom/callapp/contacts/model/contact/WhitePagesData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WP data parsing succeeded for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 205
    const-class v1, Lcom/callapp/contacts/model/contact/WhitePagesData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing json result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
