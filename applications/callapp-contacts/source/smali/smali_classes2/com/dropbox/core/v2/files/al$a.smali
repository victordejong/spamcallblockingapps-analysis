.class final Lcom/dropbox/core/v2/files/al$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/files/al;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/al$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 287
    new-instance v0, Lcom/dropbox/core/v2/files/al$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/al$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/al$a;->a:Lcom/dropbox/core/v2/files/al$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/al;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 330
    invoke-static {p0}, Lcom/dropbox/core/v2/files/al$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 331
    invoke-static {p0}, Lcom/dropbox/core/v2/files/al$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    if-nez v2, :cond_8

    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_6

    .line 342
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "name"

    .line 344
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 345
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "path_lower"

    .line 347
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 348
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v5, "path_display"

    .line 350
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3052
    sget-object v2, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 351
    invoke-static {v2}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v5, "parent_shared_folder_id"

    .line 353
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 354
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 357
    :cond_5
    invoke-static {p0}, Lcom/dropbox/core/v2/files/al$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 363
    new-instance v4, Lcom/dropbox/core/v2/files/al;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/dropbox/core/v2/files/al;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_7
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"name\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 366
    invoke-static {p0, v1}, Lcom/dropbox/core/v2/files/al$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/al;

    move-result-object v4

    goto :goto_1

    :cond_9
    const-string v0, "file"

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 369
    sget-object v0, Lcom/dropbox/core/v2/files/q$a;->a:Lcom/dropbox/core/v2/files/q$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/files/q$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/q;

    move-result-object v4

    goto :goto_1

    :cond_a
    const-string v0, "folder"

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 372
    sget-object v0, Lcom/dropbox/core/v2/files/t$a;->a:Lcom/dropbox/core/v2/files/t$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/files/t$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/t;

    move-result-object v4

    goto :goto_1

    :cond_b
    const-string v0, "deleted"

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 375
    sget-object v0, Lcom/dropbox/core/v2/files/h$a;->a:Lcom/dropbox/core/v2/files/h$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/files/h$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/h;

    move-result-object v4

    :goto_1
    if-nez p1, :cond_c

    .line 381
    invoke-static {p0}, Lcom/dropbox/core/v2/files/al$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 383
    :cond_c
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/al;->c()Ljava/lang/String;

    invoke-static {v4}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v4

    .line 378
    :cond_d
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No subtype found that matches tag: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 286
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/al$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/al;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 286
    check-cast p1, Lcom/dropbox/core/v2/files/al;

    .line 4291
    instance-of v0, p1, Lcom/dropbox/core/v2/files/q;

    if-eqz v0, :cond_0

    .line 4292
    sget-object v0, Lcom/dropbox/core/v2/files/q$a;->a:Lcom/dropbox/core/v2/files/q$a;

    check-cast p1, Lcom/dropbox/core/v2/files/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/q$a;->a(Lcom/dropbox/core/v2/files/q;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 4295
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/files/t;

    if-eqz v0, :cond_1

    .line 4296
    sget-object v0, Lcom/dropbox/core/v2/files/t$a;->a:Lcom/dropbox/core/v2/files/t$a;

    check-cast p1, Lcom/dropbox/core/v2/files/t;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/t$a;->a(Lcom/dropbox/core/v2/files/t;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 4299
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/files/h;

    if-eqz v0, :cond_2

    .line 4300
    sget-object v0, Lcom/dropbox/core/v2/files/h$a;->a:Lcom/dropbox/core/v2/files/h$a;

    check-cast p1, Lcom/dropbox/core/v2/files/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/h$a;->a(Lcom/dropbox/core/v2/files/h;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 4304
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_3
    const-string v0, "name"

    .line 4306
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4307
    iget-object v1, p1, Lcom/dropbox/core/v2/files/al;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4308
    iget-object v0, p1, Lcom/dropbox/core/v2/files/al;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "path_lower"

    .line 4309
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 6052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4310
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/al;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4312
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/al;->q:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "path_display"

    .line 4313
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 7052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4314
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/al;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4316
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/al;->r:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "parent_shared_folder_id"

    .line 4317
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 8052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4318
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/files/al;->r:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_6
    if-nez p3, :cond_7

    .line 4321
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_7
    return-void
.end method
