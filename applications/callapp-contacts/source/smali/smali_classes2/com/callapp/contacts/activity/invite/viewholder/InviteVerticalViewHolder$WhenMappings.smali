.class public final synthetic Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$WhenMappings;
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

    invoke-static {}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->values()[Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$WhenMappings;->a:[I

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->IDLE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->PENDING:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->INSTALLED:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
