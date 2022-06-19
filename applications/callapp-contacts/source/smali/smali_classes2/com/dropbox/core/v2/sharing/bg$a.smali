.class final Lcom/dropbox/core/v2/sharing/bg$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bg;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/bg$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bg$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bg$a;->a:Lcom/dropbox/core/v2/sharing/bg$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1090
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1092
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bg$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1097
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bg$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1098
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bg$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "login_required"

    .line 1103
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    sget-object v1, Lcom/dropbox/core/v2/sharing/bg;->LOGIN_REQUIRED:Lcom/dropbox/core/v2/sharing/bg;

    goto :goto_1

    :cond_1
    const-string v2, "email_verify_required"

    .line 1106
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1107
    sget-object v1, Lcom/dropbox/core/v2/sharing/bg;->EMAIL_VERIFY_REQUIRED:Lcom/dropbox/core/v2/sharing/bg;

    goto :goto_1

    :cond_2
    const-string v2, "password_required"

    .line 1109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1110
    sget-object v1, Lcom/dropbox/core/v2/sharing/bg;->PASSWORD_REQUIRED:Lcom/dropbox/core/v2/sharing/bg;

    goto :goto_1

    :cond_3
    const-string v2, "team_only"

    .line 1112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1113
    sget-object v1, Lcom/dropbox/core/v2/sharing/bg;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/bg;

    goto :goto_1

    :cond_4
    const-string v2, "owner_only"

    .line 1115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1116
    sget-object v1, Lcom/dropbox/core/v2/sharing/bg;->OWNER_ONLY:Lcom/dropbox/core/v2/sharing/bg;

    goto :goto_1

    .line 1119
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/sharing/bg;->OTHER:Lcom/dropbox/core/v2/sharing/bg;

    :goto_1
    if-nez v0, :cond_6

    .line 1122
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bg$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1123
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bg$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 1101
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 53
    check-cast p1, Lcom/dropbox/core/v2/sharing/bg;

    .line 2058
    sget-object v0, Lcom/dropbox/core/v2/sharing/bg$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/bg;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "other"

    .line 2080
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "owner_only"

    .line 2076
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "team_only"

    .line 2072
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "password_required"

    .line 2068
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "email_verify_required"

    .line 2064
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "login_required"

    .line 2060
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
