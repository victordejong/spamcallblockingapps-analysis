.class public final synthetic Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$WhenMappings;
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

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$WhenMappings;->a:[I

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DONE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->FAILED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->ordinal()I

    move-result v1

    const/4 v3, 0x3

    aput v3, v0, v1

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STARTED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->ordinal()I

    move-result v1

    const/4 v3, 0x4

    aput v3, v0, v1

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->values()[Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$WhenMappings;->b:[I

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1

    return-void
.end method
