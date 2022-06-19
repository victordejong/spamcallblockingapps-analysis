.class public final synthetic Lcom/google/android/exoplayer2/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final synthetic e:Lcom/google/android/exoplayer2/t$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/google/android/exoplayer2/m;->e:Lcom/google/android/exoplayer2/t$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/m;->e:Lcom/google/android/exoplayer2/t$b;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->h0(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method
