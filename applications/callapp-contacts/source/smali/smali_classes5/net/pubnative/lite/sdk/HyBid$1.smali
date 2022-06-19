.class final Lnet/pubnative/lite/sdk/HyBid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/DeviceInfo$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/HyBid;->initialize(Ljava/lang/String;Landroid/app/Application;Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$initialisationListener:Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lnet/pubnative/lite/sdk/HyBid$1;->val$initialisationListener:Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfoLoaded()V
    .locals 3

    .line 117
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->access$100()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->access$000()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/pubnative/lite/sdk/HyBid$1$1;

    invoke-direct {v2, p0}, Lnet/pubnative/lite/sdk/HyBid$1$1;-><init>(Lnet/pubnative/lite/sdk/HyBid$1;)V

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/lite/sdk/UserDataManager;->initialize(Ljava/lang/String;Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;)V

    return-void
.end method
