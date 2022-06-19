.class final Lcom/google/android/exoplayer2/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/n;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/r;Z)V
    .locals 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Lcom/google/android/exoplayer2/source/n;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;-><init>(Lcom/google/android/exoplayer2/source/r;Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 481
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    .line 482
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 486
    iput p1, p0, Lcom/google/android/exoplayer2/y$c;->d:I

    const/4 p1, 0x0

    .line 487
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/y$c;->e:Z

    .line 488
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b()Lcom/google/android/exoplayer2/al;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 1076
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    return-object v0
.end method
