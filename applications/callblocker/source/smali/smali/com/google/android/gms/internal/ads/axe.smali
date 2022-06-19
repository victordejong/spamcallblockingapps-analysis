.class public final Lcom/google/android/gms/internal/ads/axe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/auj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aqk;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axe;->a:Lcom/google/android/gms/internal/ads/aqk;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 4
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axe;->a:Lcom/google/android/gms/internal/ads/aqk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aqk;->c(Landroid/content/Context;)V

    .line 6
    return-void
.end method
