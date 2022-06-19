.class final Lcom/google/android/gms/internal/ads/pf0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/common/util/e;

.field private c:Lcom/google/android/gms/ads/internal/util/q1;

.field private d:Lcom/google/android/gms/internal/ads/lg0;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/qf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/pf0;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pf0;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/common/util/e;)Lcom/google/android/gms/internal/ads/pf0;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pf0;->b:Lcom/google/android/gms/common/util/e;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/ads/internal/util/q1;)Lcom/google/android/gms/internal/ads/pf0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pf0;->c:Lcom/google/android/gms/ads/internal/util/q1;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/lg0;)Lcom/google/android/gms/internal/ads/pf0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pf0;->d:Lcom/google/android/gms/internal/ads/lg0;

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/mg0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf0;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf0;->b:Lcom/google/android/gms/common/util/e;

    const-class v1, Lcom/google/android/gms/common/util/e;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf0;->c:Lcom/google/android/gms/ads/internal/util/q1;

    const-class v1, Lcom/google/android/gms/ads/internal/util/q1;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf0;->d:Lcom/google/android/gms/internal/ads/lg0;

    const-class v1, Lcom/google/android/gms/internal/ads/lg0;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/rf0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pf0;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pf0;->b:Lcom/google/android/gms/common/util/e;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/pf0;->c:Lcom/google/android/gms/ads/internal/util/q1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/pf0;->d:Lcom/google/android/gms/internal/ads/lg0;

    const/4 v7, 0x0

    move-object v2, v0

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/rf0;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/ads/internal/util/q1;Lcom/google/android/gms/internal/ads/lg0;Lcom/google/android/gms/internal/ads/qf0;)V

    return-object v0
.end method
