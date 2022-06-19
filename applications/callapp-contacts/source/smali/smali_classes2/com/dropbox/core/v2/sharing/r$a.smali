.class final Lcom/dropbox/core/v2/sharing/r$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/sharing/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 292
    new-instance v0, Lcom/dropbox/core/v2/sharing/r$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/r$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/r$a;->a:Lcom/dropbox/core/v2/sharing/r$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1325
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/r$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1326
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/r$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_a

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 1334
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_6

    .line 1335
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1336
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "acl_update_policy"

    .line 1337
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    sget-object v0, Lcom/dropbox/core/v2/sharing/c$a;->a:Lcom/dropbox/core/v2/sharing/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/c;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v1, "shared_link_policy"

    .line 1340
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    sget-object v0, Lcom/dropbox/core/v2/sharing/bk$a;->a:Lcom/dropbox/core/v2/sharing/bk$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bk$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bk;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v1, "member_policy"

    .line 1343
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1344
    sget-object v0, Lcom/dropbox/core/v2/sharing/al$a;->a:Lcom/dropbox/core/v2/sharing/al$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/dropbox/core/v2/sharing/al;

    goto :goto_1

    :cond_3
    const-string v1, "resolved_member_policy"

    .line 1346
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1347
    sget-object v0, Lcom/dropbox/core/v2/sharing/al$a;->a:Lcom/dropbox/core/v2/sharing/al$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/dropbox/core/v2/sharing/al;

    goto :goto_1

    :cond_4
    const-string v1, "viewer_info_policy"

    .line 1349
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1350
    sget-object v0, Lcom/dropbox/core/v2/sharing/bv$a;->a:Lcom/dropbox/core/v2/sharing/bv$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/dropbox/core/v2/sharing/bv;

    goto :goto_1

    .line 1353
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/r$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    .line 1362
    new-instance v0, Lcom/dropbox/core/v2/sharing/r;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/dropbox/core/v2/sharing/r;-><init>(Lcom/dropbox/core/v2/sharing/c;Lcom/dropbox/core/v2/sharing/bk;Lcom/dropbox/core/v2/sharing/al;Lcom/dropbox/core/v2/sharing/al;Lcom/dropbox/core/v2/sharing/bv;)V

    if-nez p2, :cond_7

    .line 1368
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/r$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2285
    :cond_7
    sget-object p1, Lcom/dropbox/core/v2/sharing/r$a;->a:Lcom/dropbox/core/v2/sharing/r$a;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/dropbox/core/v2/sharing/r$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 1370
    invoke-static {v0}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v0

    .line 1360
    :cond_8
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"shared_link_policy\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1357
    :cond_9
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"acl_update_policy\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1365
    :cond_a
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No subtype found that matches tag: \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 291
    check-cast p1, Lcom/dropbox/core/v2/sharing/r;

    if-nez p3, :cond_0

    .line 2297
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "acl_update_policy"

    .line 2299
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2300
    sget-object v0, Lcom/dropbox/core/v2/sharing/c$a;->a:Lcom/dropbox/core/v2/sharing/c$a;

    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/r;->c:Lcom/dropbox/core/v2/sharing/c;

    invoke-static {v0, p2}, Lcom/dropbox/core/v2/sharing/c$a;->a(Lcom/dropbox/core/v2/sharing/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "shared_link_policy"

    .line 2301
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2302
    sget-object v0, Lcom/dropbox/core/v2/sharing/bk$a;->a:Lcom/dropbox/core/v2/sharing/bk$a;

    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/r;->d:Lcom/dropbox/core/v2/sharing/bk;

    invoke-static {v0, p2}, Lcom/dropbox/core/v2/sharing/bk$a;->a(Lcom/dropbox/core/v2/sharing/bk;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2303
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/r;->a:Lcom/dropbox/core/v2/sharing/al;

    if-eqz v0, :cond_1

    const-string v0, "member_policy"

    .line 2304
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2305
    sget-object v0, Lcom/dropbox/core/v2/sharing/al$a;->a:Lcom/dropbox/core/v2/sharing/al$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/r;->a:Lcom/dropbox/core/v2/sharing/al;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2307
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/r;->b:Lcom/dropbox/core/v2/sharing/al;

    if-eqz v0, :cond_2

    const-string v0, "resolved_member_policy"

    .line 2308
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2309
    sget-object v0, Lcom/dropbox/core/v2/sharing/al$a;->a:Lcom/dropbox/core/v2/sharing/al$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/r;->b:Lcom/dropbox/core/v2/sharing/al;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2311
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/r;->e:Lcom/dropbox/core/v2/sharing/bv;

    if-eqz v0, :cond_3

    const-string v0, "viewer_info_policy"

    .line 2312
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2313
    sget-object v0, Lcom/dropbox/core/v2/sharing/bv$a;->a:Lcom/dropbox/core/v2/sharing/bv$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/r;->e:Lcom/dropbox/core/v2/sharing/bv;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_3
    if-nez p3, :cond_4

    .line 2316
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_4
    return-void
.end method
