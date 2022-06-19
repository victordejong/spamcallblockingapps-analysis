.class public final synthetic Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/audio/f$a;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/decoder/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE;->f$0:Lcom/google/android/exoplayer2/audio/f$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE;->f$1:Lcom/google/android/exoplayer2/decoder/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE;->f$0:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE;->f$1:Lcom/google/android/exoplayer2/decoder/d;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/f$a;->lambda$gJlMxnEqr3eKBqnKJSnVUCTgpLE(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method
