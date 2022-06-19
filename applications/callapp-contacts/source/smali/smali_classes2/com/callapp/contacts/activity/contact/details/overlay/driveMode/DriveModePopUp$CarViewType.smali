.class public final enum Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CarViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;",
        "",
        "(Ljava/lang/String;I)V",
        "GENERAL",
        "OUTGOING",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

.field public static final enum GENERAL:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

.field public static final enum OUTGOING:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    const-string v2, "GENERAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->GENERAL:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    const-string v2, "OUTGOING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->OUTGOING:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;
    .locals 1

    const-class v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    return-object v0
.end method
