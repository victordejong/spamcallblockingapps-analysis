.class final synthetic Lcom/google/android/gms/internal/ads/boe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bod;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boe;->a:Lcom/google/android/gms/internal/ads/bod;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boe;->a:Lcom/google/android/gms/internal/ads/bod;

    check-cast p1, Lorg/json/JSONObject;

    .line 1039
    new-instance v1, Lcom/google/android/gms/internal/ads/cpk;

    new-instance v2, Lcom/google/android/gms/internal/ads/cpf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bod;->c:Lcom/google/android/gms/internal/ads/cpo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/cpf;-><init>(Lcom/google/android/gms/internal/ads/cpo;)V

    .line 1040
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1041
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpi;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/cpi;

    move-result-object p1

    .line 1042
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/cpk;-><init>(Lcom/google/android/gms/internal/ads/cpf;Lcom/google/android/gms/internal/ads/cpi;)V

    .line 1043
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
