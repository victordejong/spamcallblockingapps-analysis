.class public final Lcom/google/firebase/perf/network/zze;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private final zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

.field private final zzgi:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/google/android/gms/internal/firebase-perf/zzaz;",
            "Lcom/google/android/gms/internal/firebase-perf/zzam;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/network/zze;->zzgi:Lorg/apache/http/client/ResponseHandler;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/perf/network/zze;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/perf/network/zze;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    return-void
.end method


# virtual methods
.method public final handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/firebase/perf/network/zze;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zze;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 7
    iget-object v0, p0, Lcom/google/firebase/perf/network/zze;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 9
    invoke-static {p1}, Lcom/google/firebase/perf/network/zzg;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/firebase/perf/network/zze;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/perf/network/zzg;->zza(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v1, p0, Lcom/google/firebase/perf/network/zze;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/network/zze;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    .line 17
    iget-object v0, p0, Lcom/google/firebase/perf/network/zze;->zzgi:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
