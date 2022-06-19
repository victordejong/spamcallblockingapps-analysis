.class public final Lcom/google/android/gms/internal/ads/dnp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnm;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dnp;->a:J

    .line 3
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    .prologue
    .line 6
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnp;->a:J

    return-wide v0
.end method
