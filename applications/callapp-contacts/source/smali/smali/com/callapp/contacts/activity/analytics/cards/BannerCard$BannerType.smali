.class public final enum Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/BannerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

.field public static final enum DEFAULT_DIALER:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

.field public static final enum PREMIUM:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    const-string v1, "DEFAULT_DIALER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->DEFAULT_DIALER:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    const-string v3, "PREMIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->PREMIUM:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 49
    sput-object v3, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;
    .locals 1

    .line 49
    const-class v0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;
    .locals 1

    .line 49
    sget-object v0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    return-object v0
.end method
