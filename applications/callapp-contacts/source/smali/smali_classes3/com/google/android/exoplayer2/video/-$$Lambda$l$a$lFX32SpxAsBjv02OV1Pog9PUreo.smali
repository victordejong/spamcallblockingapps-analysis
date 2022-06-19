.class public final synthetic Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/video/l$a;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/Format;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/decoder/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;->f$0:Lcom/google/android/exoplayer2/video/l$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;->f$1:Lcom/google/android/exoplayer2/Format;

    iput-object p3, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;->f$2:Lcom/google/android/exoplayer2/decoder/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;->f$0:Lcom/google/android/exoplayer2/video/l$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;->f$1:Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;->f$2:Lcom/google/android/exoplayer2/decoder/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/video/l$a;->lambda$lFX32SpxAsBjv02OV1Pog9PUreo(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method
