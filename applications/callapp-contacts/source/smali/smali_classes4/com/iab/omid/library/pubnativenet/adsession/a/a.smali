.class public final enum Lcom/iab/omid/library/pubnativenet/adsession/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/pubnativenet/adsession/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/pubnativenet/adsession/a/a;

.field public static final enum CLICK:Lcom/iab/omid/library/pubnativenet/adsession/a/a;

.field public static final enum INVITATION_ACCEPTED:Lcom/iab/omid/library/pubnativenet/adsession/a/a;


# instance fields
.field interactionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    const-string v3, "click"

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/pubnativenet/adsession/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/pubnativenet/adsession/a/a;->CLICK:Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    new-instance v1, Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    const-string v3, "INVITATION_ACCEPTED"

    const/4 v4, 0x1

    const-string v5, "invitationAccept"

    invoke-direct {v1, v3, v4, v5}, Lcom/iab/omid/library/pubnativenet/adsession/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/iab/omid/library/pubnativenet/adsession/a/a;->INVITATION_ACCEPTED:Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/iab/omid/library/pubnativenet/adsession/a/a;->$VALUES:[Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/pubnativenet/adsession/a/a;->interactionType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/pubnativenet/adsession/a/a;
    .locals 1

    const-class v0, Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/pubnativenet/adsession/a/a;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/pubnativenet/adsession/a/a;->$VALUES:[Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    invoke-virtual {v0}, [Lcom/iab/omid/library/pubnativenet/adsession/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/pubnativenet/adsession/a/a;->interactionType:Ljava/lang/String;

    return-object v0
.end method
