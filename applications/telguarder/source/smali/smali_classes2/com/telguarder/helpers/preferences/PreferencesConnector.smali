.class Lcom/telguarder/helpers/preferences/PreferencesConnector;
.super Ljava/lang/Object;
.source "PreferencesConnector.java"


# static fields
.field private static mInstance:Lcom/telguarder/helpers/preferences/PreferencesConnector;


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;

.field private final filename_telGuarder:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.telguarder.PREFERENCES"

    .line 16
    iput-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->filename_telGuarder:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    .line 24
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesFileOpenError(Ljava/lang/String;)V

    .line 26
    :try_start_1
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 28
    :catch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "default"

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesFileOpenError(Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 32
    iput-object v2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    .line 33
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 35
    :cond_1
    iput-object v1, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    .line 36
    iput-object v1, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    .line 37
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "all"

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesFileOpenError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;
    .locals 2

    .line 43
    sget-object v0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->mInstance:Lcom/telguarder/helpers/preferences/PreferencesConnector;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/telguarder/helpers/preferences/PreferencesConnector;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->mInstance:Lcom/telguarder/helpers/preferences/PreferencesConnector;

    .line 45
    :cond_0
    sget-object v0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->mInstance:Lcom/telguarder/helpers/preferences/PreferencesConnector;

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "clear_all"

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 63
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    .line 113
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    .line 114
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 93
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 73
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 103
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    return-object p2
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    return-object v1
.end method

.method public getStringList(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesGetError(Ljava/lang/String;)V

    return-object p2
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesRemoveError(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesRemoveError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object p2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    .line 172
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveDouble(Ljava/lang/String;D)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    iget-object p2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    .line 232
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveFloat(Ljava/lang/String;F)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 207
    iget-object p2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    .line 208
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveInt(Ljava/lang/String;I)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-object p2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    .line 184
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveLong(Ljava/lang/String;J)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 219
    iget-object p2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    .line 220
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    iget-object p2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    .line 196
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveStringList(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 243
    iget-object p2, p0, Lcom/telguarder/helpers/preferences/PreferencesConnector;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    .line 244
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPreferencesCommitError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
