.class public final Lcom/google/android/gms/internal/ads/ajd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public a:Z

.field public b:Z

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Lcom/google/android/gms/internal/ads/dtt;

.field private f:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajd;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajd;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajd;->f:Z

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ajd;->c:J

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajd;->e:Lcom/google/android/gms/internal/ads/dtt;

    return-void
.end method
