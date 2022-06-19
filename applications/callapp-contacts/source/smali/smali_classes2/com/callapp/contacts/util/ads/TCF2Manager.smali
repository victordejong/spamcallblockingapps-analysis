.class public Lcom/callapp/contacts/util/ads/TCF2Manager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_0

    sput-object v0, Lcom/callapp/contacts/util/ads/TCF2Manager;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5
        0x9
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/callapp/contacts/util/ads/TCF2Manager;->b(Landroid/app/Activity;)Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 5

    .line 3168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3169
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bd:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v2, 0x1

    .line 4039
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    move-result-object v1

    .line 3169
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x3

    if-gt v1, v3, :cond_0

    .line 3171
    sget-object v3, Lcom/callapp/contacts/util/ads/TCF2Manager;->a:[I

    aget v4, v3, v1

    sub-int/2addr v1, v2

    aget v1, v3, v1

    sub-int/2addr v4, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 3172
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 3173
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 3174
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 3175
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 3176
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->be:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V
    .locals 4

    .line 34
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 35
    invoke-interface {p1, p0}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/google/android/c/d$a;

    invoke-direct {v0}, Lcom/google/android/c/d$a;-><init>()V

    .line 40
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bf:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    new-instance v1, Lcom/google/android/c/a$a;

    invoke-direct {v1, p0}, Lcom/google/android/c/a$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1006
    iput v2, v1, Lcom/google/android/c/a$a;->b:I

    .line 45
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1008
    iget-object v3, v1, Lcom/google/android/c/a$a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v1}, Lcom/google/android/c/a$a;->a()Lcom/google/android/c/a;

    move-result-object v1

    .line 2005
    iput-object v1, v0, Lcom/google/android/c/d$a;->c:Lcom/google/android/c/a;

    .line 2009
    :cond_1
    new-instance v1, Lcom/google/android/c/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/c/d;-><init>(Lcom/google/android/c/d$a;Lcom/google/android/c/h;)V

    .line 3001
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/bb;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/consent_sdk/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/bb;->a()Lcom/google/android/gms/internal/consent_sdk/cc;

    move-result-object v0

    .line 52
    new-instance v2, Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/callapp/contacts/util/ads/TCF2Manager$1;-><init>(Landroid/app/Activity;Lcom/google/android/c/c;ZLcom/callapp/contacts/manager/task/OutcomeListener;)V

    new-instance p2, Lcom/callapp/contacts/util/ads/TCF2Manager$2;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/util/ads/TCF2Manager$2;-><init>(Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    invoke-interface {v0, p0, v1, v2, p2}, Lcom/google/android/c/c;->a(Landroid/app/Activity;Lcom/google/android/c/d;Lcom/google/android/c/c$b;Lcom/google/android/c/c$a;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;)Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;
    .locals 3

    .line 142
    const-class v0, Lcom/callapp/contacts/util/ads/TCF2Manager;

    const/4 v1, 0x0

    .line 144
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "IABTCF_VendorConsents"

    .line 145
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 p0, 0x0

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TCF2 consent status NON_PERSONALIZED"

    .line 152
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 153
    sget-object p0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->NON_PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    .line 154
    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;)V

    goto :goto_1

    .line 155
    :cond_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TCF2 consent status PERSONALIZED"

    .line 156
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 157
    sget-object p0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    .line 158
    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;)V

    goto :goto_1

    :cond_1
    const-string p0, "TCF2 consent status UNKNOWN"

    .line 160
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 161
    sget-object p0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->UNKNOWN:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    :goto_1
    return-object p0
.end method
