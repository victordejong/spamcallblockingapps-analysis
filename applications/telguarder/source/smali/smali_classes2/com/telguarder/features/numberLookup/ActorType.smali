.class public final enum Lcom/telguarder/features/numberLookup/ActorType;
.super Ljava/lang/Enum;
.source "ActorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/numberLookup/ActorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/numberLookup/ActorType;

.field public static final enum COMPANY:Lcom/telguarder/features/numberLookup/ActorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company"
    .end annotation
.end field

.field public static final enum GOOGLE:Lcom/telguarder/features/numberLookup/ActorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "google"
    .end annotation
.end field

.field public static final enum PERSON:Lcom/telguarder/features/numberLookup/ActorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "person"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/telguarder/features/numberLookup/ActorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unknown"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/telguarder/features/numberLookup/ActorType;

    const-string v1, "COMPANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/numberLookup/ActorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/numberLookup/ActorType;->COMPANY:Lcom/telguarder/features/numberLookup/ActorType;

    .line 8
    new-instance v1, Lcom/telguarder/features/numberLookup/ActorType;

    const-string v3, "PERSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/numberLookup/ActorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/numberLookup/ActorType;->PERSON:Lcom/telguarder/features/numberLookup/ActorType;

    .line 10
    new-instance v3, Lcom/telguarder/features/numberLookup/ActorType;

    const-string v5, "GOOGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/numberLookup/ActorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/numberLookup/ActorType;->GOOGLE:Lcom/telguarder/features/numberLookup/ActorType;

    .line 12
    new-instance v5, Lcom/telguarder/features/numberLookup/ActorType;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/features/numberLookup/ActorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/features/numberLookup/ActorType;->UNKNOWN:Lcom/telguarder/features/numberLookup/ActorType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/telguarder/features/numberLookup/ActorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/telguarder/features/numberLookup/ActorType;->$VALUES:[Lcom/telguarder/features/numberLookup/ActorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/ActorType;
    .locals 1

    .line 5
    const-class v0, Lcom/telguarder/features/numberLookup/ActorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/ActorType;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/numberLookup/ActorType;
    .locals 1

    .line 5
    sget-object v0, Lcom/telguarder/features/numberLookup/ActorType;->$VALUES:[Lcom/telguarder/features/numberLookup/ActorType;

    invoke-virtual {v0}, [Lcom/telguarder/features/numberLookup/ActorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/numberLookup/ActorType;

    return-object v0
.end method
