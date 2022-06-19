.class public final synthetic Lcom/google/android/exoplayer2/source/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/exoplayer2/source/w$a;

.field public final synthetic e:Lcom/google/android/exoplayer2/source/w;

.field public final synthetic f:Lcom/google/android/exoplayer2/source/v$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/w$a;Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/source/v$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i;->d:Lcom/google/android/exoplayer2/source/w$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/i;->e:Lcom/google/android/exoplayer2/source/w;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->f:Lcom/google/android/exoplayer2/source/v$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->d:Lcom/google/android/exoplayer2/source/w$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i;->e:Lcom/google/android/exoplayer2/source/w;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i;->f:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/w$a;->p(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/source/v$a;)V

    return-void
.end method
