.class final synthetic Lcom/google/android/gms/internal/ads/bgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dwl;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgd;->a:Lcom/google/android/gms/internal/ads/chd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dwv$n$a;)V
    .locals 3

    .prologue
    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bgd;->a:Lcom/google/android/gms/internal/ads/chd;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwv$n$a;->j()Lcom/google/android/gms/internal/ads/dwv$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->p()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$a$b;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwv$n$a;->j()Lcom/google/android/gms/internal/ads/dwv$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwv$a;->a()Lcom/google/android/gms/internal/ads/dwv$j;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcw;->p()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/dcw$a;

    check-cast v1, Lcom/google/android/gms/internal/ads/dwv$j$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwv$j$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dwv$j$a;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$a$b;->a(Lcom/google/android/gms/internal/ads/dwv$j$a;)Lcom/google/android/gms/internal/ads/dwv$a$b;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Lcom/google/android/gms/internal/ads/dwv$a$b;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 12
    return-void
.end method
