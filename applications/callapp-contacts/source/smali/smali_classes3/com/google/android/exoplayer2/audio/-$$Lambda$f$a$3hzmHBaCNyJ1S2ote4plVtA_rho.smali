.class public final synthetic Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/audio/f$a;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/Format;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/decoder/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;->f$0:Lcom/google/android/exoplayer2/audio/f$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;->f$1:Lcom/google/android/exoplayer2/Format;

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;->f$2:Lcom/google/android/exoplayer2/decoder/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;->f$0:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;->f$1:Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;->f$2:Lcom/google/android/exoplayer2/decoder/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/f$a;->lambda$3hzmHBaCNyJ1S2ote4plVtA_rho(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method
