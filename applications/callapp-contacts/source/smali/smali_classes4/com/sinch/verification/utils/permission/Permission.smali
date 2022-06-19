.class public final enum Lcom/sinch/verification/utils/permission/Permission;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sinch/verification/utils/permission/Permission;",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sinch/verification/utils/permission/Permission;",
        "",
        "(Ljava/lang/String;I)V",
        "androidValue",
        "",
        "getAndroidValue",
        "()Ljava/lang/String;",
        "ACCESS_NETWORK_STATE",
        "CHANGE_NETWORK_STATE",
        "READ_PHONE_STATE",
        "READ_CALL_LOG",
        "CALL_PHONE",
        "READ_SMS",
        "RECEIVE_SMS",
        "ACCESS_COARSE_LOCATION",
        "ACCESS_FINE_LOCATION",
        "utils_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum ACCESS_COARSE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum ACCESS_FINE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum ACCESS_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum CALL_PHONE:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum CHANGE_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum READ_CALL_LOG:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum READ_PHONE_STATE:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum READ_SMS:Lcom/sinch/verification/utils/permission/Permission;

.field public static final enum RECEIVE_SMS:Lcom/sinch/verification/utils/permission/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sinch/verification/utils/permission/Permission;

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "ACCESS_NETWORK_STATE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "CHANGE_NETWORK_STATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->CHANGE_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "READ_PHONE_STATE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->READ_PHONE_STATE:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "READ_CALL_LOG"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->READ_CALL_LOG:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "CALL_PHONE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->CALL_PHONE:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "READ_SMS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->READ_SMS:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "RECEIVE_SMS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->RECEIVE_SMS:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "ACCESS_COARSE_LOCATION"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_COARSE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/utils/permission/Permission;

    const-string v2, "ACCESS_FINE_LOCATION"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/sinch/verification/utils/permission/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_FINE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sinch/verification/utils/permission/Permission;->$VALUES:[Lcom/sinch/verification/utils/permission/Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sinch/verification/utils/permission/Permission;
    .locals 1

    const-class v0, Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/utils/permission/Permission;

    return-object p0
.end method

.method public static values()[Lcom/sinch/verification/utils/permission/Permission;
    .locals 1

    sget-object v0, Lcom/sinch/verification/utils/permission/Permission;->$VALUES:[Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v0}, [Lcom/sinch/verification/utils/permission/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sinch/verification/utils/permission/Permission;

    return-object v0
.end method


# virtual methods
.method public final getAndroidValue()Ljava/lang/String;
    .locals 2

    .line 23
    sget-object v0, Lcom/sinch/verification/utils/permission/Permission$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/sinch/verification/utils/permission/Permission;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    :pswitch_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0

    :pswitch_2
    const-string v0, "android.permission.RECEIVE_SMS"

    return-object v0

    :pswitch_3
    const-string v0, "android.permission.READ_SMS"

    return-object v0

    :pswitch_4
    const-string v0, "android.permission.CALL_PHONE"

    return-object v0

    :pswitch_5
    const-string v0, "android.permission.READ_CALL_LOG"

    return-object v0

    :pswitch_6
    const-string v0, "android.permission.READ_PHONE_STATE"

    return-object v0

    :pswitch_7
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    return-object v0

    :pswitch_8
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
