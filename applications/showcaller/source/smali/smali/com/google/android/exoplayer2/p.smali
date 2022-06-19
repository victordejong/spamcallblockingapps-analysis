.class public final synthetic Lcom/google/android/exoplayer2/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/exoplayer2/d0;

.field public final synthetic e:Lcom/google/android/exoplayer2/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/d0;Lcom/google/android/exoplayer2/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->d:Lcom/google/android/exoplayer2/d0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/p;->e:Lcom/google/android/exoplayer2/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->d:Lcom/google/android/exoplayer2/d0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/p;->e:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/d0;->E(Lcom/google/android/exoplayer2/p0;)V

    return-void
.end method
