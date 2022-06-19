.class public final synthetic Lcom/google/android/exoplayer2/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/exoplayer2/s$a;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/s$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->d:Lcom/google/android/exoplayer2/s$a;

    iput p2, p0, Lcom/google/android/exoplayer2/a;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->d:Lcom/google/android/exoplayer2/s$a;

    iget v1, p0, Lcom/google/android/exoplayer2/a;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s$a;->b(I)V

    return-void
.end method
