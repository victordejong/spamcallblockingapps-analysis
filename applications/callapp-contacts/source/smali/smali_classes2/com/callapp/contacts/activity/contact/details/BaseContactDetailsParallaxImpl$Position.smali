.class public final enum Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

.field public static final enum CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

.field public static final enum OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

.field public static final enum SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 413
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    .line 414
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const-string v3, "SEMI_OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    .line 415
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const-string v5, "OPEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 412
    sput-object v5, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3500(I)Z
    .locals 0

    .line 412
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->isAboveMidHeight(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(I)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 0

    .line 412
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->getClosestPosition(I)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    move-result-object p0

    return-object p0
.end method

.method private static getClosestPosition(I)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 3

    .line 423
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_0

    .line 424
    sget-object p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    .line 425
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->getSemiHeight()F

    move-result v0

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->getFullHeight()F

    move-result v1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->getSemiHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    .line 426
    sget-object p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    goto :goto_0

    .line 428
    :cond_1
    sget-object p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    .line 430
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->h()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    move-result-object p0

    return-object p0
.end method

.method private static isAboveMidHeight(I)Z
    .locals 1

    int-to-float p0, p0

    .line 418
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->getSemiHeight()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 1

    .line 412
    const-class v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 1

    .line 412
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    return-object v0
.end method
