.class public final Lcom/google/android/gms/internal/ads/cqs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/cqv;

.field private b:Lcom/google/android/gms/internal/ads/cqv;

.field private c:Lcom/google/android/gms/internal/ads/cqv;

.field private d:Lcom/google/android/gms/internal/ads/cqv;

.field private e:Lcom/google/android/gms/internal/ads/cqv;

.field private f:Lcom/google/android/gms/internal/ads/cqv;

.field private g:Lcom/google/android/gms/internal/ads/cqv;

.field private h:Lcom/google/android/gms/internal/ads/cqv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->b:Lcom/google/android/gms/internal/ads/cqv;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->c:Lcom/google/android/gms/internal/ads/cqv;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->d:Lcom/google/android/gms/internal/ads/cqv;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->a:Lcom/google/android/gms/internal/ads/cqv;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->e:Lcom/google/android/gms/internal/ads/cqv;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->f:Lcom/google/android/gms/internal/ads/cqv;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->g:Lcom/google/android/gms/internal/ads/cqv;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->h:Lcom/google/android/gms/internal/ads/cqv;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->a:Lcom/google/android/gms/internal/ads/cqv;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cqv;->a()V

    :cond_0
    return-void
.end method
