.class public final Lcom/google/android/exoplayer2/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ac$a;
.implements Lcom/google/android/exoplayer2/audio/f;
.implements Lcom/google/android/exoplayer2/drm/c;
.implements Lcom/google/android/exoplayer2/source/s;
.implements Lcom/google/android/exoplayer2/upstream/c$a;
.implements Lcom/google/android/exoplayer2/video/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/a/a$a;

.field public b:Lcom/google/android/exoplayer2/ac;

.field private final c:Lcom/google/android/exoplayer2/util/c;

.field private final d:Lcom/google/android/exoplayer2/al$a;

.field private final e:Lcom/google/android/exoplayer2/al$b;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/m<",
            "Lcom/google/android/exoplayer2/a/b;",
            "Lcom/google/android/exoplayer2/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/c;)V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/a;->c:Lcom/google/android/exoplayer2/util/c;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/util/m;

    .line 93
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->c()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/a/-$$Lambda$nugrN4gUgxZMGEMKGuuRSjJR39g;->INSTANCE:Lcom/google/android/exoplayer2/a/-$$Lambda$nugrN4gUgxZMGEMKGuuRSjJR39g;

    sget-object v3, Lcom/google/android/exoplayer2/a/-$$Lambda$a$frR0oeVoxOVQZPyIzp0c-vP6ZtE;->INSTANCE:Lcom/google/android/exoplayer2/a/-$$Lambda$a$frR0oeVoxOVQZPyIzp0c-vP6ZtE;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/util/m;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/common/base/q;Lcom/google/android/exoplayer2/util/m$b;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/a;->g:Lcom/google/android/exoplayer2/util/m;

    .line 97
    new-instance p1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/al$a;

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/al$b;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/a/a$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/a/a$a;-><init>(Lcom/google/android/exoplayer2/al$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 100
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->f:Landroid/util/SparseArray;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;
    .locals 17
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    .line 813
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->c:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide v2

    .line 815
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 816
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/al;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 817
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_3

    .line 818
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_2

    .line 819
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 821
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->D()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplayer2/source/r$a;->b:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 822
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->E()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplayer2/source/r$a;->c:I

    if-ne v1, v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 824
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->A()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 826
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->F()J

    move-result-wide v9

    goto :goto_3

    .line 831
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/al$b;

    .line 6809
    invoke-virtual {v4, v5, v1, v9, v10}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v1

    .line 7291
    iget-wide v7, v1, Lcom/google/android/exoplayer2/al$b;->p:J

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v9

    :cond_6
    :goto_3
    move-wide v7, v9

    .line 834
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 7923
    iget-object v11, v1, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    .line 835
    new-instance v16, Lcom/google/android/exoplayer2/a/b$a;

    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 841
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 842
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 844
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->A()J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 845
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->B()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/a/b$a;-><init>(JLcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;JLcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;JJ)V

    return-object v16
.end method

.method private a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;
    .locals 3

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/al;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 864
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 865
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    return-object p1

    .line 858
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result p1

    .line 859
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v1

    .line 860
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 862
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/al;->b:Lcom/google/android/exoplayer2/al;

    .line 861
    :goto_3
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;FLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;IIIFLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;IILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;IJJLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;IJLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/a/b$a;",
            "I",
            "Lcom/google/android/exoplayer2/util/m$a<",
            "Lcom/google/android/exoplayer2/a/b;",
            ">;)V"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 797
    iget-object p1, p0, Lcom/google/android/exoplayer2/a/a;->g:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/m;->b(ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;JILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;JLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Landroid/view/Surface;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/audio/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;JLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;Ljava/util/List;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;ZILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/a/b;Lcom/google/android/exoplayer2/a/b$b;)V
    .locals 0

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/a/b;Lcom/google/android/exoplayer2/a/b$b;)V
    .locals 3

    .line 140
    iget-object p1, p0, Lcom/google/android/exoplayer2/a/a;->f:Landroid/util/SparseArray;

    .line 8094
    iget-object p2, p3, Lcom/google/android/exoplayer2/a/b$b;->a:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    const/4 p2, 0x0

    .line 9077
    :goto_0
    iget-object v0, p3, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 8096
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/a/b$b;->b(I)I

    move-result v0

    .line 8097
    iget-object v1, p3, Lcom/google/android/exoplayer2/a/b$b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b$a;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;IJJLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;JLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;ZILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private d()Lcom/google/android/exoplayer2/a/b$a;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 5923
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    .line 802
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic d(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic d(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic d(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic d(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private e()Lcom/google/android/exoplayer2/a/b$a;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 7934
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    .line 869
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic e(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic e(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private f()Lcom/google/android/exoplayer2/a/b$a;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 7945
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/a$a;->e:Lcom/google/android/exoplayer2/source/r$a;

    .line 873
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 884
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 885
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/al;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 887
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    return-object p1

    .line 888
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/al;->b:Lcom/google/android/exoplayer2/al;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    return-object p1

    .line 890
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object p2

    .line 891
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 893
    :cond_4
    sget-object p2, Lcom/google/android/exoplayer2/al;->b:Lcom/google/android/exoplayer2/al;

    :goto_2
    const/4 v0, 0x0

    .line 892
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic f(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic g(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic h(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$-NZ-_OVTwvuZkULoQfMj2nCeHrA(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$0zIm_npBHWkR3V50j8W3QRq7i5Q(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->e(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$1GsbzsjmtCxUXRkd87bcmhiPB3Y(Lcom/google/android/exoplayer2/a/b$a;JLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;JLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$1Mrd1xsp_zVhR9N_jlpQkeEJoZ0(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$3LKLU2w8WPaPkkD0v-DIMvutPdo(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->c(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$6Mu1G1CyOCbV-FmsaLZFrzdMcrU(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$6jzbncxT0WlUeEEUEreNJcBYN4A(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$8MgCfb27LMHkoq3j_wJ4qTunkn4(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;ZLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$8jUUZmm2DtYS-wa_c5moRw3lphg(Lcom/google/android/exoplayer2/a/b$a;JILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;JILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$BTWeHlincaMRD_iTGFZEdVoClq0(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->f(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$BrV9Qq4zIIs2HWn8ozmae13MzJU(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->c(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$Dj93FcofXhMygkae0WVWoeDrD1w(Lcom/google/android/exoplayer2/a/b$a;Ljava/util/List;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Ljava/util/List;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$E7BIUV2f0CdY6o15bvkYiRcApIA(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$EjUjn0MYLrqSRC7Vj4dtQzHmqeA(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->e(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$K5zQS_pTn_fq8zxym09qHukNCaA(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$KfzQW7R0kfwrESQgmw-D0rHPrnQ(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->d(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$L2RL1_HcWV4VwA1QZQnG-MM3Fdo(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$M4D0RQhs1gd2V7qQ3bjtdT1IfB8(Lcom/google/android/exoplayer2/a/b$a;ZILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;ZILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$NhqbY4PURfB22Clq1P9ltGtwjmA(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$P14E2FuHzNVqWsCPktQWCbddx8E(Lcom/google/android/exoplayer2/a/b$a;IJLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;IJLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$QZH_5RbzpFXbvXG9W0W-ERjYxfE(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$VyKw1Nm8PKwnzJ-AHxgPFGYMIL0(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->d(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$YeNv7p_Ht-KM4ncXGGhHVu2q5Lw(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$Ys2yAAFf1uUBewdZcSE6i71R7bU(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->d(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$ZLtekCfxyxhL1UPVwDnzly2-RqY(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->c(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$ZhiVBZuPylGwrgjAkk8T7KDh5dM(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->c(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$_6R8Mq3YGYlMaQVQ5ZytKgp3IUE(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$a2PfBlDdoMUEDdx2kkVi3n9BxoY(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$aPK7_0CKlE4H6xuM9SjSRckphgY(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$cKmvA13zuSaJj8mPyZFWY7xsvMI(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->g(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$ckM6xtKyHlwiCQdNcs6mHEP5oCU(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;JLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;JLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$coO4LtZg9YbqVOqecCJtgQmdBbY(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$d7W1H1qxUFaO6gd_BJ18jonlpQ0(Lcom/google/android/exoplayer2/a/b$a;IJJLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;IJJLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$dkx80oLOHUB8H6eUBp545G198TU(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;JLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;JLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$ehuuyKZGhNNG46R7BaiI6eU8Aew(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$frR0oeVoxOVQZPyIzp0c-vP6ZtE(Lcom/google/android/exoplayer2/a/b;Lcom/google/android/exoplayer2/a/b$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b;Lcom/google/android/exoplayer2/a/b$b;)V

    return-void
.end method

.method public static synthetic lambda$i340sWouQ1ITC9vTLDAGYFXXTTc(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$iAdqiQA4Sf3IM_WosW5WgWigb9A(Lcom/google/android/exoplayer2/a/b$a;FLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;FLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$iro95wRVN-SvQ_RaaFOZrUFl1jg(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$jX7s11aeFHiKqIRGNV-UeSxl9go(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$jtOsbChicVO6JDSFVk09oUd53xA(Lcom/google/android/exoplayer2/a/a;Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/a/b;Lcom/google/android/exoplayer2/a/b$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/a/b;Lcom/google/android/exoplayer2/a/b$b;)V

    return-void
.end method

.method public static synthetic lambda$kVBmXFYs2kVMF82iOxweduayui0(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$mbXtZ6NDkl3Za1ru6_oKDUYwDpM(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$pJefUOL7g-BbaprQeaLm9t7dWY8(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->d(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$pTdXKpe0s0FlGssV-oLRw6EFUk4(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/a/b$a;ZLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$sA7gT1502m-RV-yg0LaX2s_5n1U(Lcom/google/android/exoplayer2/a/b$a;IJJLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;IJJLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$tQ4jNxFtLNhrGdI--aZQXfpcnWs(Lcom/google/android/exoplayer2/a/b$a;ZILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ZILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$taabKT2eJ8WWOjs7-m3L4ADuWWY(Lcom/google/android/exoplayer2/a/b$a;Landroid/view/Surface;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Landroid/view/Surface;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$tolDqLVeuOWuz54dYTBbISK2LVQ(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a/a;->h(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$v5940N5MCHJ757-fQtkQqJVbK9A(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$vd0Kqfbwls9de9ARi_4cZfyxbcc(Lcom/google/android/exoplayer2/a/b$a;IILcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;IILcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$wQBhgLIJro8ZdIK12Nh3qFW4QFc(Lcom/google/android/exoplayer2/a/b$a;IIIFLcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;IIIFLcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$wRqyB9b8YczY3iw0kdRuklIg23c(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/audio/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/audio/d;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public static synthetic lambda$xnVlRxXRDLM5A2ZMy-OsHvtGB-o(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->c(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 151
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->f:Landroid/util/SparseArray;

    const/16 v2, 0x40c

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->g:Lcom/google/android/exoplayer2/util/m;

    new-instance v3, Lcom/google/android/exoplayer2/a/-$$Lambda$a$tolDqLVeuOWuz54dYTBbISK2LVQ;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$tolDqLVeuOWuz54dYTBbISK2LVQ;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    .line 2247
    iget-object v0, v1, Lcom/google/android/exoplayer2/util/m;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/util/k;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 347
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$iAdqiQA4Sf3IM_WosW5WgWigb9A;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$iAdqiQA4Sf3IM_WosW5WgWigb9A;-><init>(Lcom/google/android/exoplayer2/a/b$a;F)V

    const/16 p1, 0x3fb

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 472
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$vd0Kqfbwls9de9ARi_4cZfyxbcc;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$vd0Kqfbwls9de9ARi_4cZfyxbcc;-><init>(Lcom/google/android/exoplayer2/a/b$a;II)V

    const/16 p1, 0x405

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(IIIF)V
    .locals 8

    .line 431
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v6

    .line 432
    new-instance v7, Lcom/google/android/exoplayer2/a/-$$Lambda$a$wQBhgLIJro8ZdIK12Nh3qFW4QFc;

    move-object v0, v7

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$wQBhgLIJro8ZdIK12Nh3qFW4QFc;-><init>(Lcom/google/android/exoplayer2/a/b$a;IIIF)V

    const/16 p1, 0x404

    invoke-direct {p0, v6, p1, v7}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .line 399
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 400
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$P14E2FuHzNVqWsCPktQWCbddx8E;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$P14E2FuHzNVqWsCPktQWCbddx8E;-><init>(Lcom/google/android/exoplayer2/a/b$a;IJ)V

    const/16 p1, 0x3ff

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    .line 264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v7

    .line 265
    new-instance v8, Lcom/google/android/exoplayer2/a/-$$Lambda$a$d7W1H1qxUFaO6gd_BJ18jonlpQ0;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$d7W1H1qxUFaO6gd_BJ18jonlpQ0;-><init>(Lcom/google/android/exoplayer2/a/b$a;IJJ)V

    const/16 p1, 0x3f4

    invoke-direct {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 1

    .line 733
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 734
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$0zIm_npBHWkR3V50j8W3QRq7i5Q;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$0zIm_npBHWkR3V50j8W3QRq7i5Q;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    const/16 v0, 0x406

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 487
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ZLtekCfxyxhL1UPVwDnzly2-RqY;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ZLtekCfxyxhL1UPVwDnzly2-RqY;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    const/16 p3, 0x3e8

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V
    .locals 6

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 528
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$8MgCfb27LMHkoq3j_wJ4qTunkn4;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$8MgCfb27LMHkoq3j_wJ4qTunkn4;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 549
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$iro95wRVN-SvQ_RaaFOZrUFl1jg;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$iro95wRVN-SvQ_RaaFOZrUFl1jg;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/o;)V

    const/16 p3, 0x3ec

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Ljava/lang/Exception;)V
    .locals 0

    .line 752
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 753
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$mbXtZ6NDkl3Za1ru6_oKDUYwDpM;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$mbXtZ6NDkl3Za1ru6_oKDUYwDpM;-><init>(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;)V

    const/16 p3, 0x408

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$1GsbzsjmtCxUXRkd87bcmhiPB3Y;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$1GsbzsjmtCxUXRkd87bcmhiPB3Y;-><init>(Lcom/google/android/exoplayer2/a/b$a;J)V

    const/16 p1, 0x3f3

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(JI)V
    .locals 2

    .line 451
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 452
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$8jUUZmm2DtYS-wa_c5moRw3lphg;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$8jUUZmm2DtYS-wa_c5moRw3lphg;-><init>(Lcom/google/android/exoplayer2/a/b$a;JI)V

    const/16 p1, 0x402

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    .line 442
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 443
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$taabKT2eJ8WWOjs7-m3L4ADuWWY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$taabKT2eJ8WWOjs7-m3L4ADuWWY;-><init>(Lcom/google/android/exoplayer2/a/b$a;Landroid/view/Surface;)V

    const/16 p1, 0x403

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 679
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->g:Lcom/google/android/exoplayer2/source/q;

    if-eqz v0, :cond_0

    .line 680
    new-instance v0, Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->g:Lcom/google/android/exoplayer2/source/q;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Lcom/google/android/exoplayer2/source/q;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    goto :goto_0

    .line 681
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    :goto_0
    const/16 v1, 0xb

    .line 682
    new-instance v2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$coO4LtZg9YbqVOqecCJtgQmdBbY;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$coO4LtZg9YbqVOqecCJtgQmdBbY;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 387
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 388
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$v5940N5MCHJ757-fQtkQqJVbK9A;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$v5940N5MCHJ757-fQtkQqJVbK9A;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3fe

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 2

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 575
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$kVBmXFYs2kVMF82iOxweduayui0;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$kVBmXFYs2kVMF82iOxweduayui0;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/MediaItem;I)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 2

    .line 703
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 704
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$QZH_5RbzpFXbvXG9W0W-ERjYxfE;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$QZH_5RbzpFXbvXG9W0W-ERjYxfE;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/aa;)V

    const/16 p1, 0xd

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ac$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ac$b;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ac;Landroid/os/Looper;)V
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 1897
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    .line 134
    invoke-virtual {v0}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 133
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 135
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ac;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->g:Lcom/google/android/exoplayer2/util/m;

    new-instance v6, Lcom/google/android/exoplayer2/a/-$$Lambda$a$jtOsbChicVO6JDSFVk09oUd53xA;

    invoke-direct {v6, p0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$jtOsbChicVO6JDSFVk09oUd53xA;-><init>(Lcom/google/android/exoplayer2/a/a;Lcom/google/android/exoplayer2/ac;)V

    .line 2137
    new-instance p1, Lcom/google/android/exoplayer2/util/m;

    iget-object v2, v0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, v0, Lcom/google/android/exoplayer2/util/m;->a:Lcom/google/android/exoplayer2/util/c;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/m;->c:Lcom/google/common/base/q;

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/m;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/common/base/q;Lcom/google/android/exoplayer2/util/m$b;)V

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->g:Lcom/google/android/exoplayer2/util/m;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/al;I)V
    .locals 4

    .line 563
    iget-object p1, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ac;

    .line 2976
    iget-object v1, p1, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    iget-object v2, p1, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a/a$a;->a:Lcom/google/android/exoplayer2/al$a;

    .line 2977
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/ac;Lcom/google/common/collect/v;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    .line 2978
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/al;)V

    .line 564
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 565
    new-instance v0, Lcom/google/android/exoplayer2/a/-$$Lambda$a$EjUjn0MYLrqSRC7Vj4dtQzHmqeA;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$EjUjn0MYLrqSRC7Vj4dtQzHmqeA;-><init>(Lcom/google/android/exoplayer2/a/b$a;I)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/audio/d;)V
    .locals 2

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$wRqyB9b8YczY3iw0kdRuklIg23c;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$wRqyB9b8YczY3iw0kdRuklIg23c;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/audio/d;)V

    const/16 p1, 0x3f8

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 358
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$L2RL1_HcWV4VwA1QZQnG-MM3Fdo;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$L2RL1_HcWV4VwA1QZQnG-MM3Fdo;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x3fc

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$a2PfBlDdoMUEDdx2kkVi3n9BxoY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$a2PfBlDdoMUEDdx2kkVi3n9BxoY;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x3ef

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 2

    .line 584
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 585
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ehuuyKZGhNNG46R7BaiI6eU8Aew;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ehuuyKZGhNNG46R7BaiI6eU8Aew;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 305
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$YeNv7p_Ht-KM4ncXGGhHVu2q5Lw;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$YeNv7p_Ht-KM4ncXGGhHVu2q5Lw;-><init>(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;)V

    const/16 p1, 0x3fa

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 408
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$aPK7_0CKlE4H6xuM9SjSRckphgY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$aPK7_0CKlE4H6xuM9SjSRckphgY;-><init>(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;)V

    const/16 p1, 0x400

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0

    .line 372
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p2

    .line 373
    new-instance p3, Lcom/google/android/exoplayer2/a/-$$Lambda$a$dkx80oLOHUB8H6eUBp545G198TU;

    invoke-direct {p3, p2, p1, p4, p5}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$dkx80oLOHUB8H6eUBp545G198TU;-><init>(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;J)V

    const/16 p1, 0x3fd

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 651
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 652
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$pTdXKpe0s0FlGssV-oLRw6EFUk4;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$pTdXKpe0s0FlGssV-oLRw6EFUk4;-><init>(Lcom/google/android/exoplayer2/a/b$a;Z)V

    const/16 p1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a/a;->h:Z

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a/a;->h:Z

    const/4 v1, -0x1

    .line 183
    new-instance v2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$cKmvA13zuSaJj8mPyZFWY7xsvMI;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$cKmvA13zuSaJj8mPyZFWY7xsvMI;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 621
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 622
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$KfzQW7R0kfwrESQgmw-D0rHPrnQ;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$KfzQW7R0kfwrESQgmw-D0rHPrnQ;-><init>(Lcom/google/android/exoplayer2/a/b$a;I)V

    const/4 p1, 0x5

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(IJJ)V
    .locals 10

    .line 4877
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    .line 4956
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    invoke-virtual {v1}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    .line 5804
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5805
    check-cast v0, Ljava/util/List;

    .line 5806
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5841
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 5807
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 5812
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ab;->b(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    .line 4956
    :goto_0
    check-cast v0, Lcom/google/android/exoplayer2/source/r$a;

    .line 4877
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    const/16 v8, 0x3ee

    .line 723
    new-instance v9, Lcom/google/android/exoplayer2/a/-$$Lambda$a$sA7gT1502m-RV-yg0LaX2s_5n1U;

    move-object v1, v9

    move-object v2, v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$sA7gT1502m-RV-yg0LaX2s_5n1U;-><init>(Lcom/google/android/exoplayer2/a/b$a;IJJ)V

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 1

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 743
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$Ys2yAAFf1uUBewdZcSE6i71R7bU;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$Ys2yAAFf1uUBewdZcSE6i71R7bU;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    const/16 v0, 0x407

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 500
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$_6R8Mq3YGYlMaQVQ5ZytKgp3IUE;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$_6R8Mq3YGYlMaQVQ5ZytKgp3IUE;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    const/16 p3, 0x3e9

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$NhqbY4PURfB22Clq1P9ltGtwjmA;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$NhqbY4PURfB22Clq1P9ltGtwjmA;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3f2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$jX7s11aeFHiKqIRGNV-UeSxl9go;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$jX7s11aeFHiKqIRGNV-UeSxl9go;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x401

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 274
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$1Mrd1xsp_zVhR9N_jlpQkeEJoZ0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$1Mrd1xsp_zVhR9N_jlpQkeEJoZ0;-><init>(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;)V

    const/16 p1, 0x3f5

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p2

    .line 228
    new-instance p3, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ckM6xtKyHlwiCQdNcs6mHEP5oCU;

    invoke-direct {p3, p2, p1, p4, p5}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ckM6xtKyHlwiCQdNcs6mHEP5oCU;-><init>(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/String;J)V

    const/16 p1, 0x3f1

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 602
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 603
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ZhiVBZuPylGwrgjAkk8T7KDh5dM;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$ZhiVBZuPylGwrgjAkk8T7KDh5dM;-><init>(Lcom/google/android/exoplayer2/a/b$a;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final b(ZI)V
    .locals 2

    .line 612
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 613
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$M4D0RQhs1gd2V7qQ3bjtdT1IfB8;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$M4D0RQhs1gd2V7qQ3bjtdT1IfB8;-><init>(Lcom/google/android/exoplayer2/a/b$a;ZI)V

    const/4 p1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final c(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 1

    .line 761
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 762
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$BrV9Qq4zIIs2HWn8ozmae13MzJU;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$BrV9Qq4zIIs2HWn8ozmae13MzJU;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    const/16 v0, 0x409

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final c(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 513
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$K5zQS_pTn_fq8zxym09qHukNCaA;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$K5zQS_pTn_fq8zxym09qHukNCaA;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    const/16 p3, 0x3ea

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final c(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 213
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$VyKw1Nm8PKwnzJ-AHxgPFGYMIL0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$VyKw1Nm8PKwnzJ-AHxgPFGYMIL0;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x3f0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 594
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$Dj93FcofXhMygkae0WVWoeDrD1w;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$Dj93FcofXhMygkae0WVWoeDrD1w;-><init>(Lcom/google/android/exoplayer2/a/b$a;Ljava/util/List;)V

    const/4 p1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 669
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 670
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$6Mu1G1CyOCbV-FmsaLZFrzdMcrU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$6Mu1G1CyOCbV-FmsaLZFrzdMcrU;-><init>(Lcom/google/android/exoplayer2/a/b$a;Z)V

    const/16 p1, 0xa

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final c(ZI)V
    .locals 2

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 632
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$tQ4jNxFtLNhrGdI--aZQXfpcnWs;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$tQ4jNxFtLNhrGdI--aZQXfpcnWs;-><init>(Lcom/google/android/exoplayer2/a/b$a;ZI)V

    const/4 p1, 0x6

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 642
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$3LKLU2w8WPaPkkD0v-DIMvutPdo;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$3LKLU2w8WPaPkkD0v-DIMvutPdo;-><init>(Lcom/google/android/exoplayer2/a/b$a;I)V

    const/4 p1, 0x7

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final d(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 1

    .line 770
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 771
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$-NZ-_OVTwvuZkULoQfMj2nCeHrA;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$-NZ-_OVTwvuZkULoQfMj2nCeHrA;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    const/16 v0, 0x40a

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final d(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$xnVlRxXRDLM5A2ZMy-OsHvtGB-o;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$xnVlRxXRDLM5A2ZMy-OsHvtGB-o;-><init>(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x3f6

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$pJefUOL7g-BbaprQeaLm9t7dWY8;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$pJefUOL7g-BbaprQeaLm9t7dWY8;-><init>(Lcom/google/android/exoplayer2/a/b$a;Z)V

    const/16 p1, 0x3f9

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 660
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 661
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$E7BIUV2f0CdY6o15bvkYiRcApIA;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$E7BIUV2f0CdY6o15bvkYiRcApIA;-><init>(Lcom/google/android/exoplayer2/a/b$a;I)V

    const/16 p1, 0x9

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final e(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 1

    .line 779
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->f(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 780
    new-instance p2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$6jzbncxT0WlUeEEUEreNJcBYN4A;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$6jzbncxT0WlUeEEUEreNJcBYN4A;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    const/16 v0, 0x40b

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final f(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 691
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/a;->h:Z

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ac;

    .line 3970
    iget-object v2, v0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    iget-object v3, v0, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v4, v0, Lcom/google/android/exoplayer2/a/a$a;->a:Lcom/google/android/exoplayer2/al$a;

    .line 3971
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/ac;Lcom/google/common/collect/v;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    .line 694
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    const/16 v1, 0xc

    .line 695
    new-instance v2, Lcom/google/android/exoplayer2/a/-$$Lambda$a$i340sWouQ1ITC9vTLDAGYFXXTTc;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$i340sWouQ1ITC9vTLDAGYFXXTTc;-><init>(Lcom/google/android/exoplayer2/a/b$a;I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public final p_()V
    .locals 3

    .line 713
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 714
    new-instance v1, Lcom/google/android/exoplayer2/a/-$$Lambda$a$BTWeHlincaMRD_iTGFZEdVoClq0;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/a/-$$Lambda$a$BTWeHlincaMRD_iTGFZEdVoClq0;-><init>(Lcom/google/android/exoplayer2/a/b$a;)V

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method

.method public synthetic q_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$q_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method
