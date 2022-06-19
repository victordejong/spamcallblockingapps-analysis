.class final synthetic Lcom/google/android/gms/internal/ads/bkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ehj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cpk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cpk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkc;->a:Lcom/google/android/gms/internal/ads/cpk;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eht$n$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkc;->a:Lcom/google/android/gms/internal/ads/cpk;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eht$n$a;->i()Lcom/google/android/gms/internal/ads/eht$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dnh;->k()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/dnh$b;

    check-cast v1, Lcom/google/android/gms/internal/ads/eht$a$b;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eht$n$a;->i()Lcom/google/android/gms/internal/ads/eht$a;

    move-result-object v2

    .line 1009
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/eht$a;->zzbzc:Lcom/google/android/gms/internal/ads/eht$j;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$j;->a()Lcom/google/android/gms/internal/ads/eht$j;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/eht$a;->zzbzc:Lcom/google/android/gms/internal/ads/eht$j;

    .line 7
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dnh;->k()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/dnh$b;

    check-cast v2, Lcom/google/android/gms/internal/ads/eht$j$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/eht$j$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$j$a;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eht$a$b;->a(Lcom/google/android/gms/internal/ads/eht$j$a;)Lcom/google/android/gms/internal/ads/eht$a$b;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/eht$n$a;->a(Lcom/google/android/gms/internal/ads/eht$a$b;)Lcom/google/android/gms/internal/ads/eht$n$a;

    return-void
.end method
