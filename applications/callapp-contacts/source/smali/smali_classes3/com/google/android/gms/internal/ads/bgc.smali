.class final synthetic Lcom/google/android/gms/internal/ads/bgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/afd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfv;

.field private final b:Lcom/google/android/gms/internal/ads/adt;

.field private final c:Lcom/google/android/gms/internal/ads/zm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfv;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/zm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgc;->a:Lcom/google/android/gms/internal/ads/bfv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgc;->b:Lcom/google/android/gms/internal/ads/adt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgc;->c:Lcom/google/android/gms/internal/ads/zm;

    return-void
.end method


# virtual methods
.method public final zzam(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgc;->a:Lcom/google/android/gms/internal/ads/bfv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgc;->b:Lcom/google/android/gms/internal/ads/adt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bgc;->c:Lcom/google/android/gms/internal/ads/zm;

    if-eqz p1, :cond_1

    .line 1064
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1065
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 1066
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zm;->a()V

    return-void

    .line 1067
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwo;

    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const-string v1, "Instream video Web View failed to load."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
