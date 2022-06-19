.class final Lcom/google/android/exoplayer2/text/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B

.field d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b$c;->a:I

    .line 826
    iput p2, p0, Lcom/google/android/exoplayer2/text/a/b$c;->b:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 827
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$c;->c:[B

    const/4 p1, 0x0

    .line 828
    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    return-void
.end method
