.class public final Lcom/google/android/gms/internal/ads/zzccw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgfg:Lcom/google/android/gms/internal/ads/zzccp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccw;->zzgfg:Lcom/google/android/gms/internal/ads/zzccp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzccp;)Lcom/google/android/gms/internal/ads/zzccw;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzccw;-><init>(Lcom/google/android/gms/internal/ads/zzccp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
