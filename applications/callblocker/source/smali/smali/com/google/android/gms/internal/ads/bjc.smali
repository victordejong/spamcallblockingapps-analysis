.class final synthetic Lcom/google/android/gms/internal/ads/bjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ctl;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ctl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjc;->a:Lcom/google/android/gms/internal/ads/ctl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bjc;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjc;->a:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bjc;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    return-object v0
.end method
