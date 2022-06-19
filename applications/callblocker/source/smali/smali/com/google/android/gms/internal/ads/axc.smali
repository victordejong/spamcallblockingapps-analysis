.class public final Lcom/google/android/gms/internal/ads/axc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/app;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqh;

.field private final b:Lcom/google/android/gms/internal/ads/cgr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aqh;Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axc;->a:Lcom/google/android/gms/internal/ads/aqh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axc;->b:Lcom/google/android/gms/internal/ads/cgr;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axc;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->O:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axc;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->O:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axc;->a:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V

    .line 7
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method
