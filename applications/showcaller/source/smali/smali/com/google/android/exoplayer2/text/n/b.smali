.class final Lcom/google/android/exoplayer2/text/n/b;
.super Ljava/lang/Object;
.source "PgsSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/e;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/n/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public d(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/n/b;->d:Ljava/util/List;

    return-object p1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
