.class public final Lcom/google/android/exoplayer2/util/m$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/android/exoplayer2/util/r;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Lcom/google/android/exoplayer2/util/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/common/base/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/common/base/q<",
            "TE;>;)V"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    .line 281
    invoke-interface {p2}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/r;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/m$c;->b:Lcom/google/android/exoplayer2/util/r;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/util/m$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/m$b<",
            "TT;TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/m$c;->d:Z

    .line 286
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/m$c;->c:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/m$c;->b:Lcom/google/android/exoplayer2/util/r;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/util/m$b;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/r;)V

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/m$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
