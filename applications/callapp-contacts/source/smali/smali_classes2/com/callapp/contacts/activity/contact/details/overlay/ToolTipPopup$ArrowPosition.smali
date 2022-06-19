.class final enum Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ArrowPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

.field public static final enum BOTTOM:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

.field public static final enum TOP:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->TOP:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    .line 71
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->BOTTOM:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 69
    sput-object v3, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;
    .locals 1

    .line 69
    const-class v0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;
    .locals 1

    .line 69
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    return-object v0
.end method
