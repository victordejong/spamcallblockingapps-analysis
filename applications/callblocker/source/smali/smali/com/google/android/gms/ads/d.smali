.class public final Lcom/google/android/gms/ads/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ebi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/d$a;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ebi;

    invoke-static {p1}, Lcom/google/android/gms/ads/d$a;->a(Lcom/google/android/gms/ads/d$a;)Lcom/google/android/gms/internal/ads/ebh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ebi;-><init>(Lcom/google/android/gms/internal/ads/ebh;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/internal/ads/ebi;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/d$a;Lcom/google/android/gms/ads/r;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/d;-><init>(Lcom/google/android/gms/ads/d$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ebi;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/internal/ads/ebi;

    return-object v0
.end method
