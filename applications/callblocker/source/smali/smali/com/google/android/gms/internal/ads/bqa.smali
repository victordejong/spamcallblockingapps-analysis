.class final synthetic Lcom/google/android/gms/internal/ads/bqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bqb;

.field private final b:Lcom/google/android/gms/internal/ads/chd;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/bmv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bqb;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqa;->a:Lcom/google/android/gms/internal/ads/bqb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqa;->b:Lcom/google/android/gms/internal/ads/chd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqa;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqa;->d:Lcom/google/android/gms/internal/ads/bmv;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqa;->a:Lcom/google/android/gms/internal/ads/bqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqa;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqa;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqa;->d:Lcom/google/android/gms/internal/ads/bmv;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/bqb;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmv;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
