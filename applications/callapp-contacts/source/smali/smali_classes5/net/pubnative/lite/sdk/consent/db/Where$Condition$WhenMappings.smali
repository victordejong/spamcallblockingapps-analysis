.class public final synthetic Lnet/pubnative/lite/sdk/consent/db/Where$Condition$WhenMappings;
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
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->values()[Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$Condition$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->And:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->Or:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
