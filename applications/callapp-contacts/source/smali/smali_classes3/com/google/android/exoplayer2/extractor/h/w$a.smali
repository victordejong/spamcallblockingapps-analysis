.class final Lcom/google/android/exoplayer2/extractor/h/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/extractor/h/j;

.field final b:Lcom/google/android/exoplayer2/util/ad;

.field final c:Lcom/google/android/exoplayer2/util/t;

.field d:Z

.field e:Z

.field f:Z

.field g:I

.field h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h/j;Lcom/google/android/exoplayer2/util/ad;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w$a;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    .line 320
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/w$a;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 321
    new-instance p1, Lcom/google/android/exoplayer2/util/t;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    return-void
.end method
