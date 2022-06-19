.class public final synthetic Lcom/google/android/exoplayer2/audio/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/exoplayer2/audio/l$a;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/l$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c;->d:Lcom/google/android/exoplayer2/audio/l$a;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/c;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->d:Lcom/google/android/exoplayer2/audio/l$a;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/c;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/l$a;->h(I)V

    return-void
.end method
