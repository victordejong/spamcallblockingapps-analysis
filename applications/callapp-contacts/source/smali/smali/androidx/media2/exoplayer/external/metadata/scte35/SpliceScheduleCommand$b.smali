.class public final Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:J

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->a:J

    .line 99
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->b:Z

    .line 100
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->c:Z

    .line 101
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->d:Z

    .line 102
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->f:Ljava/util/List;

    .line 103
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->e:J

    .line 104
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->g:Z

    .line 105
    iput-wide p10, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->h:J

    .line 106
    iput p12, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->i:I

    .line 107
    iput p13, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->j:I

    .line 108
    iput p14, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->k:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->a:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->b:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->c:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->d:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_3

    .line 1213
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;-><init>(IJ)V

    .line 119
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 121
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->f:Ljava/util/List;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->e:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->g:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->h:J

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->i:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->j:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->k:I

    return-void
.end method

.method static a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;
    .locals 21

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v1

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 137
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_9

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v8

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x20

    and-int/2addr v8, v11

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v12

    goto :goto_4

    :cond_4
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    if-nez v10, :cond_6

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    .line 153
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v0, :cond_5

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v6

    .line 157
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;

    const/4 v11, 0x0

    invoke-direct {v4, v3, v6, v7, v11}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;-><init>(IJLandroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$1;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x20

    goto :goto_5

    :cond_5
    move-object v0, v14

    :cond_6
    if-eqz v8, :cond_8

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x80

    and-long/2addr v6, v3

    const-wide/16 v14, 0x0

    cmp-long v8, v6, v14

    if-eqz v8, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    const-wide/16 v6, 0x1

    and-long/2addr v3, v6

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v6

    or-long/2addr v3, v6

    const-wide/16 v6, 0x3e8

    mul-long v3, v3, v6

    const-wide/16 v6, 0x5a

    .line 164
    div-long v6, v3, v6

    move/from16 v4, v16

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 166
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v3

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v8

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v11

    move/from16 v17, v10

    move v14, v11

    move-wide v10, v6

    move-object v6, v0

    move-wide/from16 v18, v12

    move v12, v3

    move v13, v8

    move-wide/from16 v7, v18

    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    goto :goto_8

    :cond_9
    move-object v6, v0

    const/4 v4, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    .line 170
    :goto_8
    new-instance v15, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;

    move-object v0, v15

    move v3, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v14}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v15
.end method
