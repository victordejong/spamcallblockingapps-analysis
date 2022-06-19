.class public final Lcom/google/android/gms/internal/ads/acl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/adc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/abb;ILcom/google/android/gms/internal/ads/aay;)Lcom/google/android/gms/internal/ads/acu;
    .locals 1

    if-lez p2, :cond_2

    .line 1042
    sget p2, Lcom/google/android/gms/internal/ads/abw;->b:I

    .line 4
    iget v0, p3, Lcom/google/android/gms/internal/ads/aay;->g:I

    if-ge p2, v0, :cond_0

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/adf;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/adf;-><init>(Lcom/google/android/gms/internal/ads/abb;Lcom/google/android/gms/internal/ads/aay;)V

    return-object p2

    .line 6
    :cond_0
    iget v0, p3, Lcom/google/android/gms/internal/ads/aay;->b:I

    if-ge p2, v0, :cond_1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/adg;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/adg;-><init>(Lcom/google/android/gms/internal/ads/abb;Lcom/google/android/gms/internal/ads/aay;)V

    return-object p2

    .line 8
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/ade;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/ade;-><init>(Lcom/google/android/gms/internal/ads/abb;)V

    return-object p2

    .line 9
    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/ads/adb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/adb;-><init>(Lcom/google/android/gms/internal/ads/abb;)V

    return-object p2
.end method
