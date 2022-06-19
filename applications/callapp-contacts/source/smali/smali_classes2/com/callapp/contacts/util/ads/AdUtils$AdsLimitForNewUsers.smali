.class public final enum Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdsLimitForNewUsers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

.field public static final enum ANALYTICS_CARD:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

.field public static final enum CALL_LOG:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

.field public static final enum CONTACT_LIST:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

.field public static final enum SMS:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 704
    new-instance v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    const-string v1, "CALL_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->CALL_LOG:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    .line 705
    new-instance v1, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    const-string v3, "SMS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->SMS:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    .line 706
    new-instance v3, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    const-string v5, "ANALYTICS_CARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->ANALYTICS_CARD:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    .line 707
    new-instance v5, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    const-string v7, "CONTACT_LIST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->CONTACT_LIST:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 703
    sput-object v7, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->$VALUES:[Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 703
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;
    .locals 1

    .line 703
    const-class v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;
    .locals 1

    .line 703
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->$VALUES:[Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-virtual {v0}, [Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    return-object v0
.end method
