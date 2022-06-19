.class final Lcom/google/android/exoplayer2/text/i/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/i/f$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/text/i/d;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/text/i/d;)V
    .locals 0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput p1, p0, Lcom/google/android/exoplayer2/text/i/f$c;->a:I

    .line 920
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/i/f$c;->b:Lcom/google/android/exoplayer2/text/i/d;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 913
    check-cast p1, Lcom/google/android/exoplayer2/text/i/f$c;

    .line 1925
    iget v0, p0, Lcom/google/android/exoplayer2/text/i/f$c;->a:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/i/f$c;->a:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
