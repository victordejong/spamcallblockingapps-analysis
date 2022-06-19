.class public Lcom/google/android/gms/internal/ads/ahf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/ahf$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/ahf$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ahf$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahf;->a:Lcom/google/android/gms/internal/ads/ahf$a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/a;
    .locals 6

    .prologue
    .line 4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ahf;->a:Lcom/google/android/gms/internal/ads/ahf$a;

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/internal/a;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ahf$a;->a()Lcom/google/android/gms/internal/ads/acb;

    move-result-object v1

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ahf$a;->b()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/sq;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ahf$a;->d()Lcom/google/android/gms/internal/ads/sv;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/sq;-><init>(Lcom/google/android/gms/internal/ads/sv;)V

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ahf$a;->c()Lcom/google/android/gms/internal/ads/dwn;

    move-result-object v4

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ahf$a;->e()Lcom/google/android/gms/internal/ads/of;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/internal/ads/acb;Lcom/google/android/gms/internal/ads/zn;Lcom/google/android/gms/internal/ads/sw;Lcom/google/android/gms/internal/ads/dwn;Lcom/google/android/gms/internal/ads/of;)V

    .line 11
    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/sv;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->a:Lcom/google/android/gms/internal/ads/ahf$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahf$a;->d()Lcom/google/android/gms/internal/ads/sv;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/of;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->a:Lcom/google/android/gms/internal/ads/ahf$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahf$a;->e()Lcom/google/android/gms/internal/ads/of;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/kb;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->a:Lcom/google/android/gms/internal/ads/ahf$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahf$a;->f()Lcom/google/android/gms/internal/ads/kb;

    move-result-object v0

    return-object v0
.end method
