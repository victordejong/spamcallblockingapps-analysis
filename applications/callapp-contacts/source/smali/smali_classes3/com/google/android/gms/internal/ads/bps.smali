.class final synthetic Lcom/google/android/gms/internal/ads/bps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bpk;

.field private final b:Lcom/google/android/gms/internal/ads/dbt;

.field private final c:Lcom/google/android/gms/internal/ads/dbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bpk;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bps;->a:Lcom/google/android/gms/internal/ads/bpk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bps;->b:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bps;->c:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bps;->a:Lcom/google/android/gms/internal/ads/bpk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bps;->b:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bps;->c:Lcom/google/android/gms/internal/ads/dbt;

    .line 1143
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ta;

    .line 2035
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/lang/String;

    .line 1144
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1145
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bpk;->b:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/gms/internal/ads/bpv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/bpv;-><init>(Lcom/google/android/gms/internal/ads/ta;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/google/android/gms/internal/ads/cxs;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
