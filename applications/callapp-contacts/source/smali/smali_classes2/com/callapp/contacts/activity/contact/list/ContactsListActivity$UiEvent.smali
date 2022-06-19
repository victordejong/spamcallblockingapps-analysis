.class public final enum Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_BACK_PRESSED_KEYPAD_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_BACK_PRESSED_SEARCH_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_CALL_LOG_FIRST_EXPERIENCE_FINISH:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_CALL_LOG_FIRST_EXPERIENCE_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_CALL_LOG_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_CONTACT_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_DIALER_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_KEYPAD_CLOSE_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_LIST_MULTI_SELECT_ENDED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_LIST_SCROLLED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_RESET_SEARCH_AFTER_DELAY:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_SEARCH_CONTACTS_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_SLIDE_MENU_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

.field public static final enum ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 2726
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v1, "ON_KEYPAD_CLOSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2727
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v3, "ON_KEYPAD_OPENED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2728
    new-instance v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v5, "ON_KEYPAD_CLOSE_PRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_CLOSE_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2729
    new-instance v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v7, "ON_DIALER_PRESSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_DIALER_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2730
    new-instance v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v9, "ON_LIST_SCROLLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_LIST_SCROLLED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2731
    new-instance v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v11, "ON_BACK_PRESSED_KEYPAD_OPEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_BACK_PRESSED_KEYPAD_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2732
    new-instance v11, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v13, "ON_BACK_PRESSED_SEARCH_OPEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_BACK_PRESSED_SEARCH_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2733
    new-instance v13, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v15, "ON_RESET_SEARCH_AFTER_DELAY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_RESET_SEARCH_AFTER_DELAY:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2734
    new-instance v15, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v14, "ON_SLIDE_MENU_OPEN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_SLIDE_MENU_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2735
    new-instance v14, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v12, "ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2736
    new-instance v12, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v10, "ON_CONTACT_LIST_MULTI_SELECT_STARTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CONTACT_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2737
    new-instance v10, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v8, "ON_CALL_LOG_LIST_MULTI_SELECT_STARTED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2738
    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v6, "ON_CALL_LOG_FIRST_EXPERIENCE_START"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_FIRST_EXPERIENCE_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2739
    new-instance v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v4, "ON_CALL_LOG_FIRST_EXPERIENCE_FINISH"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_FIRST_EXPERIENCE_FINISH:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2740
    new-instance v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v2, "ON_LIST_MULTI_SELECT_ENDED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_LIST_MULTI_SELECT_ENDED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    .line 2741
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const-string v6, "ON_SEARCH_CONTACTS_START"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_SEARCH_CONTACTS_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 2725
    sput-object v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2725
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;
    .locals 1

    .line 2725
    const-class v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;
    .locals 1

    .line 2725
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    return-object v0
.end method
