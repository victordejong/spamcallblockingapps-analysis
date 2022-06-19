.class final synthetic Lcom/google/android/gms/internal/ads/bms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dwl;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dwv$z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwv$z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bms;->a:Lcom/google/android/gms/internal/ads/dwv$z;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dwv$n$a;)V
    .locals 2

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bms;->a:Lcom/google/android/gms/internal/ads/dwv$z;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwv$n$a;->i()Lcom/google/android/gms/internal/ads/dwv$l;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->p()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$l$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$l$a;->a(Lcom/google/android/gms/internal/ads/dwv$z;)Lcom/google/android/gms/internal/ads/dwv$l$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Lcom/google/android/gms/internal/ads/dwv$l$a;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 5
    return-void
.end method
