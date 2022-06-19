.class public Lcom/pubmatic/sdk/common/models/POBDeviceInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/models/POBDeviceInfo$DEVICE_ID_TYPE;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/content/Context;

.field private p:F

.field private q:Ljava/lang/String;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const-string v3, "aid_shared_preference"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "aid_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    const-string v1, "aid_shared_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "aid_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    const-string v1, "aid_shared_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "limited_tracking_ad_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->d:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->updateAdvertisingIdInfo()V

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->e:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->q:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->f:Ljava/lang/String;

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->i:Ljava/lang/String;

    const-string v0, "Android"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->j:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->k:Ljava/lang/String;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->screenWidth:I

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->screenHeight:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->l:Ljava/lang/String;

    :cond_5
    const-string p1, "GMT"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "ZZZZZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->n:Ljava/lang/String;

    iget-object p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->p:F

    invoke-static {}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getTimeOffsetInMinutes()I

    move-result p1

    iput p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a:I

    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "aid_shared_preference"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "limited_tracking_ad_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method static synthetic c(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAcceptLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIdType(Z)Lcom/pubmatic/sdk/common/models/POBDeviceInfo$DEVICE_ID_TYPE;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$DEVICE_ID_TYPE;->ADVERTISING_ID:Lcom/pubmatic/sdk/common/models/POBDeviceInfo$DEVICE_ID_TYPE;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$DEVICE_ID_TYPE;->ANDROID_ID:Lcom/pubmatic/sdk/common/models/POBDeviceInfo$DEVICE_ID_TYPE;

    :goto_0
    return-object p1
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getLmtEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMccmnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPxratio()F
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->p:F

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->screenHeight:I

    return v0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->screenWidth:I

    return v0
.end method

.method public getTimeZoneOffsetInMinutes()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "PMDeviceInfo"

    const-string v4, "Failed to retrieve user agent from web view, %s"

    invoke-static {v0, v4, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, ""

    :try_start_1
    const-string v4, "http.agent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v2

    :catch_1
    move-exception v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Failed to retrieve user agent (using http.agent) from WebView, %s"

    invoke-static {v0, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public updateAdvertisingIdInfo()V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;-><init>(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
