.class public final enum Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsentStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

.field public static final enum NON_PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

.field public static final enum PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

.field public static final enum UNKNOWN:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 587
    new-instance v0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->UNKNOWN:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    .line 588
    new-instance v1, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    const-string v3, "NON_PERSONALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->NON_PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    .line 589
    new-instance v3, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    const-string v5, "PERSONALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 586
    sput-object v5, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->$VALUES:[Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 586
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;
    .locals 1

    .line 586
    const-class v0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;
    .locals 1

    .line 586
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->$VALUES:[Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-virtual {v0}, [Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    return-object v0
.end method
