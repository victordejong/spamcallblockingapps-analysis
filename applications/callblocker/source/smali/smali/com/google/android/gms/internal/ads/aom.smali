.class public final Lcom/google/android/gms/internal/ads/aom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ash;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/chh;

.field private final c:Lcom/google/android/gms/internal/ads/yd;

.field private final d:Lcom/google/android/gms/internal/ads/uw;

.field private final e:Lcom/google/android/gms/internal/ads/bij;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/bij;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aom;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aom;->c:Lcom/google/android/gms/internal/ads/yd;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aom;->d:Lcom/google/android/gms/internal/ads/uw;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aom;->e:Lcom/google/android/gms/internal/ads/bij;

    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;)V
    .locals 5

    .prologue
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bE:Lcom/google/android/gms/internal/ads/ect;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->h()Lcom/google/android/gms/internal/ads/uh;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->k()Lcom/google/android/gms/ads/internal/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aom;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aom;->c:Lcom/google/android/gms/internal/ads/yd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/ads/internal/d;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/uh;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->e:Lcom/google/android/gms/internal/ads/bij;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bij;->a()V

    .line 14
    return-void
.end method
