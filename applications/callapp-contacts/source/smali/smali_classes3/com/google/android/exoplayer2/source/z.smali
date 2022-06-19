.class public final Lcom/google/android/exoplayer2/source/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/z$a;,
        Lcom/google/android/exoplayer2/source/z$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/google/android/exoplayer2/Format;

.field private C:Lcom/google/android/exoplayer2/Format;

.field private D:Lcom/google/android/exoplayer2/Format;

.field private E:I

.field private F:Z

.field private G:Z

.field private H:J

.field private I:Z

.field final a:Lcom/google/android/exoplayer2/source/y;

.field final b:Lcom/google/android/exoplayer2/source/z$a;

.field c:Lcom/google/android/exoplayer2/source/z$b;

.field d:Lcom/google/android/exoplayer2/drm/DrmSession;

.field e:I

.field f:I

.field g:J

.field private final h:Lcom/google/android/exoplayer2/drm/d;

.field private final i:Lcom/google/android/exoplayer2/drm/c$a;

.field private final j:Landroid/os/Looper;

.field private k:Lcom/google/android/exoplayer2/Format;

.field private l:I

.field private m:[I

.field private n:[J

.field private o:[I

.field private p:[I

.field private q:[J

.field private r:[Lcom/google/android/exoplayer2/extractor/x$a;

.field private s:[Lcom/google/android/exoplayer2/Format;

.field private t:I

.field private u:I

.field private v:J

.field private w:J

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/b;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/drm/c$a;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->j:Landroid/os/Looper;

    .line 146
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/z;->h:Lcom/google/android/exoplayer2/drm/d;

    .line 147
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/z;->i:Lcom/google/android/exoplayer2/drm/c$a;

    .line 148
    new-instance p2, Lcom/google/android/exoplayer2/source/y;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/y;-><init>(Lcom/google/android/exoplayer2/upstream/b;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    .line 149
    new-instance p1, Lcom/google/android/exoplayer2/source/z$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/z$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->b:Lcom/google/android/exoplayer2/source/z$a;

    const/16 p1, 0x3e8

    .line 150
    iput p1, p0, Lcom/google/android/exoplayer2/source/z;->l:I

    new-array p2, p1, [I

    .line 151
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->m:[I

    new-array p2, p1, [J

    .line 152
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    new-array p2, p1, [J

    .line 153
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    new-array p2, p1, [I

    .line 154
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    new-array p2, p1, [I

    .line 155
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    new-array p2, p1, [Lcom/google/android/exoplayer2/extractor/x$a;

    .line 156
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/z;->r:[Lcom/google/android/exoplayer2/extractor/x$a;

    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    .line 157
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 p1, -0x8000000000000000L

    .line 158
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    .line 159
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/z;->v:J

    .line 160
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/z;->w:J

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/z;->z:Z

    .line 162
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/z;->y:Z

    return-void
.end method

.method private a(IIJZ)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_4

    .line 940
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    aget-wide v4, v3, p1

    cmp-long v6, v4, p3

    if-gtz v6, :cond_4

    if-eqz p5, :cond_0

    .line 941
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 944
    :cond_0
    aget-wide v4, v3, p1

    cmp-long v1, v4, p3

    if-eqz v1, :cond_3

    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 951
    iget v3, p0, Lcom/google/android/exoplayer2/source/z;->l:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static a(Lcom/google/android/exoplayer2/upstream/b;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/drm/c$a;)Lcom/google/android/exoplayer2/source/z;
    .locals 1

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/source/z;

    .line 135
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    .line 136
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/drm/d;

    .line 137
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/drm/c$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/z;-><init>(Lcom/google/android/exoplayer2/upstream/b;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/drm/c$a;)V

    return-object v0
.end method

.method private declared-synchronized a(JIJILcom/google/android/exoplayer2/extractor/x$a;)V
    .locals 8

    monitor-enter p0

    .line 775
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 777
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result v0

    .line 778
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 782
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/z;->x:Z

    .line 783
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/z;->w:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/z;->w:J

    .line 785
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result v0

    .line 786
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    aput-wide p1, v3, v0

    .line 787
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    aput-wide p4, p1, v0

    .line 788
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    aput p6, p2, v0

    .line 789
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    aput p3, p2, v0

    .line 790
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/z;->r:[Lcom/google/android/exoplayer2/extractor/x$a;

    aput-object p7, p2, v0

    .line 791
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    aput-object p3, p2, v0

    .line 792
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/z;->m:[I

    iget p4, p0, Lcom/google/android/exoplayer2/source/z;->E:I

    aput p4, p2, v0

    .line 793
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/z;->D:Lcom/google/android/exoplayer2/Format;

    .line 795
    iget p2, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    .line 796
    iget p3, p0, Lcom/google/android/exoplayer2/source/z;->l:I

    if-ne p2, p3, :cond_3

    add-int/lit16 p2, p3, 0x3e8

    .line 799
    new-array p4, p2, [I

    .line 800
    new-array p5, p2, [J

    .line 801
    new-array p6, p2, [J

    .line 802
    new-array p7, p2, [I

    .line 803
    new-array v0, p2, [I

    .line 804
    new-array v1, p2, [Lcom/google/android/exoplayer2/extractor/x$a;

    .line 805
    new-array v3, p2, [Lcom/google/android/exoplayer2/Format;

    .line 806
    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    sub-int/2addr p3, v4

    .line 807
    invoke-static {p1, v4, p5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    invoke-static {p1, v4, p6, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    invoke-static {p1, v4, p7, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    invoke-static {p1, v4, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->r:[Lcom/google/android/exoplayer2/extractor/x$a;

    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    invoke-static {p1, v4, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    invoke-static {p1, v4, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->m:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    invoke-static {p1, v4, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    .line 815
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    invoke-static {v4, v2, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    invoke-static {v4, v2, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    invoke-static {v4, v2, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    invoke-static {v4, v2, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->r:[Lcom/google/android/exoplayer2/extractor/x$a;

    invoke-static {v4, v2, v1, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v4, v2, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->m:[I

    invoke-static {v4, v2, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    .line 823
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    .line 824
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    .line 825
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    .line 826
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/z;->r:[Lcom/google/android/exoplayer2/extractor/x$a;

    .line 827
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    .line 828
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/z;->m:[I

    .line 829
    iput v2, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    .line 830
    iput p2, p0, Lcom/google/android/exoplayer2/source/z;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/q;)V
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->k:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 879
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 880
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->k:Lcom/google/android/exoplayer2/Format;

    .line 881
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 884
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->h:Lcom/google/android/exoplayer2/drm/d;

    if-eqz v3, :cond_2

    .line 886
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/drm/d;->a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/Class;

    move-result-object v3

    .line 885
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format;->copyWithExoMediaCryptoType(Ljava/lang/Class;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    .line 887
    :goto_2
    iput-object v3, p2, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    .line 888
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v3, p2, Lcom/google/android/exoplayer2/q;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 889
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->h:Lcom/google/android/exoplayer2/drm/d;

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 893
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 899
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 900
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->h:Lcom/google/android/exoplayer2/drm/d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/z;->j:Landroid/os/Looper;

    .line 902
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->i:Lcom/google/android/exoplayer2/drm/c$a;

    .line 901
    invoke-interface {v1, v2, v3, p1}, Lcom/google/android/exoplayer2/drm/d;->a(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 903
    iput-object p1, p2, Lcom/google/android/exoplayer2/q;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_5

    .line 906
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->i:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->b(Lcom/google/android/exoplayer2/drm/c$a;)V

    :cond_5
    return-void
.end method

.method private declared-synchronized a(J)Z
    .locals 7

    monitor-enter p0

    .line 842
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 843
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/z;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    monitor-exit p0

    if-lez v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 845
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/z;->g()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 846
    monitor-exit p0

    return v1

    .line 7966
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    add-int/lit8 v3, v0, -0x1

    .line 7967
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result v3

    .line 7968
    :cond_3
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    if-le v0, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    aget-wide v5, v4, v3

    cmp-long v4, v5, p1

    if-ltz v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 7972
    iget v3, p0, Lcom/google/android/exoplayer2/source/z;->l:I

    sub-int/2addr v3, v2

    goto :goto_0

    .line 849
    :cond_4
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->e:I

    add-int/2addr p1, v0

    .line 8854
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/z;->a()I

    move-result p2

    sub-int/2addr p2, p1

    if-ltz p2, :cond_5

    .line 8855
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    sub-int/2addr p1, v0

    if-gt p2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 8856
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    .line 8857
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/z;->v:J

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/z;->d(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/z;->w:J

    if-nez p2, :cond_6

    .line 8858
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/z;->x:Z

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/z;->x:Z

    .line 8859
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    if-eqz p1, :cond_7

    sub-int/2addr p1, v2

    .line 8860
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/z;->e(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 850
    :cond_7
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(I)Z
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    .line 918
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->c()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 920
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private declared-synchronized b(Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 711
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/z;->z:Z

    .line 712
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 716
    monitor-exit p0

    return v0

    .line 718
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->D:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->D:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    .line 724
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    .line 726
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 727
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/z;->F:Z

    .line 728
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/z;->G:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 729
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(I)J
    .locals 4

    .line 985
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->v:J

    .line 986
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/z;->d(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->v:J

    .line 987
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    .line 988
    iget v1, p0, Lcom/google/android/exoplayer2/source/z;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/z;->e:I

    .line 989
    iget v1, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    .line 990
    iget v2, p0, Lcom/google/android/exoplayer2/source/z;->l:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 991
    iput v1, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    .line 993
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 995
    iput p1, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    :cond_1
    if-nez v0, :cond_3

    .line 998
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 999
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    aget-wide v0, p1, v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    aget p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 1001
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private d(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 1018
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    .line 1020
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1021
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 1026
    iget v2, p0, Lcom/google/android/exoplayer2/source/z;->l:I

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private e(I)I
    .locals 1

    .line 1038
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    add-int/2addr v0, p1

    .line 1039
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->l:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method private declared-synchronized g()J
    .locals 4

    monitor-enter p0

    .line 332
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->v:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/z;->d(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 663
    :try_start_0
    iput v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    .line 5114
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/source/y$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()J
    .locals 2

    monitor-enter p0

    .line 753
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 754
    monitor-exit p0

    return-wide v0

    .line 756
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->c(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Z
    .locals 2

    .line 867
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 233
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->e:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method final declared-synchronized a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/z$a;)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 674
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Z

    .line 675
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/z;->j()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    .line 676
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/z;->x:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/z;->k:Lcom/google/android/exoplayer2/Format;

    if-eq p2, p3, :cond_2

    .line 680
    :cond_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/z;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return v1

    .line 683
    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 6068
    :try_start_1
    iput p1, p2, Lcom/google/android/exoplayer2/decoder/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    monitor-exit p0

    return v3

    .line 687
    :cond_4
    :try_start_2
    iget p4, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result p4

    if-nez p3, :cond_8

    .line 688
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    aget-object p3, p3, p4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->k:Lcom/google/android/exoplayer2/Format;

    if-eq p3, v0, :cond_5

    goto :goto_1

    .line 693
    :cond_5
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/z;->b(I)Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    .line 694
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    monitor-exit p0

    return v2

    .line 698
    :cond_6
    :try_start_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->p:[I

    aget p1, p1, p4

    .line 7068
    iput p1, p2, Lcom/google/android/exoplayer2/decoder/a;->a:I

    .line 699
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 700
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_7

    const/high16 p1, -0x80000000

    .line 701
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a(I)V

    .line 703
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->o:[I

    aget p1, p1, p4

    iput p1, p5, Lcom/google/android/exoplayer2/source/z$a;->a:I

    .line 704
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->n:[J

    aget-wide p2, p1, p4

    iput-wide p2, p5, Lcom/google/android/exoplayer2/source/z$a;->b:J

    .line 705
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->r:[Lcom/google/android/exoplayer2/extractor/x$a;

    aget-object p1, p1, p4

    iput-object p1, p5, Lcom/google/android/exoplayer2/source/z$a;->c:Lcom/google/android/exoplayer2/extractor/x$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 707
    monitor-exit p0

    return v3

    .line 689
    :cond_8
    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    aget-object p2, p2, p4

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/z;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/q;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 690
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/e;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    .line 3169
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/y;->a(I)I

    move-result p2

    .line 3170
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/y;->e:J

    .line 3173
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/y$a;->a(J)I

    move-result v2

    .line 3171
    invoke-interface {p1, v1, v2, p2}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 3179
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 3181
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/y;->b(I)V

    return p1
.end method

.method final declared-synchronized a(JZZ)J
    .locals 10

    monitor-enter p0

    .line 734
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    iget v5, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 737
    iget p4, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    if-eq p4, v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    :cond_1
    move v6, v0

    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    .line 738
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/z;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 740
    monitor-exit p0

    return-wide v1

    .line 742
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/z;->c(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 735
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 502
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 503
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V
    .locals 11

    move-object v8, p0

    .line 589
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/z;->A:Z

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/z;->B:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/z;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_0
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 594
    :goto_0
    iget-boolean v4, v8, Lcom/google/android/exoplayer2/source/z;->y:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    return-void

    .line 598
    :cond_2
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/z;->y:Z

    .line 601
    :cond_3
    iget-wide v4, v8, Lcom/google/android/exoplayer2/source/z;->H:J

    add-long/2addr v4, p1

    .line 602
    iget-boolean v6, v8, Lcom/google/android/exoplayer2/source/z;->F:Z

    if-eqz v6, :cond_6

    .line 603
    iget-wide v6, v8, Lcom/google/android/exoplayer2/source/z;->g:J

    cmp-long v9, v4, v6

    if-gez v9, :cond_4

    return-void

    :cond_4
    if-nez v0, :cond_6

    .line 611
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/z;->G:Z

    if-nez v0, :cond_5

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SampleQueue"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iput-boolean v2, v8, Lcom/google/android/exoplayer2/source/z;->G:Z

    :cond_5
    or-int/lit8 v0, p3, 0x1

    move v6, v0

    goto :goto_1

    :cond_6
    move v6, p3

    .line 618
    :goto_1
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/z;->I:Z

    if-eqz v0, :cond_9

    if-eqz v3, :cond_8

    .line 619
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/z;->a(J)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 622
    :cond_7
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/z;->I:Z

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    .line 625
    :cond_9
    :goto_3
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    .line 4165
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/y;->e:J

    move v7, p4

    int-to-long v2, v7

    sub-long/2addr v0, v2

    move/from16 v2, p5

    int-to-long v2, v2

    sub-long v9, v0, v2

    move-object v0, p0

    move-wide v1, v4

    move v3, v6

    move-wide v4, v9

    move v6, p4

    move-object/from16 v7, p6

    .line 626
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/z;->a(JIJILcom/google/android/exoplayer2/extractor/x$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)V
    .locals 5

    .line 1649
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->H:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1652
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/z;->H:J

    add-long/2addr v1, v3

    .line 2414
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 1654
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    .line 561
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/z;->A:Z

    .line 562
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->B:Lcom/google/android/exoplayer2/Format;

    .line 563
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/source/z$b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 565
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z$b;->j()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;I)V
    .locals 6

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    :goto_0
    if-lez p2, :cond_0

    .line 3187
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/y;->a(I)I

    move-result v1

    .line 3188
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/y;->e:J

    .line 3190
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/source/y$a;->a(J)I

    move-result v3

    .line 3188
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    sub-int/2addr p2, v1

    .line 3193
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/y;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/y;->a()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    .line 191
    iput v0, p0, Lcom/google/android/exoplayer2/source/z;->e:I

    .line 192
    iput v0, p0, Lcom/google/android/exoplayer2/source/z;->u:I

    .line 193
    iput v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/z;->y:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 195
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    .line 196
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/z;->v:J

    .line 197
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/z;->w:J

    .line 198
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/z;->x:Z

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->D:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_0

    .line 201
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->B:Lcom/google/android/exoplayer2/Format;

    .line 202
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    .line 203
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/z;->z:Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(JZ)Z
    .locals 8

    monitor-enter p0

    .line 453
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/z;->h()V

    .line 454
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result v2

    .line 455
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/z;->j()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->w:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 461
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/z;->a(IIJZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 463
    monitor-exit p0

    return v7

    .line 465
    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    .line 466
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/source/z;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 467
    monitor-exit p0

    return p1

    .line 458
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(JZ)I
    .locals 8

    monitor-enter p0

    .line 480
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result v2

    .line 481
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/z;->j()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->q:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->w:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    if-eqz p3, :cond_1

    .line 485
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/z;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    .line 487
    :cond_1
    :try_start_1
    iget p3, p0, Lcom/google/android/exoplayer2/source/z;->t:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 488
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/z;->a(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 490
    monitor-exit p0

    return v7

    .line 492
    :cond_2
    monitor-exit p0

    return p1

    .line 482
    :cond_3
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/e;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/x$-CC;->$default$b(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized b()Lcom/google/android/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    .line 308
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/z;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/util/u;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/x$-CC;->$default$b(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/util/u;I)V

    return-void
.end method

.method public final declared-synchronized b(Z)Z
    .locals 3

    monitor-enter p0

    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/z;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 368
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/z;->x:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->C:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->k:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 372
    :cond_2
    :try_start_1
    iget p1, p0, Lcom/google/android/exoplayer2/source/z;->f:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/z;->e(I)I

    move-result p1

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->s:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/z;->k:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_3

    .line 375
    monitor-exit p0

    return v1

    .line 377
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/z;->b(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()J
    .locals 2

    monitor-enter p0

    .line 322
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 345
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/z;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/z;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/y;->a(J)V

    return-void
.end method

.method final f()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 761
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->i:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->b(Lcom/google/android/exoplayer2/drm/c$a;)V

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 765
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->k:Lcom/google/android/exoplayer2/Format;

    :cond_0
    return-void
.end method
