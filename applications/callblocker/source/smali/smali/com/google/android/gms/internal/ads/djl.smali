.class public final Lcom/google/android/gms/internal/ads/djl;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/djl;->d:J

    .line 3
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djl;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->e(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djl;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djl;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/djl;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/din;->a()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->e(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 6
    return-void
.end method
