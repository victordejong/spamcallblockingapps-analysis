.class public final synthetic Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$WhenMappings;
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

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->values()[Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$WhenMappings;->a:[I

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->FINISHED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->EMPTY:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->STOPPED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
