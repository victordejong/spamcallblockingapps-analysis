.class public Lcom/amazon/device/ads/AdRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdRegistration$CMPFlavor;,
        Lcom/amazon/device/ads/AdRegistration$ConsentStatus;
    }
.end annotation


# static fields
.field static a:Lcom/amazon/device/ads/MRAIDPolicy; = null

.field static b:[Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "AdRegistration"

.field private static d:Lcom/amazon/device/ads/AdRegistration; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Landroid/content/Context; = null

.field private static g:Z = false

.field private static h:Z = false

.field private static i:Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

.field private static j:Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

.field private static k:Z

.field private static l:Ljava/lang/String;


# instance fields
.field private m:Lcom/amazon/device/ads/ActivityMonitor;

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/amazon/device/ads/EventDistributor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget-object v0, Lcom/amazon/device/ads/MRAIDPolicy;->AUTO_DETECT:Lcom/amazon/device/ads/MRAIDPolicy;

    sput-object v0, Lcom/amazon/device/ads/AdRegistration;->a:Lcom/amazon/device/ads/MRAIDPolicy;

    const-string v0, "com.amazon.admob_adapter.APSAdMobCustomBannerEvent"

    const-string v1, "com.amazon.mopub_adapter.APSMopubCustomBannerEvent"

    .line 57
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdRegistration;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdRegistration;->n:Ljava/util/Set;

    .line 73
    new-instance v0, Lcom/amazon/device/ads/EventDistributor;

    invoke-direct {v0}, Lcom/amazon/device/ads/EventDistributor;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdRegistration;->o:Lcom/amazon/device/ads/EventDistributor;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    sput-object p1, Lcom/amazon/device/ads/AdRegistration;->e:Ljava/lang/String;

    .line 137
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/amazon/device/ads/AdRegistration;->f:Landroid/content/Context;

    .line 141
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->b()Lcom/amazon/device/ads/DtbSharedPreferences;

    const-string p1, "android.permission.INTERNET"

    .line 142
    invoke-virtual {p2, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 144
    invoke-virtual {p2, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 145
    sget-object p1, Lcom/amazon/device/ads/AdRegistration;->c:Ljava/lang/String;

    const-string p2, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-static {p1, p2}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 151
    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "8.4.3"

    .line 153
    invoke-static {p1}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/String;)V

    .line 154
    invoke-static {p2}, Lcom/amazon/device/ads/DtbSharedPreferences;->d(Z)V

    .line 158
    :cond_2
    sget-object p1, Lcom/amazon/device/ads/AdRegistration$ConsentStatus;->CONSENT_NOT_DEFINED:Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

    sput-object p1, Lcom/amazon/device/ads/AdRegistration;->i:Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

    .line 159
    sget-object p1, Lcom/amazon/device/ads/AdRegistration$CMPFlavor;->CMP_NOT_DEFINED:Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

    sput-object p1, Lcom/amazon/device/ads/AdRegistration;->j:Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

    .line 160
    sput-boolean p2, Lcom/amazon/device/ads/AdRegistration;->k:Z

    return-void

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameters for initialization."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    sget-object p2, Lcom/amazon/device/ads/AdRegistration;->c:Ljava/lang/String;

    const-string v0, "mDTB SDK initialize failed due to invalid registration parameters."

    invoke-static {p2, v0, p1}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 132
    throw p1
.end method

.method static a()Landroid/app/Activity;
    .locals 2

    .line 69
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->d:Lcom/amazon/device/ads/AdRegistration;

    .line 1061
    iget-object v0, v0, Lcom/amazon/device/ads/AdRegistration;->m:Lcom/amazon/device/ads/ActivityMonitor;

    .line 2031
    iget-object v1, v0, Lcom/amazon/device/ads/ActivityMonitor;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 2032
    iget-object v0, v0, Lcom/amazon/device/ads/ActivityMonitor;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/device/ads/AdRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/amazon/device/ads/AdRegistration;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdRegistration;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/device/ads/AdRegistration;->d:Lcom/amazon/device/ads/AdRegistration;

    .line 177
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getInstance()Lcom/amazon/device/ads/DTBMetricsConfiguration;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 179
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    sput-object p0, Lcom/amazon/device/ads/AdRegistration;->e:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->b()Lcom/amazon/device/ads/DtbSharedPreferences;

    .line 185
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/device/ads/AdRegistration;->d:Lcom/amazon/device/ads/AdRegistration;

    new-instance v0, Lcom/amazon/device/ads/ActivityMonitor;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/ActivityMonitor;-><init>(Landroid/content/Context;)V

    .line 2065
    iput-object v0, p0, Lcom/amazon/device/ads/AdRegistration;->m:Lcom/amazon/device/ads/ActivityMonitor;

    .line 186
    sget-object p0, Lcom/amazon/device/ads/AdRegistration;->d:Lcom/amazon/device/ads/AdRegistration;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amazon/device/ads/AdRegistration;->f:Landroid/content/Context;

    return-void

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameters:context for initialization."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->c:Ljava/lang/String;

    const-string v1, "mDTB SDK initialize failed due to invalid registration parameter:context."

    invoke-static {v0, v1, p0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 212
    throw p0
.end method

.method public static a(Lcom/amazon/device/ads/MRAIDPolicy;)V
    .locals 0

    .line 222
    sput-object p0, Lcom/amazon/device/ads/AdRegistration;->a:Lcom/amazon/device/ads/MRAIDPolicy;

    .line 223
    invoke-static {}, Lcom/amazon/device/ads/DTBAdRequest;->a()V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 0

    .line 238
    invoke-static {p0}, Lcom/amazon/device/ads/DTBAdRequest;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 170
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->d:Lcom/amazon/device/ads/AdRegistration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static d()Landroid/content/Context;
    .locals 1

    .line 217
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static e()Lcom/amazon/device/ads/MRAIDPolicy;
    .locals 1

    .line 227
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->a:Lcom/amazon/device/ads/MRAIDPolicy;

    return-object v0
.end method

.method public static f()V
    .locals 1

    .line 248
    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->All:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->a(Lcom/amazon/device/ads/DTBLogLevel;)V

    return-void
.end method

.method public static g()Z
    .locals 1

    .line 286
    sget-boolean v0, Lcom/amazon/device/ads/AdRegistration;->g:Z

    return v0
.end method

.method public static h()V
    .locals 1

    const/4 v0, 0x1

    .line 296
    sput-boolean v0, Lcom/amazon/device/ads/AdRegistration;->h:Z

    return-void
.end method

.method public static i()Z
    .locals 1

    .line 305
    sget-boolean v0, Lcom/amazon/device/ads/AdRegistration;->h:Z

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 310
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k()[Ljava/lang/String;
    .locals 1

    .line 314
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static l()Z
    .locals 5

    .line 439
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 441
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static m()Lcom/amazon/device/ads/AdRegistration$ConsentStatus;
    .locals 2

    .line 463
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->t()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 469
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->i:Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

    return-object v0

    .line 471
    :cond_0
    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration$ConsentStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

    move-result-object v0

    return-object v0

    .line 464
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static n()Lcom/amazon/device/ads/AdRegistration$CMPFlavor;
    .locals 2

    .line 481
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 487
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->j:Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

    return-object v0

    .line 489
    :cond_0
    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration$CMPFlavor;->valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

    move-result-object v0

    return-object v0

    .line 482
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static o()Ljava/lang/String;
    .locals 6

    .line 569
    sget-boolean v0, Lcom/amazon/device/ads/AdRegistration;->k:Z

    if-eqz v0, :cond_4

    .line 570
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->s()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->t()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_2

    .line 2619
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 2620
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_2

    .line 2622
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 2623
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2624
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 2625
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 577
    :cond_2
    invoke-static {v1}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 580
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->f(Ljava/lang/String;)V

    .line 584
    :cond_3
    :goto_2
    sput-boolean v3, Lcom/amazon/device/ads/AdRegistration;->k:Z

    .line 585
    sput-object v0, Lcom/amazon/device/ads/AdRegistration;->l:Ljava/lang/String;

    return-object v0

    .line 588
    :cond_4
    sget-object v0, Lcom/amazon/device/ads/AdRegistration;->l:Ljava/lang/String;

    return-object v0
.end method
