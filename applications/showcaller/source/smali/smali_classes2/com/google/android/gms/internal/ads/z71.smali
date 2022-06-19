.class final synthetic Lcom/google/android/gms/internal/ads/z71;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/hh1;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh1;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z71;->d:Lcom/google/android/gms/internal/ads/hh1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z71;->e:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/z71;->f:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/z71;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z71;->d:Lcom/google/android/gms/internal/ads/hh1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z71;->e:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/z71;->f:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/z71;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hh1;->s(Ljava/lang/String;JJ)V

    return-void
.end method
