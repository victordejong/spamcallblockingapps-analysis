.class final Lcom/google/android/gms/internal/ads/clr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crx;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/cmj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/cmm;

.field public final c:Lcom/google/android/gms/internal/ads/zzvq;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/zzwc;

.field private final g:Lcom/google/android/gms/internal/ads/cri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cmj;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/cri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;",
            "Lcom/google/android/gms/internal/ads/cmm;",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzwc;",
            "Lcom/google/android/gms/internal/ads/cri;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clr;->a:Lcom/google/android/gms/internal/ads/cmj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clr;->b:Lcom/google/android/gms/internal/ads/cmm;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/clr;->c:Lcom/google/android/gms/internal/ads/zzvq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/clr;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/clr;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/clr;->f:Lcom/google/android/gms/internal/ads/zzwc;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/clr;->g:Lcom/google/android/gms/internal/ads/cri;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clr;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cri;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clr;->g:Lcom/google/android/gms/internal/ads/cri;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/crx;
    .locals 9

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/clr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clr;->a:Lcom/google/android/gms/internal/ads/cmj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/clr;->b:Lcom/google/android/gms/internal/ads/cmm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/clr;->c:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/clr;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/clr;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/clr;->f:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/clr;->g:Lcom/google/android/gms/internal/ads/cri;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/clr;-><init>(Lcom/google/android/gms/internal/ads/cmj;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/cri;)V

    return-object v8
.end method
