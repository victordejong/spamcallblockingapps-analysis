.class public final enum Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;
.super Ljava/lang/Enum;
.source "PhoneNumberLookupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field public static final enum BLOCKED:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field public static final enum INCOMING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field public static final enum OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 335
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    const-string v1, "INCOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->INCOMING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    const-string v3, "OUTGOING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    const-string v5, "BLOCKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->BLOCKED:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 334
    sput-object v5, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;
    .locals 1

    .line 334
    const-class v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;
    .locals 1

    .line 334
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual {v0}, [Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-object v0
.end method
