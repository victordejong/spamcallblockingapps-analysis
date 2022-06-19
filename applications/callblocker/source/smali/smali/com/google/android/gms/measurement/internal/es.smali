.class public final Lcom/google/android/gms/measurement/internal/es;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/el;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->a:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->c:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/es;->d:J

    .line 8
    return-void

    .line 3
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/eo;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/es;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    return-void
.end method

.method private final b()V
    .locals 4

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method private final c()J
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->a:Ljava/lang/String;

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
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->c()J

    move-result-wide v0

    .line 42
    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->b()V

    move-wide v0, v2

    .line 47
    :goto_0
    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/es;->d:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_1

    move-object v0, v4

    .line 57
    :goto_1
    return-object v0

    .line 45
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0

    .line 49
    :cond_1
    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/es;->d:J

    const/4 v5, 0x1

    shl-long/2addr v6, v5

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->b()V

    move-object v0, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->b()V

    .line 55
    if-eqz v1, :cond_3

    cmp-long v0, v4, v2

    if-gtz v0, :cond_4

    .line 56
    :cond_3
    sget-object v0, Lcom/google/android/gms/measurement/internal/el;->a:Landroid/util/Pair;

    goto :goto_1

    .line 57
    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 10

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->c()J

    move-result-wide v0

    .line 19
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->b()V

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    const-string/jumbo p1, ""

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 24
    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jw;->d()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    and-long/2addr v0, v8

    .line 31
    add-long v4, v2, v6

    div-long v4, v8, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 33
    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->c:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    add-long/2addr v2, v6

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 31
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
