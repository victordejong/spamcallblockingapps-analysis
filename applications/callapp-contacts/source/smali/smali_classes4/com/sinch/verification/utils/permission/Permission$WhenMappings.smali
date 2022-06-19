.class public final synthetic Lcom/sinch/verification/utils/permission/Permission$WhenMappings;
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
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sinch/verification/utils/permission/Permission;->values()[Lcom/sinch/verification/utils/permission/Permission;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sinch/verification/utils/permission/Permission$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->CHANGE_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->READ_PHONE_STATE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->READ_CALL_LOG:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->CALL_PHONE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->READ_SMS:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->RECEIVE_SMS:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_COARSE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_FINE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v1}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method
