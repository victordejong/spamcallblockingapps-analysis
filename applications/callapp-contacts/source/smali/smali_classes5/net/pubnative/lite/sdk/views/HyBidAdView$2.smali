.class synthetic Lnet/pubnative/lite/sdk/views/HyBidAdView$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/views/HyBidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$pubnative$lite$sdk$models$AdSize:[I

.field static final synthetic $SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 350
    invoke-static {}, Lnet/pubnative/lite/sdk/models/AdSize;->values()[Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/pubnative/lite/sdk/views/HyBidAdView$2;->$SwitchMap$net$pubnative$lite$sdk$models$AdSize:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/models/AdSize;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/pubnative/lite/sdk/views/HyBidAdView$2;->$SwitchMap$net$pubnative$lite$sdk$models$AdSize:[I

    sget-object v3, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_728x90:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/models/AdSize;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :catch_1
    invoke-static {}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->values()[Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/pubnative/lite/sdk/views/HyBidAdView$2;->$SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position:[I

    :try_start_2
    sget-object v3, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->TOP:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lnet/pubnative/lite/sdk/views/HyBidAdView$2;->$SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position:[I

    sget-object v2, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->BOTTOM:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
