.class final enum Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftIconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

.field public static final enum LOADED_IMAGE:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

.field public static final enum SIMPLE:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->SIMPLE:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    .line 62
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    const-string v3, "LOADED_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->LOADED_IMAGE:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 60
    sput-object v3, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->$VALUES:[Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->getType(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    move-result-object p0

    return-object p0
.end method

.method private static getType(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->LOADED_IMAGE:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    return-object p0

    .line 68
    :cond_0
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->SIMPLE:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;
    .locals 1

    .line 60
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;
    .locals 1

    .line 60
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->$VALUES:[Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    return-object v0
.end method
