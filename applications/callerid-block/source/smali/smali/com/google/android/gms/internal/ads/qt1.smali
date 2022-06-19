.class public final Lcom/google/android/gms/internal/ads/qt1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qt1;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/gu1;->E()Lcom/google/android/gms/internal/ads/eu1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eu1;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eu1;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdzy;->c:Lcom/google/android/gms/internal/ads/zzdzy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eu1;->q(Lcom/google/android/gms/internal/ads/zzdzy;)Lcom/google/android/gms/internal/ads/eu1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cu1;->E()Lcom/google/android/gms/internal/ads/bu1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/bu1;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bu1;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdzr;->c:Lcom/google/android/gms/internal/ads/zzdzr;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/bu1;->q(Lcom/google/android/gms/internal/ads/zzdzr;)Lcom/google/android/gms/internal/ads/bu1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eu1;->s(Lcom/google/android/gms/internal/ads/bu1;)Lcom/google/android/gms/internal/ads/eu1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/gu1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt1;->b:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/ads/rt1;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/rt1;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/gu1;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rt1;->d()V

    return-void
.end method
