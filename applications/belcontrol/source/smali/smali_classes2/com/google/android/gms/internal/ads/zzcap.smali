.class public final Lcom/google/android/gms/internal/ads/zzcap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzwx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcap;->zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcap;->zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzanc()Lcom/google/android/gms/internal/ads/zzwx;

    move-result-object v0

    return-object v0
.end method
