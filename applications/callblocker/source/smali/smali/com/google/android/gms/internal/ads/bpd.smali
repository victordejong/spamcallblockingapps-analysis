.class final synthetic Lcom/google/android/gms/internal/ads/bpd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bpa;

.field private final b:Lcom/google/android/gms/internal/ads/crt;

.field private final c:Lcom/google/android/gms/internal/ads/crt;

.field private final d:Lcom/google/android/gms/internal/ads/chd;

.field private final e:Lcom/google/android/gms/internal/ads/cgr;

.field private final f:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bpa;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpd;->a:Lcom/google/android/gms/internal/ads/bpa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpd;->b:Lcom/google/android/gms/internal/ads/crt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpd;->c:Lcom/google/android/gms/internal/ads/crt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bpd;->d:Lcom/google/android/gms/internal/ads/chd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bpd;->e:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bpd;->f:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpd;->a:Lcom/google/android/gms/internal/ads/bpa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpd;->b:Lcom/google/android/gms/internal/ads/crt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpd;->c:Lcom/google/android/gms/internal/ads/crt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bpd;->d:Lcom/google/android/gms/internal/ads/chd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bpd;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bpd;->f:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bpa;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/aym;

    move-result-object v0

    return-object v0
.end method
