.class public final Lcom/google/android/gms/internal/ads/cif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/uw;

.field public final c:Lcom/google/android/gms/internal/ads/ur;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/ur;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cif;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cif;->b:Lcom/google/android/gms/internal/ads/uw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cif;->c:Lcom/google/android/gms/internal/ads/ur;

    .line 5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/ur;Lcom/google/android/gms/internal/ads/cib;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cif;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/ur;)V

    return-void
.end method
