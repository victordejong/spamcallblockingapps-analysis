.class final Lcom/google/android/gms/internal/ads/cmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cxu<",
        "Lcom/google/android/gms/internal/ads/zzcpo;",
        "Lcom/google/android/gms/internal/ads/cmf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cmb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cmb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcpo;

    const-string v0, ""

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmb;

    new-instance v0, Lcom/google/android/gms/internal/ads/cmf;

    .line 1031
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cmb;->a()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/cmf;-><init>(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/cri;Lcom/google/android/gms/internal/ads/cmd;)V

    .line 2030
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmb;

    .line 2032
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    return-object p1
.end method
