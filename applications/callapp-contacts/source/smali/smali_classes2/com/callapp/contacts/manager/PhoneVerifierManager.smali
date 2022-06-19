.class public Lcom/callapp/contacts/manager/PhoneVerifierManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_NEED_TO_SHOW_SOCIAL"

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->getPhoneAndCountry()Landroid/util/Pair;

    move-result-object p1

    .line 53
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const-string v1, "EXTRA_SUGGESTED_PHONE_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x1d1d

    .line 57
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;Z)V
    .locals 2

    .line 75
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 76
    :try_start_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNull()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ap:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 78
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 79
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->isReliable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 83
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->a()V

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static get()Lcom/callapp/contacts/manager/PhoneVerifierManager;
    .locals 1

    .line 45
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPhoneVerifierManager()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V
    .locals 4

    .line 62
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    sget-object v2, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->PHONE_NUMBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;-><init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v1, p1}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;Z)V

    .line 67
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object p1

    .line 68
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->set(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1, v0, p2, p3}, Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
