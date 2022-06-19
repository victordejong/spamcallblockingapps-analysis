.class synthetic Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
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

.field static final synthetic e:[I

.field static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 2753
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->values()[Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_CLOSE_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_DIALER_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_SEARCH_CONTACTS_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CONTACT_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_FIRST_EXPERIENCE_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_FIRST_EXPERIENCE_FINISH:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x9

    aput v10, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_LIST_MULTI_SELECT_ENDED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xa

    aput v10, v8, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_LIST_SCROLLED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xb

    aput v10, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_BACK_PRESSED_KEYPAD_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xc

    aput v10, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_RESET_SEARCH_AFTER_DELAY:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xd

    aput v10, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    aput v10, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_SLIDE_MENU_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xf

    aput v10, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_BACK_PRESSED_SEARCH_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x10

    aput v10, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 2556
    :catch_f
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->values()[Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->e:[I

    :try_start_10
    sget-object v9, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->COVER:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->e:[I

    sget-object v9, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->PERSONAL_COVER:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->e:[I

    sget-object v9, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->CALL_SCREEN:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->e:[I

    sget-object v9, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->e:[I

    sget-object v9, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->KEYPAD:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->e:[I

    sget-object v9, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->THEME:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 2449
    :catch_15
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->values()[Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->d:[I

    :try_start_16
    sget-object v9, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->d:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 2351
    :catch_17
    invoke-static {}, Lcom/callapp/contacts/model/contact/ContactField;->values()[Lcom/callapp/contacts/model/contact/ContactField;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->c:[I

    :try_start_18
    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactField;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->c:[I

    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactField;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 2184
    :catch_19
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->values()[Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->b:[I

    :try_start_1a
    sget-object v9, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->MISSING_AUTO_START_PERMISSION:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->b:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->HUAWEI_PROTECTED_APPS:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->b:[I

    sget-object v9, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->SHOW_ALLOW_DRAW_OVERLAY:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 453
    :catch_1c
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->values()[Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    :try_start_1d
    sget-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_MULTI_SELECT:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_FIRST_EXPERIENCE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE_MULTI_SELECT:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->UNSET:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER_INCALL:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method
