.class final synthetic Lcom/google/android/gms/internal/ads/bjo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ehj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/eht$a$a;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/eht$z;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eht$a$a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/eht$z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjo;->a:Lcom/google/android/gms/internal/ads/eht$a$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bjo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bjo;->c:Lcom/google/android/gms/internal/ads/eht$z;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bjo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eht$n$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjo;->a:Lcom/google/android/gms/internal/ads/eht$a$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bjo;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bjo;->c:Lcom/google/android/gms/internal/ads/eht$z;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bjo;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eht$n$a;->i()Lcom/google/android/gms/internal/ads/eht$a;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dnh;->k()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/dnh$b;

    check-cast v4, Lcom/google/android/gms/internal/ads/eht$a$b;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/eht$a$b;->a(Lcom/google/android/gms/internal/ads/eht$a$a;)Lcom/google/android/gms/internal/ads/eht$a$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/eht$n$a;->a(Lcom/google/android/gms/internal/ads/eht$a$b;)Lcom/google/android/gms/internal/ads/eht$n$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eht$n$a;->h()Lcom/google/android/gms/internal/ads/eht$l;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh;->k()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh$b;

    check-cast p1, Lcom/google/android/gms/internal/ads/eht$l$a;

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/eht$l$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$l$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/eht$l$a;->a(Lcom/google/android/gms/internal/ads/eht$z;)Lcom/google/android/gms/internal/ads/eht$l$a;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n$a;->a(Lcom/google/android/gms/internal/ads/eht$l$a;)Lcom/google/android/gms/internal/ads/eht$n$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/eht$n$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$n$a;

    return-void
.end method
