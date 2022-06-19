.class final Lcom/dropbox/core/v2/sharing/o$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/o$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/o$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/o$a;->a:Lcom/dropbox/core/v2/sharing/o$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 168
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/o$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/o$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 174
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/o$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_10

    const-string v2, "change_options"

    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/o;

    goto/16 :goto_1

    :cond_1
    const-string v2, "disable_viewer_info"

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/o;

    goto/16 :goto_1

    :cond_2
    const-string v2, "edit_contents"

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/o;

    goto/16 :goto_1

    :cond_3
    const-string v2, "enable_viewer_info"

    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/o;

    goto/16 :goto_1

    :cond_4
    const-string v2, "invite_editor"

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/o;

    goto/16 :goto_1

    :cond_5
    const-string v2, "invite_viewer"

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_6
    const-string v2, "invite_viewer_no_comment"

    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_7
    const-string v2, "relinquish_membership"

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_8
    const-string v2, "unmount"

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 204
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->UNMOUNT:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_9
    const-string v2, "unshare"

    .line 206
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 207
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->UNSHARE:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_a
    const-string v2, "leave_a_copy"

    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 210
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_b
    const-string v2, "share_link"

    .line 212
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 213
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_c
    const-string v2, "create_link"

    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 216
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    :cond_d
    const-string v2, "set_access_inheritance"

    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 219
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->SET_ACCESS_INHERITANCE:Lcom/dropbox/core/v2/sharing/o;

    goto :goto_1

    .line 222
    :cond_e
    sget-object v1, Lcom/dropbox/core/v2/sharing/o;->OTHER:Lcom/dropbox/core/v2/sharing/o;

    :goto_1
    if-nez v0, :cond_f

    .line 225
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/o$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 226
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/o$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_f
    return-object v1

    .line 177
    :cond_10
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/o;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/dropbox/core/v2/sharing/o$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/o;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "other"

    .line 156
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "set_access_inheritance"

    .line 152
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "create_link"

    .line 148
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "share_link"

    .line 144
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p0, "leave_a_copy"

    .line 140
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p0, "unshare"

    .line 136
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p0, "unmount"

    .line 132
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p0, "relinquish_membership"

    .line 128
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_7
    const-string p0, "invite_viewer_no_comment"

    .line 124
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_8
    const-string p0, "invite_viewer"

    .line 120
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_9
    const-string p0, "invite_editor"

    .line 116
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_a
    const-string p0, "enable_viewer_info"

    .line 112
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_b
    const-string p0, "edit_contents"

    .line 108
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_c
    const-string p0, "disable_viewer_info"

    .line 104
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_d
    const-string p0, "change_options"

    .line 100
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/o$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/o;

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

    .line 93
    check-cast p1, Lcom/dropbox/core/v2/sharing/o;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/o$a;->a(Lcom/dropbox/core/v2/sharing/o;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
