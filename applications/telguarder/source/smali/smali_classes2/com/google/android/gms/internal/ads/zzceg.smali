.class public final Lcom/google/android/gms/internal/ads/zzceg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzanr;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzghg:Lcom/google/android/gms/internal/ads/zzcee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcee;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceg;->zzghg:Lcom/google/android/gms/internal/ads/zzcee;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceg;->zzghg:Lcom/google/android/gms/internal/ads/zzcee;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcee;->zzapi()Lcom/google/android/gms/internal/ads/zzanr;

    move-result-object v0

    return-object v0
.end method
