.class final Lcom/facebook/appevents/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Long;

.field b:Ljava/lang/Long;

.field c:I

.field d:Ljava/lang/Long;

.field e:Lcom/facebook/appevents/f/i;

.field f:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/appevents/f/g;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/appevents/f/g;->a:Ljava/lang/Long;

    .line 50
    iput-object p2, p0, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    .line 51
    iput-object p3, p0, Lcom/facebook/appevents/f/g;->f:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 139
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/facebook/appevents/f/g;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v1, p0, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget v1, p0, Lcom/facebook/appevents/f/g;->c:I

    const-string v2, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v1, p0, Lcom/facebook/appevents/f/g;->f:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    iget-object v0, p0, Lcom/facebook/appevents/f/g;->e:Lcom/facebook/appevents/f/i;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/facebook/appevents/f/i;->a()V

    :cond_0
    return-void
.end method
