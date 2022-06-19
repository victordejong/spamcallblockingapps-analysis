.class public final enum Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EVENT_SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

.field public static final enum RECEIVER:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

.field public static final enum TELECOM:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

.field public static final enum TELEPHONY_MANAGER:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 211
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    const-string v1, "RECEIVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->RECEIVER:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    .line 212
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    const-string v3, "TELEPHONY_MANAGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->TELEPHONY_MANAGER:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    .line 213
    new-instance v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    const-string v5, "TELECOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->TELECOM:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 210
    sput-object v5, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->$VALUES:[Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;
    .locals 1

    .line 210
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;
    .locals 1

    .line 210
    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->$VALUES:[Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    return-object v0
.end method
