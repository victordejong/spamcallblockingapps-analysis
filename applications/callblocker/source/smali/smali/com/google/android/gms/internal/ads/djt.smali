.class public final Lcom/google/android/gms/internal/ads/djt;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/diu;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;IILcom/google/android/gms/internal/ads/diu;)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/djt;->d:Lcom/google/android/gms/internal/ads/diu;

    .line 3
    if-eqz p7, :cond_0

    .line 4
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/diu;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/djt;->e:J

    .line 5
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djt;->d:Lcom/google/android/gms/internal/ads/diu;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djt;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djt;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/djt;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->A(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 8
    :cond_0
    return-void
.end method
