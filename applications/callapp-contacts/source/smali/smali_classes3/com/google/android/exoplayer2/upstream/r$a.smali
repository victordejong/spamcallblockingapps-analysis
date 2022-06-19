.class public final Lcom/google/android/exoplayer2/upstream/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/l;

.field public final b:Lcom/google/android/exoplayer2/source/o;

.field public final c:Ljava/io/IOException;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r$a;->a:Lcom/google/android/exoplayer2/source/l;

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/r$a;->b:Lcom/google/android/exoplayer2/source/o;

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/r$a;->c:Ljava/io/IOException;

    .line 62
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/r$a;->d:I

    return-void
.end method
