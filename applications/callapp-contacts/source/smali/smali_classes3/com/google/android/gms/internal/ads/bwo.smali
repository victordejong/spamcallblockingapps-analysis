.class public Lcom/google/android/gms/internal/ads/bwo;
.super Lcom/google/android/gms/internal/ads/bxr;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/ays;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/arj;Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/asp;Lcom/google/android/gms/internal/ads/ata;Lcom/google/android/gms/internal/ads/ars;Lcom/google/android/gms/internal/ads/avz;Lcom/google/android/gms/internal/ads/ayz;Lcom/google/android/gms/internal/ads/atj;Lcom/google/android/gms/internal/ads/ays;Lcom/google/android/gms/internal/ads/avr;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object v9, p5

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/bxr;-><init>(Lcom/google/android/gms/internal/ads/arj;Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/asp;Lcom/google/android/gms/internal/ads/ata;Lcom/google/android/gms/internal/ads/avz;Lcom/google/android/gms/internal/ads/atj;Lcom/google/android/gms/internal/ads/ayz;Lcom/google/android/gms/internal/ads/avr;Lcom/google/android/gms/internal/ads/ars;)V

    move-object/from16 v1, p9

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bwo;->a:Lcom/google/android/gms/internal/ads/ays;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ul;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/bxr;->a(Lcom/google/android/gms/internal/ads/ul;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwo;->a:Lcom/google/android/gms/internal/ads/ays;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavy;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ul;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ul;->b()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ays;->a(Lcom/google/android/gms/internal/ads/zzavy;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/bxr;->a(Lcom/google/android/gms/internal/ads/zzavy;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwo;->a:Lcom/google/android/gms/internal/ads/ays;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ays;->a(Lcom/google/android/gms/internal/ads/zzavy;)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwo;->a:Lcom/google/android/gms/internal/ads/ays;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ays;->b()V

    return-void
.end method

.method public final h()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwo;->a:Lcom/google/android/gms/internal/ads/ays;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ays;->a()V

    return-void
.end method

.method public final j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwo;->a:Lcom/google/android/gms/internal/ads/ays;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ays;->b()V

    return-void
.end method
