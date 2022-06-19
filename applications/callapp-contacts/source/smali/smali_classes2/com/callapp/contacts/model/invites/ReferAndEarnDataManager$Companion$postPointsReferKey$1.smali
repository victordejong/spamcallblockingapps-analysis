.class public final Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$postPointsReferKey$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->postPointsReferKey(Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;Lcom/callapp/contacts/model/contact/ContactData;)V
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
        "com/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$postPointsReferKey$1",
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
.field final synthetic $contactData:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic $referAndEarnDataManagerListener:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$postPointsReferKey$1;->$contactData:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p2, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$postPointsReferKey$1;->$referAndEarnDataManagerListener:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 235
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ivt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "myp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v2, Lcom/callapp/common/model/json/JSONInviteReferer;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 243
    new-instance v2, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 1090
    iput-object v0, v2, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 243
    invoke-virtual {v2}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 244
    invoke-virtual {v1}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONInviteReferer;

    if-eqz v0, :cond_1

    .line 245
    iget-object v1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$postPointsReferKey$1;->$contactData:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_0

    .line 246
    sget-object v2, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONInviteReferer;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "result.key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addReferRecord(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 248
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hr:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONInviteReferer;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$postPointsReferKey$1;->$referAndEarnDataManagerListener:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;->onKeyResult(Lcom/callapp/common/model/json/JSONInviteReferer;)V

    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$postPointsReferKey$1;->$referAndEarnDataManagerListener:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;->onKeyResult(Lcom/callapp/common/model/json/JSONInviteReferer;)V

    return-void
.end method
