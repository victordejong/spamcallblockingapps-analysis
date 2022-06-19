.class public Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/pubnative/lite/sdk/models/AdvertisingInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBidAdvertisingId"

.field private static final sAdvertisingIdClientClassName:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->mListener:Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;

    return-void
.end method

.method private reflectedGetAdvertisingId(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getId"

    .line 84
    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/reflection/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method private reflectedIsLimitAdTrackingEnabled(Ljava/lang/Object;Z)Z
    .locals 1

    :try_start_0
    const-string v0, "isLimitAdTrackingEnabled"

    .line 92
    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/reflection/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->doInBackground([Ljava/lang/Void;)Lnet/pubnative/lite/sdk/models/AdvertisingInfo;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/pubnative/lite/sdk/models/AdvertisingInfo;
    .locals 4

    .line 57
    iget-object p1, p0, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "getAdvertisingIdInfo"

    .line 59
    invoke-static {v1, p1}, Lnet/pubnative/lite/sdk/utils/reflection/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;

    move-result-object p1

    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 60
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;->setStatic(Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;

    move-result-object p1

    const-class v2, Landroid/content/Context;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1, v1}, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->reflectedGetAdvertisingId(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-direct {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->reflectedIsLimitAdTrackingEnabled(Ljava/lang/Object;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    sget-object p1, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->TAG:Ljava/lang/String;

    const-string v2, "Unable to obtain Advertising ID."

    invoke-static {p1, v2}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    new-instance p1, Lnet/pubnative/lite/sdk/models/AdvertisingInfo;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lnet/pubnative/lite/sdk/models/AdvertisingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lnet/pubnative/lite/sdk/models/AdvertisingInfo;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->onPostExecute(Lnet/pubnative/lite/sdk/models/AdvertisingInfo;)V

    return-void
.end method

.method protected onPostExecute(Lnet/pubnative/lite/sdk/models/AdvertisingInfo;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;->mListener:Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/AdvertisingInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/AdvertisingInfo;->isLimitTrackingEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;->onHyBidAdvertisingIdFinish(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
