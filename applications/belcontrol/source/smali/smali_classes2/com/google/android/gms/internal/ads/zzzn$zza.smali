.class public final Lcom/google/android/gms/internal/ads/zzzn$zza;
.super Lcom/google/android/gms/internal/ads/zzajn;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzclf:Lcom/google/android/gms/internal/ads/zzzn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn$zza;->zzclf:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajn;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzn;Lcom/google/android/gms/internal/ads/zzzr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzn$zza;-><init>(Lcom/google/android/gms/internal/ads/zzzn;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajh;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn$zza;->zzclf:Lcom/google/android/gms/internal/ads/zzzn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/internal/ads/zzzn;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn$zza;->zzclf:Lcom/google/android/gms/internal/ads/zzzn;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzzn;->zzb(Lcom/google/android/gms/internal/ads/zzzn;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn$zza;->zzclf:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/internal/ads/zzzn;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzn;->zzrs()Lcom/google/android/gms/internal/ads/zzzn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/internal/ads/zzzn;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    invoke-interface {v3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzn;->zzrs()Lcom/google/android/gms/internal/ads/zzzn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/internal/ads/zzzn;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
