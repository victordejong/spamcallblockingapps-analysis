.class public final Lcom/google/android/exoplayer2/source/w$b;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/l;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/l;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/l;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$b;->a:Lcom/google/android/exoplayer2/upstream/l;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w$b;->b:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/w$b;->c:Ljava/util/Map;

    .line 5
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/w$b;->d:J

    .line 6
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/w$b;->e:J

    .line 7
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/w$b;->f:J

    return-void
.end method
