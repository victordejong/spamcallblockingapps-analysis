.class final synthetic Lcom/google/android/gms/internal/ads/bks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bkq;

.field private final b:Lcom/google/android/gms/internal/ads/bkx;

.field private final c:Lcom/google/android/gms/internal/ads/pw;

.field private final d:Lcom/google/android/gms/internal/ads/cqt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bkq;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cqt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bks;->a:Lcom/google/android/gms/internal/ads/bkq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bks;->b:Lcom/google/android/gms/internal/ads/bkx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bks;->c:Lcom/google/android/gms/internal/ads/pw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bks;->d:Lcom/google/android/gms/internal/ads/cqt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bks;->a:Lcom/google/android/gms/internal/ads/bkq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bks;->b:Lcom/google/android/gms/internal/ads/bkx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bks;->c:Lcom/google/android/gms/internal/ads/pw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bks;->d:Lcom/google/android/gms/internal/ads/cqt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzclc;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/bkq;->a(Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cqt;Lcom/google/android/gms/internal/ads/zzclc;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
