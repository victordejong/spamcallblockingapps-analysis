.class public final Lcom/google/android/gms/internal/ads/cik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cin;

.field private b:Lcom/google/android/gms/internal/ads/cin;

.field private c:Lcom/google/android/gms/internal/ads/cin;

.field private d:Lcom/google/android/gms/internal/ads/cin;

.field private e:Lcom/google/android/gms/internal/ads/cin;

.field private f:Lcom/google/android/gms/internal/ads/cin;

.field private g:Lcom/google/android/gms/internal/ads/cin;

.field private h:Lcom/google/android/gms/internal/ads/cin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->a:Lcom/google/android/gms/internal/ads/cin;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->b:Lcom/google/android/gms/internal/ads/cin;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->c:Lcom/google/android/gms/internal/ads/cin;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->d:Lcom/google/android/gms/internal/ads/cin;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->e:Lcom/google/android/gms/internal/ads/cin;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->f:Lcom/google/android/gms/internal/ads/cin;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->g:Lcom/google/android/gms/internal/ads/cin;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->h:Lcom/google/android/gms/internal/ads/cin;

    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->d:Lcom/google/android/gms/internal/ads/cin;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cik;->d:Lcom/google/android/gms/internal/ads/cin;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cin;->a()V

    .line 15
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cin;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cik;->d:Lcom/google/android/gms/internal/ads/cin;

    .line 12
    return-void
.end method
