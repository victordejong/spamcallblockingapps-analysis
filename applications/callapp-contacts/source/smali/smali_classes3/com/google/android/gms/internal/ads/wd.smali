.class public final Lcom/google/android/gms/internal/ads/wd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final d:Lcom/google/android/gms/internal/ads/wo;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/wo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wd;->e:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wd;->a:Landroid/content/SharedPreferences;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wd;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wd;->b:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wd;->d:Lcom/google/android/gms/internal/ads/wo;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "IABTCF_PurposeConsents"

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, ""

    .line 13
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wd;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wd;->e:Ljava/lang/String;

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-eq p1, v0, :cond_2

    const/4 p2, 0x1

    .line 20
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->al:Lcom/google/android/gms/internal/ads/af;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wd;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzau(Z)V

    .line 24
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->dM:Lcom/google/android/gms/internal/ads/af;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wd;->b:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string p2, "OfflineUpload.db"

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 28
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->ah:Lcom/google/android/gms/internal/ads/af;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wd;->d:Lcom/google/android/gms/internal/ads/wo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->a()Z

    :cond_4
    return-void
.end method
