.class public final Lcom/google/android/gms/measurement/internal/ep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Z

.field private d:J

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/el;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ep;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ep;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/ep;->b:J

    .line 5
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ep;->c:Z

    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ep;->c:Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ep;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ep;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ep;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ep;->d:J

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ep;->d:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ep;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ep;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ep;->d:J

    .line 15
    return-void
.end method
