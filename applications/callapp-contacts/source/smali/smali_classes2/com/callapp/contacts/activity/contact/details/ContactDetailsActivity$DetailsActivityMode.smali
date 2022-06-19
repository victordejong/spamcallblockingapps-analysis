.class public final enum Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailsActivityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

.field public static final enum CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

.field public static final enum INCOMING_CALL:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

.field public static final enum RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 420
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    const-string v1, "INCOMING_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->INCOMING_CALL:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    .line 421
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    const-string v3, "CONTACT_DETAILS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    .line 422
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    const-string v5, "RECORDER_TEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 419
    sput-object v5, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;
    .locals 1

    .line 419
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;
    .locals 1

    .line 419
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    return-object v0
.end method
