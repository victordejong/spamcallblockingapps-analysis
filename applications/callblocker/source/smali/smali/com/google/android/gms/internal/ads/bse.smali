.class public final Lcom/google/android/gms/internal/ads/bse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bry",
        "<",
        "Lcom/google/android/gms/internal/ads/avq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/awq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/awq;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bse;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bse;->b:Lcom/google/android/gms/internal/ads/awq;

    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Landroid/view/View;Lcom/google/android/gms/internal/ads/bsf;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/bsg;

    sget-object v1, Lcom/google/android/gms/internal/ads/bsh;->a:Lcom/google/android/gms/internal/ads/awx;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/bsg;-><init>(Lcom/google/android/gms/internal/ads/bse;Lcom/google/android/gms/internal/ads/awx;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bse;->b:Lcom/google/android/gms/internal/ads/awq;

    new-instance v2, Lcom/google/android/gms/internal/ads/amy;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/awq;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/avv;)Lcom/google/android/gms/internal/ads/avs;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/bsj;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/bsj;-><init>(Lcom/google/android/gms/internal/ads/bse;Lcom/google/android/gms/internal/ads/avs;)V

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/ads/bsf;->a(Lcom/google/android/gms/ads/internal/e;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/avs;->h()Lcom/google/android/gms/internal/ads/avq;

    move-result-object v0

    .line 11
    return-object v0
.end method
