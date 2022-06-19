.class public final enum Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallActionSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

.field public static final enum ACTIVITY:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

.field public static final enum NONE:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

.field public static final enum WIDGET:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2573
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    const-string v1, "ACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->ACTIVITY:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    .line 2574
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    const-string v3, "WIDGET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->WIDGET:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    .line 2575
    new-instance v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->NONE:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2572
    sput-object v5, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->$VALUES:[Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2572
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;
    .locals 1

    .line 2572
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;
    .locals 1

    .line 2572
    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->$VALUES:[Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    return-object v0
.end method
