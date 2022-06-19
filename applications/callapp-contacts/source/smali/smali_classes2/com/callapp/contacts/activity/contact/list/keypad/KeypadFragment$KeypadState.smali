.class public final enum Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeypadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

.field public static final enum KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

.field public static final enum KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

.field public static final enum KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

.field public static final enum KEYPAD_OPENING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 94
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    const-string v1, "KEYPAD_OPENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    .line 95
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    const-string v3, "KEYPAD_OPENED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    .line 96
    new-instance v3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    const-string v5, "KEYPAD_CLOSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    .line 97
    new-instance v5, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    const-string v7, "KEYPAD_CLOSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 93
    sput-object v7, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;
    .locals 1

    .line 93
    const-class v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;
    .locals 1

    .line 93
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    return-object v0
.end method
