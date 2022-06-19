.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/w;

.field public final synthetic f$1:Lcom/google/common/collect/v$a;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/r$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/w;Lcom/google/common/collect/v$a;Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;->f$0:Lcom/google/android/exoplayer2/w;

    iput-object p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;->f$1:Lcom/google/common/collect/v$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;->f$2:Lcom/google/android/exoplayer2/source/r$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;->f$0:Lcom/google/android/exoplayer2/w;

    iget-object v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;->f$1:Lcom/google/common/collect/v$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;->f$2:Lcom/google/android/exoplayer2/source/r$a;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/w;->lambda$VPEmLSD6CVHb-HerMpsUb0yzRig(Lcom/google/android/exoplayer2/w;Lcom/google/common/collect/v$a;Lcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method
