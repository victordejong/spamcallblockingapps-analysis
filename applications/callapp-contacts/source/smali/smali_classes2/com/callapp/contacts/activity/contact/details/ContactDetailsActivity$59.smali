.class synthetic Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 3167
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->values()[Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SMS_MESSAGE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->WHATSAPP:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/ContactAction;->HANGOUTS:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v5, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SIGNAL:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v6, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SKYPE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactAction;->DUO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->WECHAT:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ALLO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0x8

    aput v9, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->TELEGRAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0x9

    aput v9, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->VIBER:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0xa

    aput v9, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->NOTE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0xb

    aput v9, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0xc

    aput v9, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0xd

    aput v9, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0xe

    aput v9, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0xf

    aput v9, v7, v8
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ADD_CONTACT:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0x10

    aput v9, v7, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->PVR:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0x11

    aput v9, v7, v8
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0x12

    aput v9, v7, v8
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0x13

    aput v9, v7, v8
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/details/ContactAction;->REFER_AND_EARN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v8

    const/16 v9, 0x14

    aput v9, v7, v8
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 2246
    :catch_13
    invoke-static {}, Lcom/callapp/contacts/model/call/CallState;->values()[Lcom/callapp/contacts/model/call/CallState;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    :try_start_14
    sget-object v8, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v8}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    sget-object v8, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v8}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    sget-object v8, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v8}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    sget-object v8, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v8}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    sget-object v7, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v7}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v7

    aput v4, v3, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    sget-object v4, Lcom/callapp/contacts/model/call/CallState;->DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    sget-object v4, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 843
    :catch_1a
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->values()[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->b:[I

    :try_start_1b
    sget-object v4, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->b:[I

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->b:[I

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 666
    :catch_1d
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->values()[Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->a:[I

    :try_start_1e
    sget-object v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->INCOMING_CALL:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->a:[I

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method
