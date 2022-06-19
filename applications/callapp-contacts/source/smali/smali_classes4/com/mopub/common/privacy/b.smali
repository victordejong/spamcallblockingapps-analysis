.class final Lcom/mopub/common/privacy/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentData;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/mopub/common/privacy/ConsentStatus;

.field d:Lcom/mopub/common/privacy/ConsentStatus;

.field e:Ljava/lang/String;

.field f:Z

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Lcom/mopub/common/privacy/ConsentStatus;

.field j:Z

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Z

.field u:Ljava/lang/Boolean;

.field private final v:Landroid/content/Context;

.field private w:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/b;->v:Landroid/content/Context;

    .line 92
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    iput-object v0, p0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    const-string v0, ""

    .line 93
    iput-object v0, p0, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    const-string v1, "com.mopub.privacy"

    .line 1098
    invoke-static {p1, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "info/adunit"

    .line 1100
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    const-string v1, "info/cached_last_ad_unit_id_used_for_init"

    const/4 v2, 0x0

    .line 1101
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->b:Ljava/lang/String;

    .line 1103
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 1104
    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "info/consent_status"

    .line 1103
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "info/last_successfully_synced_consent_status"

    .line 1105
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1108
    iput-object v2, p0, Lcom/mopub/common/privacy/b;->d:Lcom/mopub/common/privacy/ConsentStatus;

    goto :goto_0

    .line 1111
    :cond_0
    invoke-static {v1}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->d:Lcom/mopub/common/privacy/ConsentStatus;

    :goto_0
    const-string v1, "info/is_whitelisted"

    const/4 v3, 0x0

    .line 1113
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mopub/common/privacy/b;->j:Z

    const-string v1, "info/current_vendor_list_version"

    .line 1114
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->k:Ljava/lang/String;

    const-string v1, "info/current_vendor_list_link"

    .line 1116
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->l:Ljava/lang/String;

    const-string v1, "info/current_privacy_policy_version"

    .line 1117
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->m:Ljava/lang/String;

    const-string v1, "info/current_privacy_policy_link"

    .line 1119
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->n:Ljava/lang/String;

    const-string v1, "info/current_vendor_list_iab_format"

    .line 1121
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->o:Ljava/lang/String;

    const-string v1, "info/current_vendor_list_iab_hash"

    .line 1123
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->p:Ljava/lang/String;

    const-string v1, "info/consented_vendor_list_version"

    .line 1125
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->q:Ljava/lang/String;

    const-string v1, "info/consented_privacy_policy_version"

    .line 1127
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->r:Ljava/lang/String;

    const-string v1, "info/consented_vendor_list_iab_format"

    .line 1129
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->s:Ljava/lang/String;

    const-string v1, "info/extras"

    .line 1131
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->w:Ljava/lang/String;

    const-string v1, "info/consent_change_reason"

    .line 1132
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->e:Ljava/lang/String;

    const-string v1, "info/reacquire_consent"

    .line 1133
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mopub/common/privacy/b;->t:Z

    const-string v1, "info/gdpr_applies"

    .line 1134
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1136
    iput-object v2, p0, Lcom/mopub/common/privacy/b;->u:Ljava/lang/Boolean;

    goto :goto_1

    .line 1138
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/b;->u:Ljava/lang/Boolean;

    :goto_1
    const-string v1, "info/force_gdpr_applies"

    .line 1140
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mopub/common/privacy/b;->f:Z

    const-string v1, "info/udid"

    .line 1142
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "info/ifa"

    if-nez v4, :cond_2

    const-string v4, "ifa:"

    .line 1144
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    .line 1145
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1146
    iget-object v3, p0, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1147
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 1150
    :cond_2
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    :goto_2
    const-string v0, "info/last_changed_ms"

    .line 1153
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/b;->h:Ljava/lang/String;

    const-string v0, "info/consent_status_before_dnt"

    .line 1154
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    iput-object v2, p0, Lcom/mopub/common/privacy/b;->i:Lcom/mopub/common/privacy/ConsentStatus;

    return-void

    .line 1159
    :cond_3
    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/b;->i:Lcom/mopub/common/privacy/ConsentStatus;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 448
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 450
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 451
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 429
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 431
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 435
    :cond_0
    invoke-static {p1, p2}, Lcom/mopub/common/privacy/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%%LANGUAGE%%"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->v:Landroid/content/Context;

    const-string v1, "com.mopub.privacy"

    invoke-static {v0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    const-string v2, "info/adunit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->b:Ljava/lang/String;

    const-string v2, "info/cached_last_ad_unit_id_used_for_init"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/consent_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->d:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "info/last_successfully_synced_consent_status"

    .line 169
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-boolean v1, p0, Lcom/mopub/common/privacy/b;->j:Z

    const-string v3, "info/is_whitelisted"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->k:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->l:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_link"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->m:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->n:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_link"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->o:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_format"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->p:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_hash"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->q:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->r:Ljava/lang/String;

    const-string v3, "info/consented_privacy_policy_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->s:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_iab_format"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->w:Ljava/lang/String;

    const-string v3, "info/extras"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->e:Ljava/lang/String;

    const-string v3, "info/consent_change_reason"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-boolean v1, p0, Lcom/mopub/common/privacy/b;->t:Z

    const-string v3, "info/reacquire_consent"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->u:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "info/gdpr_applies"

    .line 184
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    iget-boolean v1, p0, Lcom/mopub/common/privacy/b;->f:Z

    const-string v3, "info/force_gdpr_applies"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    const-string v3, "info/ifa"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->h:Ljava/lang/String;

    const-string v3, "info/last_changed_ms"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    iget-object v1, p0, Lcom/mopub/common/privacy/b;->i:Lcom/mopub/common/privacy/ConsentStatus;

    if-nez v1, :cond_2

    goto :goto_2

    .line 190
    :cond_2
    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v1, "info/consent_status_before_dnt"

    .line 189
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final chooseAdUnit()Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getConsentedPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getConsentedVendorListIabFormat()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getConsentedVendorListVersion()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentPrivacyPolicyLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/b;->getCurrentPrivacyPolicyLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentPrivacyPolicyLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/common/privacy/b;->v:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/mopub/common/privacy/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentVendorListIabFormat()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentVendorListLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/b;->getCurrentVendorListLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentVendorListLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/common/privacy/b;->v:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/mopub/common/privacy/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentVendorListVersion()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mopub/common/privacy/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final isForceGdprApplies()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/mopub/common/privacy/b;->f:Z

    return v0
.end method

.method public final setExtras(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/mopub/common/privacy/b;->w:Ljava/lang/String;

    return-void
.end method
