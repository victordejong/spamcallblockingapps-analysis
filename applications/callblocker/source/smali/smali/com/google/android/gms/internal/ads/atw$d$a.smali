.class public final Lcom/google/android/gms/internal/ads/atw$d$a;
.super Lcom/google/android/gms/internal/ads/dcw$a;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/atw$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<",
        "Lcom/google/android/gms/internal/ads/atw$d;",
        "Lcom/google/android/gms/internal/ads/atw$d$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$d;->d()Lcom/google/android/gms/internal/ads/atw$d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcw$a;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/asv;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/atw$d$a;-><init>()V

    return-void
.end method
