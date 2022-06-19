.class public final synthetic Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->values()[Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$WhenMappings;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->GENERAL:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->OUTGOING:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
