.class final Lio/bidmachine/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final IAB_CONSENT_STRING:Ljava/lang/String; = "IABConsent_ConsentString"

.field static final IAB_SUBJECT_TO_GDPR:Ljava/lang/String; = "IABConsent_SubjectToGDPR"

.field static final IAB_TCF_GDPR_APPLIES:Ljava/lang/String; = "IABTCF_gdprApplies"

.field static final IAB_TCF_TC_STRING:Ljava/lang/String; = "IABTCF_TCString"

.field static final IAB_US_PRIVACY_STRING:Ljava/lang/String; = "IABUSPrivacy_String"


# instance fields
.field private iabGDPRConsentString:Ljava/lang/String;

.field private iabSubjectToGDPR:Ljava/lang/Boolean;

.field private iabTcfGdprApplies:Ljava/lang/Boolean;

.field private iabTcfTcString:Ljava/lang/String;

.field private iabUSPrivacyString:Ljava/lang/String;

.field private final sharedPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lio/bidmachine/e$1;

    invoke-direct {v0, p0}, Lio/bidmachine/e$1;-><init>(Lio/bidmachine/e;)V

    iput-object v0, p0, Lio/bidmachine/e;->sharedPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateConsentString(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$100(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateGDPRSubject(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateUSPrivacyString(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$300(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateTcfTcString(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateTcfGdprApplies(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private updateConsentString(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "IABConsent_ConsentString"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/e;->readString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/e;->iabGDPRConsentString:Ljava/lang/String;

    return-void
.end method

.method private updateGDPRSubject(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "IABConsent_SubjectToGDPR"

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/e;->readString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lio/bidmachine/e;->iabSubjectToGDPR:Ljava/lang/Boolean;

    return-void
.end method

.method private updateTcfGdprApplies(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "IABTCF_gdprApplies"

    const/4 v1, -0x1

    .line 118
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/e;->readInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 120
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/bidmachine/e;->iabTcfGdprApplies:Ljava/lang/Boolean;

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 122
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/bidmachine/e;->iabTcfGdprApplies:Ljava/lang/Boolean;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lio/bidmachine/e;->iabTcfGdprApplies:Ljava/lang/Boolean;

    return-void
.end method

.method private updateTcfTcString(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "IABTCF_TCString"

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/e;->readString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/e;->iabTcfTcString:Ljava/lang/String;

    return-void
.end method

.method private updateUSPrivacyString(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "IABUSPrivacy_String"

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/e;->readString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/e;->iabUSPrivacyString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final getGDPRConsentString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/bidmachine/e;->iabGDPRConsentString:Ljava/lang/String;

    return-object v0
.end method

.method final getSubjectToGDPR()Ljava/lang/Boolean;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/bidmachine/e;->iabSubjectToGDPR:Ljava/lang/Boolean;

    return-object v0
.end method

.method final getTcfGdprApplies()Ljava/lang/Boolean;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/bidmachine/e;->iabTcfGdprApplies:Ljava/lang/Boolean;

    return-object v0
.end method

.method final getTcfTcString()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/bidmachine/e;->iabTcfTcString:Ljava/lang/String;

    return-object v0
.end method

.method final getUSPrivacyString()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lio/bidmachine/e;->iabUSPrivacyString:Ljava/lang/String;

    return-object v0
.end method

.method final initialize(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lio/bidmachine/e;->sharedPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 66
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateConsentString(Landroid/content/SharedPreferences;)V

    .line 67
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateGDPRSubject(Landroid/content/SharedPreferences;)V

    .line 68
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateUSPrivacyString(Landroid/content/SharedPreferences;)V

    .line 69
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateTcfTcString(Landroid/content/SharedPreferences;)V

    .line 70
    invoke-direct {p0, p1}, Lio/bidmachine/e;->updateTcfGdprApplies(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method final readInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1

    .line 148
    :try_start_0
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method final readString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 134
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    :catch_0
    :cond_0
    return-object p3
.end method
