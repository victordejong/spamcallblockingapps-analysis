.class public final Lcom/google/android/exoplayer2/source/af$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/upstream/h$a;

.field b:Lcom/google/android/exoplayer2/upstream/r;

.field c:Z

.field d:Ljava/lang/Object;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h$a;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/h$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/af$a;->a:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 57
    new-instance p1, Lcom/google/android/exoplayer2/upstream/p;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/p;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/af$a;->b:Lcom/google/android/exoplayer2/upstream/r;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/af$a;->c:Z

    return-void
.end method
