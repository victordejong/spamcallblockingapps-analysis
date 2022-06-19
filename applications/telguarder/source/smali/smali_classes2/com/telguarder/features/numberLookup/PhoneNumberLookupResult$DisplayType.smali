.class public final enum Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;
.super Ljava/lang/Enum;
.source "PhoneNumberLookupResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field public static final enum COMPANY_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field public static final enum CONTACT_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field public static final enum CONTACT_WITH_COMPANY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field public static final enum CONTACT_WITH_PERSON:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field public static final enum NONE:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field public static final enum PERSON_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field public static final enum PERSON_WITH_COMPANY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->NONE:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const-string v3, "CONTACT_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->CONTACT_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const-string v5, "CONTACT_WITH_COMPANY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->CONTACT_WITH_COMPANY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    new-instance v5, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const-string v7, "CONTACT_WITH_PERSON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->CONTACT_WITH_PERSON:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    new-instance v7, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const-string v9, "COMPANY_ONLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->COMPANY_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    new-instance v9, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const-string v11, "PERSON_WITH_COMPANY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->PERSON_WITH_COMPANY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    new-instance v11, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const-string v13, "PERSON_ONLY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->PERSON_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 20
    sput-object v13, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;
    .locals 1

    .line 20
    const-class v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;
    .locals 1

    .line 20
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    invoke-virtual {v0}, [Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    return-object v0
.end method
