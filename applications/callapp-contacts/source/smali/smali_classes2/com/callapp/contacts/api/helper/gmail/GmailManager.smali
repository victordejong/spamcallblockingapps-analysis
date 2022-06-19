.class public Lcom/callapp/contacts/api/helper/gmail/GmailManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/gmail/GmailManager$CallAppGoogleHttpRequestInitializer;
    }
.end annotation


# instance fields
.field private a:Lcom/google/api/services/gmail/Gmail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/api/services/gmail/model/Message;Z)Lcom/callapp/contacts/model/contact/GmailEmailData;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 198
    :cond_0
    new-instance v0, Lcom/callapp/contacts/model/contact/GmailEmailData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/GmailEmailData;-><init>()V

    .line 200
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/Message;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/GmailEmailData;->setThreadId(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/Message;->getInternalDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/model/contact/GmailEmailData;->setInternalDate(J)V

    .line 202
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/Message;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/HtmlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/GmailEmailData;->setSnippet(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/Message;->getPayload()Lcom/google/api/services/gmail/model/MessagePart;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 207
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/MessagePart;->getHeaders()Ljava/util/List;

    move-result-object v1

    .line 208
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/gmail/model/MessagePartHeader;

    .line 210
    invoke-virtual {v2}, Lcom/google/api/services/gmail/model/MessagePartHeader;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Subject"

    invoke-static {v4, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-virtual {v2}, Lcom/google/api/services/gmail/model/MessagePartHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/HtmlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GmailEmailData;->setSubject(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_1

    .line 212
    invoke-virtual {v2}, Lcom/google/api/services/gmail/model/MessagePartHeader;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "From"

    invoke-static {v4, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v2}, Lcom/google/api/services/gmail/model/MessagePartHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 215
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 216
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 217
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 218
    new-instance v7, Lcom/callapp/common/model/json/JSONEmail;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v8}, Lcom/callapp/common/model/json/JSONEmail;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/callapp/contacts/model/contact/GmailEmailData;->setEmail(Lcom/callapp/common/model/json/JSONEmail;)V

    .line 220
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    invoke-virtual {v0, v5}, Lcom/callapp/contacts/model/contact/GmailEmailData;->setFullName(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    :cond_4
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a(Lcom/google/api/services/gmail/model/MessagePart;)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 233
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/GmailEmailData;->setBody(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private a(Ljava/lang/String;J)Lcom/google/api/services/gmail/model/ListMessagesResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->getGmailClient()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/google/api/services/gmail/Gmail;->users()Lcom/google/api/services/gmail/Gmail$Users;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/gmail/Gmail$Users;->a()Lcom/google/api/services/gmail/Gmail$Users$Messages;

    move-result-object v0

    const-string v1, "me"

    invoke-virtual {v0, v1}, Lcom/google/api/services/gmail/Gmail$Users$Messages;->a(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$List;

    move-result-object v0

    const-string v1, "messages/id"

    invoke-virtual {v0, v1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$List;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;->setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/gmail/Gmail$Users$Messages$List;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$List;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/ListMessagesResponse;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Lcom/google/api/services/gmail/model/MessagePart;)Ljava/lang/String;
    .locals 3

    .line 241
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/MessagePart;->getParts()Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/gmail/model/MessagePart;

    .line 244
    invoke-direct {p0, v1}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a(Lcom/google/api/services/gmail/model/MessagePart;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/MessagePart;->getBody()Lcom/google/api/services/gmail/model/MessagePartBody;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/MessagePartBody;->getData()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    .line 1016
    invoke-static {p1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 256
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://mail.google.com/mail/mu/mp/#cv/All%20Mail/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 165
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, " OR "

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "from:\""

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR (from:me AND to:\""

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, " -in:chats"

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static d([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 179
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, " OR "

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\""

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, " -from:me -from:calendar -in:chats"

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -subject:\"re:\" -subject:\"fw:\" -subject:\"fwd:\""

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static get()Lcom/callapp/contacts/api/helper/gmail/GmailManager;
    .locals 1

    .line 74
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getGmailManager()Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    move-result-object v0

    return-object v0
.end method

.method private getGmailClient()Lcom/google/api/services/gmail/Gmail;
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a:Lcom/google/api/services/gmail/Gmail;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lcom/google/api/services/gmail/Gmail$Builder;

    new-instance v2, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;

    invoke-direct {v2}, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;-><init>()V

    new-instance v3, Lcom/google/api/client/json/jackson2/JacksonFactory;

    invoke-direct {v3}, Lcom/google/api/client/json/jackson2/JacksonFactory;-><init>()V

    new-instance v4, Lcom/callapp/contacts/api/helper/gmail/GmailManager$CallAppGoogleHttpRequestInitializer;

    .line 155
    invoke-static {}, Lcom/google/api/client/auth/oauth2/a;->a()Lcom/google/api/client/auth/oauth2/b$a;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/callapp/contacts/api/helper/gmail/GmailManager$CallAppGoogleHttpRequestInitializer;-><init>(Lcom/google/api/client/auth/oauth2/b$a;)V

    invoke-virtual {v4, v0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager$CallAppGoogleHttpRequestInitializer;->a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/b;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/gmail/Gmail$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V

    const-string v0, "CallApp"

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/api/services/gmail/Gmail$Builder;->build()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a:Lcom/google/api/services/gmail/Gmail;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a:Lcom/google/api/services/gmail/Gmail;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lcom/callapp/contacts/model/contact/GmailEmailData;
    .locals 7

    .line 276
    invoke-static {p1}, Lcom/callapp/contacts/util/ArrayUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 278
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "gmail_message_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/model/contact/GmailEmailData;

    const/4 v4, 0x0

    .line 1215
    invoke-virtual {v2, v3, v0, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 279
    check-cast v2, Lcom/callapp/contacts/model/contact/GmailEmailData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_3

    .line 281
    :try_start_1
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->c([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v5, 0x1

    .line 282
    invoke-direct {p0, p1, v5, v6}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a(Ljava/lang/String;J)Lcom/google/api/services/gmail/model/ListMessagesResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/ListMessagesResponse;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/ListMessagesResponse;->getMessages()Ljava/util/List;

    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/Message;

    .line 287
    invoke-virtual {p1}, Lcom/google/api/services/gmail/model/Message;->getId()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->getGmailClient()Lcom/google/api/services/gmail/Gmail;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {v3}, Lcom/google/api/services/gmail/Gmail;->users()Lcom/google/api/services/gmail/Gmail$Users;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/gmail/Gmail$Users;->a()Lcom/google/api/services/gmail/Gmail$Users$Messages;

    move-result-object v3

    const-string v5, "me"

    invoke-virtual {v3, v5, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object p1

    const-string v3, "id,payload,snippet,threadId,internalDate"

    invoke-virtual {p1, v3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object p1

    const-string v3, "metadata"

    invoke-virtual {p1, v3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->setFormat(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object p1

    const-string v3, "Subject"

    const-string v5, "From"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/common/util/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->setMetadataHeaders(Ljava/util/List;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/Message;

    if-eqz p1, :cond_0

    .line 295
    invoke-direct {p0, p1, v4}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a(Lcom/google/api/services/gmail/model/Message;Z)Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object p1

    move-object v2, p1

    :cond_0
    if-nez v2, :cond_1

    .line 303
    new-instance p1, Lcom/callapp/contacts/model/contact/GmailEmailData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/contact/GmailEmailData;-><init>()V

    move-object v2, p1

    .line 305
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class v3, Lcom/callapp/contacts/model/contact/GmailEmailData;

    const v4, 0x7f0b0020

    invoke-virtual {p1, v3, v0, v2, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v1

    .line 308
    :goto_0
    instance-of v0, p1, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    if-eqz v0, :cond_3

    .line 309
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_2

    .line 310
    iput-object v1, p0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a:Lcom/google/api/services/gmail/Gmail;

    goto :goto_1

    .line 312
    :cond_2
    const-class v0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    move-object v1, v2

    :cond_4
    return-object v1
.end method

.method public final b([Ljava/lang/String;)Lcom/callapp/contacts/model/contact/GmailEmailData;
    .locals 11

    .line 322
    invoke-static {p1}, Lcom/callapp/contacts/util/ArrayUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "gmail_message_text_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/model/contact/GmailEmailData;

    const/4 v4, 0x0

    .line 2215
    invoke-virtual {v2, v3, v0, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 324
    check-cast v2, Lcom/callapp/contacts/model/contact/GmailEmailData;

    if-nez v2, :cond_8

    .line 326
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->d([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x5

    .line 330
    :try_start_0
    invoke-direct {p0, v3, v5, v6}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a(Ljava/lang/String;J)Lcom/google/api/services/gmail/model/ListMessagesResponse;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 331
    invoke-virtual {v3}, Lcom/google/api/services/gmail/model/ListMessagesResponse;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 332
    invoke-virtual {v3}, Lcom/google/api/services/gmail/model/ListMessagesResponse;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 333
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 334
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/gmail/model/Message;

    .line 335
    invoke-virtual {v5}, Lcom/google/api/services/gmail/model/Message;->getId()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 338
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->getGmailClient()Lcom/google/api/services/gmail/Gmail;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 340
    invoke-virtual {v6}, Lcom/google/api/services/gmail/Gmail;->users()Lcom/google/api/services/gmail/Gmail$Users;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/gmail/Gmail$Users;->a()Lcom/google/api/services/gmail/Gmail$Users$Messages;

    move-result-object v6

    const-string v7, "me"

    invoke-virtual {v6, v7, v5}, Lcom/google/api/services/gmail/Gmail$Users$Messages;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object v5

    const-string v6, "id,payload,snippet,threadId,internalDate"

    invoke-virtual {v5, v6}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object v5

    const-string v6, "full"

    invoke-virtual {v5, v6}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->setFormat(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object v5

    const-string v6, "Subject"

    const-string v7, "From"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/common/util/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->setMetadataHeaders(Ljava/util/List;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;->execute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/gmail/model/Message;

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    .line 343
    invoke-direct {p0, v5, v6}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a(Lcom/google/api/services/gmail/model/Message;Z)Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 346
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 347
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 348
    new-instance v7, Lcom/c/a/b;

    invoke-direct {v7}, Lcom/c/a/b;-><init>()V

    .line 349
    invoke-virtual {v7, v6}, Lcom/c/a/b;->a(Ljava/lang/String;)Lcom/c/a/a;

    move-result-object v6

    .line 3016
    iget-object v6, v6, Lcom/c/a/a;->a:Ljava/util/List;

    .line 351
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 352
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/c/a/c;

    .line 3025
    iget-boolean v8, v7, Lcom/c/a/c;->b:Z

    if-eqz v8, :cond_1

    .line 4017
    iget-object v7, v7, Lcom/c/a/c;->a:Ljava/lang/String;

    .line 355
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 356
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-----"

    invoke-static {v8, v9}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "from:"

    .line 357
    invoke-static {v7, v8}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "to:"

    invoke-static {v7, v8}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 360
    :cond_2
    array-length v8, p1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, p1, v9

    .line 361
    invoke-static {v7, v10}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v2, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    :cond_5
    if-nez v2, :cond_6

    .line 384
    new-instance p1, Lcom/callapp/contacts/model/contact/GmailEmailData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/contact/GmailEmailData;-><init>()V

    move-object v2, p1

    .line 386
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class v3, Lcom/callapp/contacts/model/contact/GmailEmailData;

    const v4, 0x7f0b0020

    invoke-virtual {p1, v3, v0, v2, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 388
    instance-of v0, p1, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    if-eqz v0, :cond_8

    .line 389
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_7

    .line 390
    iput-object v1, p0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a:Lcom/google/api/services/gmail/Gmail;

    goto :goto_2

    .line 392
    :cond_7
    const-class v0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    move-object v1, v2

    :cond_9
    return-object v1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a:Lcom/google/api/services/gmail/Gmail;

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .line 89
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://mail.google.com/"

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://www.googleapis.com/auth/gmail.readonly"

    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 94
    :goto_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/GooglePlayUtils;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 96
    :goto_1
    const-class v1, Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGmailAccount()Ljava/lang/String;
    .locals 3

    .line 103
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    new-instance v1, Lcom/google/api/client/googleapis/extensions/android/a/a;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/googleapis/extensions/android/a/a;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/a/a;->a()[Landroid/accounts/Account;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/callapp/contacts/util/ArrayUtils;->b([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 108
    :goto_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
