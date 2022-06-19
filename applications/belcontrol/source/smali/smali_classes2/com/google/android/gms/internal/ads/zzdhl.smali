.class public final Lcom/google/android/gms/internal/ads/zzdhl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzheu:Lcom/google/android/gms/internal/ads/zzdhj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdhj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzheu:Lcom/google/android/gms/internal/ads/zzdhj;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzheu:Lcom/google/android/gms/internal/ads/zzdhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhj;->zzaua()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
