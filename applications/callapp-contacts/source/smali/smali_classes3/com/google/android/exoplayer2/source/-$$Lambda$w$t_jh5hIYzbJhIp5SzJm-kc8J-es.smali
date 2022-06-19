.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$w$t_jh5hIYzbJhIp5SzJm-kc8J-es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/w;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/extractor/v;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$w$t_jh5hIYzbJhIp5SzJm-kc8J-es;->f$0:Lcom/google/android/exoplayer2/source/w;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$w$t_jh5hIYzbJhIp5SzJm-kc8J-es;->f$1:Lcom/google/android/exoplayer2/extractor/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$w$t_jh5hIYzbJhIp5SzJm-kc8J-es;->f$0:Lcom/google/android/exoplayer2/source/w;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$w$t_jh5hIYzbJhIp5SzJm-kc8J-es;->f$1:Lcom/google/android/exoplayer2/extractor/v;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/w;->lambda$t_jh5hIYzbJhIp5SzJm-kc8J-es(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/extractor/v;)V

    return-void
.end method
