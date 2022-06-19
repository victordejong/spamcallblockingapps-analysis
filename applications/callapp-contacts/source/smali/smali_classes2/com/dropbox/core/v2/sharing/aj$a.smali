.class final Lcom/dropbox/core/v2/sharing/aj$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/aj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/aj$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/aj$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/aj$a;->a:Lcom/dropbox/core/v2/sharing/aj$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/aj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 103
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/aj$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/aj$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 109
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/aj$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "leave_a_copy"

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    sget-object v1, Lcom/dropbox/core/v2/sharing/aj;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/aj;

    goto :goto_1

    :cond_1
    const-string v2, "make_editor"

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    sget-object v1, Lcom/dropbox/core/v2/sharing/aj;->MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/aj;

    goto :goto_1

    :cond_2
    const-string v2, "make_owner"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    sget-object v1, Lcom/dropbox/core/v2/sharing/aj;->MAKE_OWNER:Lcom/dropbox/core/v2/sharing/aj;

    goto :goto_1

    :cond_3
    const-string v2, "make_viewer"

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    sget-object v1, Lcom/dropbox/core/v2/sharing/aj;->MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/aj;

    goto :goto_1

    :cond_4
    const-string v2, "make_viewer_no_comment"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    sget-object v1, Lcom/dropbox/core/v2/sharing/aj;->MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/aj;

    goto :goto_1

    :cond_5
    const-string v2, "remove"

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 130
    sget-object v1, Lcom/dropbox/core/v2/sharing/aj;->REMOVE:Lcom/dropbox/core/v2/sharing/aj;

    goto :goto_1

    .line 133
    :cond_6
    sget-object v1, Lcom/dropbox/core/v2/sharing/aj;->OTHER:Lcom/dropbox/core/v2/sharing/aj;

    :goto_1
    if-nez v0, :cond_7

    .line 136
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/aj$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 137
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/aj$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 112
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/aj;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/dropbox/core/v2/sharing/aj$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/aj;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "other"

    .line 91
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "remove"

    .line 87
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "make_viewer_no_comment"

    .line 83
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "make_viewer"

    .line 79
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p0, "make_owner"

    .line 75
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p0, "make_editor"

    .line 71
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p0, "leave_a_copy"

    .line 67
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/aj$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/aj;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 60
    check-cast p1, Lcom/dropbox/core/v2/sharing/aj;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/aj$a;->a(Lcom/dropbox/core/v2/sharing/aj;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
