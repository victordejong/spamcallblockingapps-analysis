.class final synthetic Lcom/google/android/gms/internal/ads/bfp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dwl;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/dwv$z;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwv$a$a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dwv$z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfp;->a:Lcom/google/android/gms/internal/ads/dwv$a$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bfp;->c:Lcom/google/android/gms/internal/ads/dwv$z;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bfp;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dwv$n$a;)V
    .locals 5

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfp;->a:Lcom/google/android/gms/internal/ads/dwv$a$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bfp;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bfp;->c:Lcom/google/android/gms/internal/ads/dwv$z;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bfp;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwv$n$a;->j()Lcom/google/android/gms/internal/ads/dwv$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->p()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$a$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$a$b;->a(Lcom/google/android/gms/internal/ads/dwv$a$a;)Lcom/google/android/gms/internal/ads/dwv$a$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Lcom/google/android/gms/internal/ads/dwv$a$b;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwv$n$a;->i()Lcom/google/android/gms/internal/ads/dwv$l;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->p()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$l$a;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dwv$l$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dwv$l$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dwv$l$a;->a(Lcom/google/android/gms/internal/ads/dwv$z;)Lcom/google/android/gms/internal/ads/dwv$l$a;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Lcom/google/android/gms/internal/ads/dwv$l$a;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 12
    return-void
.end method
