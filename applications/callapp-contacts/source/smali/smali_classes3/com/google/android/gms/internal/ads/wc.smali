.class public final Lcom/google/android/gms/internal/ads/wc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/wd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/wo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/wo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wc;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wc;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wc;->c:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wc;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wc;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wc;->c:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/wo;

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/wd;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/wd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/wo;)V

    return-object v3
.end method
