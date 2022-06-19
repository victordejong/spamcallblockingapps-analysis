.class public final Lcom/google/android/gms/measurement/internal/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/ee;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "health_monitor"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmp-long p5, p3, p1

    if-lez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    const-string p1, "health_monitor:start"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/lang/String;

    const-string p1, "health_monitor:count"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    const-string p1, "health_monitor:value"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/eb;->e:J

    return-void
.end method

.method private final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    .line 5
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Ljava/lang/String;

    .line 6
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/lang/String;

    .line 7
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final c()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eb;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eb;->b()V

    move-wide v0, v2

    goto :goto_0

    .line 11
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/eb;->e:J

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-gez v7, :cond_1

    return-object v6

    :cond_1
    add-long/2addr v4, v4

    cmp-long v7, v0, v4

    if-lez v7, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eb;->b()V

    return-object v6

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eb;->b()V

    if-eqz v0, :cond_4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/util/Pair;

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/ee;->a:Landroid/util/Pair;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eb;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eb;->b()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    .line 7
    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ju;->l()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    add-long/2addr v0, v4

    const-wide v4, 0x7fffffffffffffffL

    .line 11
    div-long v6, v4, v0

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Lcom/google/android/gms/measurement/internal/ee;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    and-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Ljava/lang/String;

    .line 13
    invoke-interface {v8, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    .line 14
    invoke-interface {v8, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
