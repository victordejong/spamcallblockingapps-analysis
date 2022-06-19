.class public final Lcom/google/android/gms/internal/ads/afk$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/yd;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/afk$a;)Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afk$a;->a:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/afk$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afk$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/afk$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afk$a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/afk$a;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afk$a;->c:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/afk$a;->b:Landroid/content/Context;

    .line 7
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/afk$a;
    .locals 0

    .prologue
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/afk$a;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 3
    return-object p0
.end method
