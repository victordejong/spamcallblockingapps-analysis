.class final Lcom/google/android/gms/internal/ads/bkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ash;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ta;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ta;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkm;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bkm;->b:Lcom/google/android/gms/internal/ads/ta;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 3

    .prologue
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgs;->d:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkm;->b:Lcom/google/android/gms/internal/ads/ta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkm;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkm;->b:Lcom/google/android/gms/internal/ads/ta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkm;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgs;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;)V
    .locals 0

    .prologue
    .line 5
    return-void
.end method
