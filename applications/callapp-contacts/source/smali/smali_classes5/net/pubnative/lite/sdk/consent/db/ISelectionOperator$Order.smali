.class public final enum Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;",
        "",
        "(Ljava/lang/String;I)V",
        "getClauseString",
        "",
        "Ascending",
        "Descending",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

.field public static final enum Ascending:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

.field public static final enum Descending:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    const-string v2, "Ascending"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;->Ascending:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    const-string v2, "Descending"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;->Descending:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    aput-object v1, v0, v3

    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;->$VALUES:[Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;
    .locals 1

    const-class v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;
    .locals 1

    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;->$VALUES:[Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    return-object v0
.end method


# virtual methods
.method public final getClauseString()Ljava/lang/String;
    .locals 2

    .line 88
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "DESC"

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "ASC"

    return-object v0
.end method
