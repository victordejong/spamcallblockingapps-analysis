.class public Lcom/google/android/gms/internal/ads/afk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/afk$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yd;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/afk$a;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/afk$a;->a(Lcom/google/android/gms/internal/ads/afk$a;)Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afk;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/afk$a;->b(Lcom/google/android/gms/internal/ads/afk$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afk;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/afk$a;->c(Lcom/google/android/gms/internal/ads/afk$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afk;->c:Ljava/lang/ref/WeakReference;

    .line 5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/afk$a;Lcom/google/android/gms/internal/ads/afj;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/afk;-><init>(Lcom/google/android/gms/internal/ads/afk$a;)V

    return-void
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afk;->b:Landroid/content/Context;

    return-object v0
.end method

.method final b()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afk;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afk;->a:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afk;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afk;->a:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/ctl;
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/ctl;

    new-instance v1, Lcom/google/android/gms/ads/internal/h;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afk;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/afk;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ctl;-><init>(Lcom/google/android/gms/internal/ads/cjd;)V

    return-object v0
.end method
