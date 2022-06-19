.class public Lcom/google/android/gms/internal/ads/bql;
.super Lcom/google/android/gms/internal/ads/brp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/avb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/apo;Lcom/google/android/gms/internal/ads/aqh;Lcom/google/android/gms/internal/ads/aqq;Lcom/google/android/gms/internal/ads/arb;Lcom/google/android/gms/internal/ads/apx;Lcom/google/android/gms/internal/ads/asr;Lcom/google/android/gms/internal/ads/avg;Lcom/google/android/gms/internal/ads/aro;Lcom/google/android/gms/internal/ads/avb;Lcom/google/android/gms/internal/ads/ask;)V
    .locals 11

    .prologue
    .line 1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/brp;-><init>(Lcom/google/android/gms/internal/ads/apo;Lcom/google/android/gms/internal/ads/aqh;Lcom/google/android/gms/internal/ads/aqq;Lcom/google/android/gms/internal/ads/arb;Lcom/google/android/gms/internal/ads/asr;Lcom/google/android/gms/internal/ads/aro;Lcom/google/android/gms/internal/ads/avg;Lcom/google/android/gms/internal/ads/ask;Lcom/google/android/gms/internal/ads/apx;)V

    .line 2
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bql;->a:Lcom/google/android/gms/internal/ads/avb;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rr;)V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/brp;->a(Lcom/google/android/gms/internal/ads/rr;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bql;->a:Lcom/google/android/gms/internal/ads/avb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/avb;->a(Lcom/google/android/gms/internal/ads/rr;)V

    .line 15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rt;)V
    .locals 4

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/brp;->a(Lcom/google/android/gms/internal/ads/rt;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bql;->a:Lcom/google/android/gms/internal/ads/avb;

    new-instance v1, Lcom/google/android/gms/internal/ads/rr;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/rt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/rt;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/rr;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/avb;->a(Lcom/google/android/gms/internal/ads/rr;)V

    .line 12
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bql;->a:Lcom/google/android/gms/internal/ads/avb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/avb;->b()V

    .line 17
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bql;->a:Lcom/google/android/gms/internal/ads/avb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/avb;->a()V

    .line 5
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bql;->a:Lcom/google/android/gms/internal/ads/avb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/avb;->b()V

    .line 7
    return-void
.end method
