.class final Lcom/google/android/gms/internal/ads/wf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cm2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TA;>;A:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cm2<",
        "TU;TA;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/rg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rg2<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/tg2;

.field public final c:Lcom/google/android/gms/internal/ads/zzbdg;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/zzbdr;

.field public final g:Lcom/google/android/gms/internal/ads/rl2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbdr;Lcom/google/android/gms/internal/ads/rl2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rg2<",
            "TU;>;",
            "Lcom/google/android/gms/internal/ads/tg2;",
            "Lcom/google/android/gms/internal/ads/zzbdg;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzbdr;",
            "Lcom/google/android/gms/internal/ads/rl2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wf2;->a:Lcom/google/android/gms/internal/ads/rg2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wf2;->b:Lcom/google/android/gms/internal/ads/tg2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wf2;->c:Lcom/google/android/gms/internal/ads/zzbdg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wf2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/wf2;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/wf2;->f:Lcom/google/android/gms/internal/ads/zzbdr;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/wf2;->g:Lcom/google/android/gms/internal/ads/rl2;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/rl2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf2;->g:Lcom/google/android/gms/internal/ads/rl2;

    return-object v0
.end method

.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf2;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method
