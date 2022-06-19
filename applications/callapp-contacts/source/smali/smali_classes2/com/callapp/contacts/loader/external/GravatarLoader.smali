.class public Lcom/callapp/contacts/loader/external/GravatarLoader;
.super Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/external/ExternalSourcesLoader<",
        "Lcom/callapp/contacts/model/contact/GravatarData;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "aHR0cDovL3d3dy5ncmF2YXRhci5jb20vYXZhdGFyLyVzP2Q9NDA0JnM9"

    .line 5016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/external/GravatarLoader;->a:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/callapp/contacts/loader/external/GravatarLoader;->b:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x258

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/external/GravatarLoader;->c:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "aHR0cDovL3d3dy5ncmF2YXRhci5jb20v"

    .line 6016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/external/GravatarLoader;->f:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "Z3JhdmF0YXIuY29t"

    .line 7016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/external/GravatarLoader;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/common/model/json/JSONEmail;Z)Lcom/callapp/contacts/model/contact/GravatarData;
    .locals 12

    .line 4165
    new-instance p0, Lcom/callapp/contacts/model/contact/GravatarData;

    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/GravatarData;-><init>()V

    .line 4166
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/GravatarData;->setPhotoSure(Z)V

    .line 4167
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object p1

    .line 4168
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    .line 4169
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 4170
    invoke-static {p1}, Lcom/callapp/common/util/HashUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4171
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4172
    invoke-static {p1}, Lcom/callapp/contacts/loader/external/GravatarLoader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4173
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4174
    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_1a

    const-string v3, "entry"

    .line 4176
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4178
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4180
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "profileUrl"

    .line 4181
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4183
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    .line 4184
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4185
    new-instance v5, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {v5, v4}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4189
    :cond_0
    sget-object v4, Lcom/callapp/contacts/loader/external/GravatarLoader;->b:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setThumbnailUrl(Ljava/lang/String;)V

    .line 4190
    sget-object v4, Lcom/callapp/contacts/loader/external/GravatarLoader;->c:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/GravatarData;->setPhotoUrl(Ljava/lang/String;)V

    const-string p1, "name"

    .line 4193
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v4, "formatted"

    .line 4195
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4197
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    .line 4198
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4201
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setFullName(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v4, :cond_5

    const-string v6, "givenName"

    .line 4206
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_2

    .line 4209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string v6, "familyName"

    .line 4212
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4217
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4218
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4219
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/GravatarData;->setFullName(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_5
    :goto_1
    if-nez v4, :cond_6

    const-string p1, "displayName"

    .line 4229
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4231
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p1

    .line 4232
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4234
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/GravatarData;->setFullName(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_6
    const-string p1, "aboutMe"

    .line 4239
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4241
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/HtmlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4242
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4244
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/GravatarData;->setDescription(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_7
    const-string p1, "currentLocation"

    .line 4248
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 4250
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p1

    .line 4251
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4253
    new-instance v4, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v4, p1}, Lcom/callapp/common/model/json/JSONAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setAddress(Lcom/callapp/common/model/json/JSONAddress;)V

    const/4 v5, 0x1

    :cond_8
    const-string p1, "phoneNumbers"

    .line 4257
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v4, "value"

    if-eqz p1, :cond_b

    .line 4259
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    .line 4260
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 4262
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 4264
    invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 4266
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v8

    .line 4267
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4268
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 4274
    :cond_a
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4276
    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/GravatarData;->setPhones(Ljava/util/Collection;)V

    const/4 v5, 0x1

    :cond_b
    const-string p1, "emails"

    .line 4280
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4282
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    .line 4283
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 4284
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 4286
    invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 4288
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v8

    .line 4289
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 4290
    new-instance v9, Lcom/callapp/common/model/json/JSONEmail;

    invoke-direct {v9}, Lcom/callapp/common/model/json/JSONEmail;-><init>()V

    .line 4291
    invoke-virtual {v9, v8}, Lcom/callapp/common/model/json/JSONEmail;->setEmail(Ljava/lang/String;)V

    .line 4292
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4298
    :cond_d
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 4300
    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/GravatarData;->setEmails(Ljava/util/Collection;)V

    const/4 v5, 0x1

    :cond_e
    const-string p1, "ims"

    .line 4304
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 4306
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    .line 4307
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v8

    if-ge v7, v8, :cond_10

    .line 4308
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 4310
    invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    const-string v10, "type"

    .line 4311
    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    if-eqz v9, :cond_f

    if-eqz v8, :cond_f

    .line 4313
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v9

    .line 4314
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;->a(Ljava/lang/String;)I

    move-result v8

    .line 4315
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    if-ltz v8, :cond_f

    .line 4316
    new-instance v10, Lcom/callapp/common/model/json/JSONIMaddress;

    const/4 v11, 0x3

    invoke-direct {v10, v9, v11, v8}, Lcom/callapp/common/model/json/JSONIMaddress;-><init>(Ljava/lang/String;II)V

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 4322
    :cond_10
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4324
    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/GravatarData;->setImAddresses(Ljava/util/Collection;)V

    const/4 v5, 0x1

    :cond_11
    const-string p1, "accounts"

    .line 4328
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_16

    const/4 v6, 0x0

    .line 4330
    :goto_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v7

    if-ge v6, v7, :cond_16

    .line 4331
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    if-eqz v7, :cond_15

    const-string v8, "shortname"

    .line 4333
    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 4335
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v8

    .line 4336
    invoke-static {v8}, Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;->b(Ljava/lang/String;)I

    move-result v8

    const-string v9, "userid"

    .line 4337
    invoke-virtual {v7, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    if-ltz v8, :cond_13

    if-eqz v9, :cond_13

    .line 4340
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    .line 4341
    invoke-static {p0, v5, v8, p2}, Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;->a(Lcom/callapp/contacts/model/contact/GravatarData;Ljava/lang/String;IZ)V

    :cond_12
    :goto_6
    const/4 v5, 0x1

    goto :goto_8

    :cond_13
    const-string v9, "url"

    .line 4343
    invoke-virtual {v7, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 4345
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v7

    .line 4346
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 4348
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 4351
    invoke-virtual {v5, v7}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4352
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 4354
    invoke-static {p0, v5, v8, p2}, Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;->a(Lcom/callapp/contacts/model/contact/GravatarData;Ljava/lang/String;IZ)V

    const/4 v5, 0x1

    goto :goto_7

    :cond_14
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_12

    .line 4358
    new-instance v5, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {v5, v7}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_16
    const-string p1, "urls"

    .line 4370
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 4372
    :goto_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result p2

    if-ge v1, p2, :cond_18

    .line 4373
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 4375
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 4377
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p2

    .line 4378
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4379
    new-instance v0, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {v0, p2}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4386
    :cond_18
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 4388
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/model/contact/GravatarData;->setWebsites(Ljava/util/Collection;)V

    const/4 v1, 0x1

    goto :goto_a

    :cond_19
    move v1, v5

    :cond_1a
    :goto_a
    if-eqz v1, :cond_1b

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 405
    const-class v0, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gra_res_json_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 1215
    invoke-virtual {v1, v2, v3, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 405
    check-cast v1, Ljava/lang/String;

    .line 406
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 411
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Accept"

    const-string v6, "*/*"

    .line 412
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/callapp/contacts/loader/external/GravatarLoader;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v6

    if-nez v6, :cond_1

    return-object v2

    .line 419
    :cond_1
    new-instance v6, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v6, v5}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 2075
    iput-object v3, v6, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a:Ljava/util/Map;

    .line 419
    invoke-virtual {v6}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v3

    const-class v5, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v4, 0x7f0b002c

    invoke-virtual {v3, v5, p0, v1, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 424
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 422
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lcom/callapp/contacts/manager/ExceptionManager;->a(Ljava/lang/Class;Ljava/io/IOException;)V

    .line 427
    :goto_1
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v2
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 5

    .line 57
    check-cast p1, Lcom/callapp/contacts/model/contact/GravatarData;

    .line 2649
    new-instance v0, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    .line 2650
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 2651
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 2653
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setInstagramID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 2654
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 2655
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getWebsites()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setWebsites(Ljava/util/List;)V

    .line 2656
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getImAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setIMAddresses(Ljava/util/List;)V

    .line 2657
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setDescription(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getEmails()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setEmails(Ljava/util/List;)V

    .line 2661
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhones()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2663
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhones()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/framework/phone/Phone;

    .line 2664
    new-instance v4, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-direct {v4, v3}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2666
    :cond_0
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 2668
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAddresses(Ljava/util/List;)V

    return-object v0
.end method

.method protected final synthetic a(Ljava/util/List;)Lcom/callapp/contacts/model/contact/ExternalSourceData;
    .locals 4

    .line 2578
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2579
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2580
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/GravatarData;

    goto/16 :goto_1

    .line 2582
    :cond_0
    new-instance v0, Lcom/callapp/contacts/model/contact/GravatarData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/GravatarData;-><init>()V

    .line 2583
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/GravatarData;

    .line 2584
    invoke-static {v0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;->a(Lcom/callapp/contacts/model/contact/GravatarData;Lcom/callapp/contacts/model/contact/GravatarData;)V

    .line 2585
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getWebsites()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2586
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getWebsites()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2588
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2590
    :cond_2
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getWebsites()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2591
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setWebsites(Ljava/util/Collection;)V

    .line 2594
    :cond_3
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v2

    if-nez v2, :cond_4

    .line 2595
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setAddress(Lcom/callapp/common/model/json/JSONAddress;)V

    .line 2598
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2599
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setDescription(Ljava/lang/String;)V

    .line 2602
    :cond_5
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getEmails()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2603
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getEmails()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_6

    .line 2605
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2607
    :cond_6
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getEmails()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2608
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setEmails(Ljava/util/Collection;)V

    .line 2611
    :cond_7
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2612
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setFullName(Ljava/lang/String;)V

    .line 2615
    :cond_8
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getImAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2616
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getImAddresses()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2618
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2620
    :cond_9
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getImAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2621
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setImAddresses(Ljava/util/Collection;)V

    .line 2624
    :cond_a
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhones()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2625
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhones()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_b

    .line 2627
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2629
    :cond_b
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhones()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2630
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setPhones(Ljava/util/Collection;)V

    .line 2633
    :cond_c
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2634
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setPhotoUrl(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->isPhotoSure()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/GravatarData;->setPhotoSure(Z)V

    .line 2638
    :cond_d
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2639
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/GravatarData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/GravatarData;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object p1, v0

    goto :goto_1

    :cond_f
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .locals 8

    .line 57
    check-cast p2, Lcom/callapp/contacts/model/contact/GravatarData;

    .line 3432
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 3433
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 3434
    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setGravatarData(Lcom/callapp/contacts/model/contact/GravatarData;)V

    if-eqz p2, :cond_b

    .line 3444
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v2

    .line 3446
    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 3447
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3449
    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader$3;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$3;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v6, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 3459
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3460
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getEmails()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3462
    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader$4;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$4;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    :cond_1
    new-array v6, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 3472
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->description:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3473
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3475
    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader$5;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$5;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 3485
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v4

    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v5

    invoke-static {v0, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3486
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhones()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3488
    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader$6;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$6;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    :cond_3
    new-array v6, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 3498
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3499
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getWebsites()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3501
    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader$7;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$7;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    :cond_4
    new-array v6, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 3511
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3512
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getImAddresses()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3514
    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader$8;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$8;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    .line 3524
    :cond_5
    sget-object v6, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-static {v0, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3525
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3527
    :cond_6
    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader$9;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$9;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    .line 3537
    :cond_7
    sget-object v6, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3538
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3540
    new-instance p2, Lcom/callapp/contacts/loader/external/GravatarLoader$10;

    invoke-direct {p2, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$10;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v3, 0x1

    :cond_8
    if-eqz v3, :cond_a

    new-array p2, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 3551
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->yahoo:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, p2, v4

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3552
    new-instance p2, Lcom/callapp/contacts/loader/external/GravatarLoader$11;

    invoke-direct {p2, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$11;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_9
    new-array p2, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 3561
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->skype:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, p2, v4

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 3562
    new-instance p2, Lcom/callapp/contacts/loader/external/GravatarLoader$12;

    invoke-direct {p2, p0, v1}, Lcom/callapp/contacts/loader/external/GravatarLoader$12;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 3572
    :cond_a
    iget-boolean p2, p0, Lcom/callapp/contacts/loader/external/GravatarLoader;->d:Z

    invoke-virtual {p1, v2, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    :cond_b
    return-void
.end method

.method protected final c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/GravatarData;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 101
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 106
    :cond_0
    iget-object v2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const-class v4, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 108
    :try_start_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGravatarData()Lcom/callapp/contacts/model/contact/GravatarData;

    move-result-object v4

    if-eqz v4, :cond_1

    const v5, 0x7f0b0023

    .line 109
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/contact/GravatarData;->isExpired(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 110
    monitor-exit v2

    return-object v3

    .line 113
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/common/model/json/JSONEmail;

    .line 117
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->a()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v6

    .line 118
    new-instance v7, Lcom/callapp/contacts/loader/external/GravatarLoader$1;

    invoke-direct {v7, p0, v5, v0, v3}, Lcom/callapp/contacts/loader/external/GravatarLoader$1;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/common/model/json/JSONEmail;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v5, 0x1

    .line 129
    invoke-virtual {p1, v6, v5}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_3

    .line 136
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_3
    new-instance v0, Lcom/callapp/contacts/model/contact/GravatarData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/GravatarData;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 143
    new-instance v0, Lcom/callapp/contacts/loader/external/GravatarLoader$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/external/GravatarLoader$2;-><init>(Lcom/callapp/contacts/loader/external/GravatarLoader;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    :goto_1
    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return-object v3
.end method

.method protected getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/GravatarData;",
            ">;"
        }
    .end annotation

    .line 85
    const-class v0, Lcom/callapp/contacts/model/contact/GravatarData;

    return-object v0
.end method

.method protected getExernalSourceId()I
    .locals 1

    const/16 v0, 0x3f1

    return v0
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

    .line 70
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getLoadedFields()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->description:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->gTalk:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->yahoo:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->skype:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 79
    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
