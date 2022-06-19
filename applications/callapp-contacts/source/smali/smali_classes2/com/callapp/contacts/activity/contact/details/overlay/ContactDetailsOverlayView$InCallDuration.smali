.class public final enum Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

.field public static final enum AFTER_10_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

.field public static final enum AFTER_15_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

.field public static final enum AFTER_20_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

.field public static final enum AFTER_25_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

.field public static final enum AFTER_30_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

.field public static final enum AFTER_5_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

.field public static final enum NEVER:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;


# instance fields
.field public final duration:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 154
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->NEVER:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    .line 155
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const-string v3, "AFTER_5_SEC"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->AFTER_5_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    .line 156
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const-string v6, "AFTER_10_SEC"

    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-direct {v3, v6, v7, v8}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->AFTER_10_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    .line 157
    new-instance v6, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const-string v8, "AFTER_15_SEC"

    const/4 v9, 0x3

    const/16 v10, 0xf

    invoke-direct {v6, v8, v9, v10}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->AFTER_15_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    .line 158
    new-instance v8, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const-string v10, "AFTER_20_SEC"

    const/4 v11, 0x4

    const/16 v12, 0x14

    invoke-direct {v8, v10, v11, v12}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->AFTER_20_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    .line 159
    new-instance v10, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const-string v12, "AFTER_25_SEC"

    const/16 v13, 0x19

    invoke-direct {v10, v12, v5, v13}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->AFTER_25_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    .line 160
    new-instance v12, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const-string v13, "AFTER_30_SEC"

    const/4 v14, 0x6

    const/16 v15, 0x1e

    invoke-direct {v12, v13, v14, v15}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->AFTER_30_SEC:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v7

    aput-object v6, v13, v9

    aput-object v8, v13, v11

    aput-object v10, v13, v5

    aput-object v12, v13, v14

    .line 153
    sput-object v13, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->duration:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;
    .locals 1

    .line 153
    const-class v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;
    .locals 1

    .line 153
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    return-object v0
.end method
