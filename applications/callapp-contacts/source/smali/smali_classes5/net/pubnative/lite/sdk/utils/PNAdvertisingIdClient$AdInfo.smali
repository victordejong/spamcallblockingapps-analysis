.class public Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdInfo"
.end annotation


# instance fields
.field private final mAdvertisingId:Ljava/lang/String;

.field private final mLimitAdTrackingEnabled:Z

.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;Ljava/lang/String;Z)V
    .locals 0

    .line 117
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;->mAdvertisingId:Ljava/lang/String;

    .line 120
    iput-boolean p3, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;->mLimitAdTrackingEnabled:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;->mLimitAdTrackingEnabled:Z

    return v0
.end method
