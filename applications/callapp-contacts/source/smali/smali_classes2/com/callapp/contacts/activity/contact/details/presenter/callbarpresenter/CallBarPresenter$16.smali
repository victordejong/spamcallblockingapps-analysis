.class synthetic Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 601
    invoke-static {}, Lcom/callapp/contacts/model/call/CallState;->values()[Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    :try_start_0
    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->CONNECTING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->ON_CONFERENCE:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
