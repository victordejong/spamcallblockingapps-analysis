.class public final synthetic Lcom/google/android/exoplayer2/extractor/b/-$$Lambda$LmB_5M7T1dQwslEuP3JuOptba6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a$d;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/extractor/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/-$$Lambda$LmB_5M7T1dQwslEuP3JuOptba6c;->f$0:Lcom/google/android/exoplayer2/extractor/p;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/b/-$$Lambda$LmB_5M7T1dQwslEuP3JuOptba6c;->f$0:Lcom/google/android/exoplayer2/extractor/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/p;->a(J)J

    move-result-wide p1

    return-wide p1
.end method
