.class final synthetic Lcom/google/android/gms/internal/ads/bnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bnw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bnw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnz;->a:Lcom/google/android/gms/internal/ads/bnw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnz;->a:Lcom/google/android/gms/internal/ads/bnw;

    check-cast p1, Ljava/io/InputStream;

    .line 1026
    new-instance v1, Lcom/google/android/gms/internal/ads/cpk;

    new-instance v2, Lcom/google/android/gms/internal/ads/cpf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bnw;->a:Lcom/google/android/gms/internal/ads/cpo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/cpf;-><init>(Lcom/google/android/gms/internal/ads/cpo;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1027
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpi;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/cpi;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/cpk;-><init>(Lcom/google/android/gms/internal/ads/cpf;Lcom/google/android/gms/internal/ads/cpi;)V

    .line 1028
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
