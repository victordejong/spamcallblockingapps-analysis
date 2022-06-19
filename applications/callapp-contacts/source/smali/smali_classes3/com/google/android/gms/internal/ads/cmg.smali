.class final Lcom/google/android/gms/internal/ads/cmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cxu<",
        "Lcom/google/android/gms/internal/ads/zzauj;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmg;->a:Lcom/google/android/gms/internal/ads/cmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->a:Lcom/google/android/gms/internal/ads/cmb;

    new-instance v1, Lcom/google/android/gms/internal/ads/cmf;

    new-instance v2, Lcom/google/android/gms/internal/ads/crk;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/crk;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/cmf;-><init>(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/cri;Lcom/google/android/gms/internal/ads/cmd;)V

    .line 1030
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cmg;->a:Lcom/google/android/gms/internal/ads/cmb;

    .line 1032
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    return-object p1
.end method
