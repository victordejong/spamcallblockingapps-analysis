.class final Lcom/google/android/exoplayer2/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/exoplayer2/source/ac;

.field final c:I

.field final d:J


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ac;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ac;",
            "IJ)V"
        }
    .end annotation

    .line 2911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2912
    iput-object p1, p0, Lcom/google/android/exoplayer2/o$a;->a:Ljava/util/List;

    .line 2913
    iput-object p2, p0, Lcom/google/android/exoplayer2/o$a;->b:Lcom/google/android/exoplayer2/source/ac;

    .line 2914
    iput p3, p0, Lcom/google/android/exoplayer2/o$a;->c:I

    .line 2915
    iput-wide p4, p0, Lcom/google/android/exoplayer2/o$a;->d:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ac;IJLcom/google/android/exoplayer2/o$1;)V
    .locals 0

    .line 2900
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/o$a;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ac;IJ)V

    return-void
.end method
