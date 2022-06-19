.class public final Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;,
        Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 261
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 232
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1194
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;

    invoke-direct {v3, p1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;-><init>(Landroid/os/Parcel;)V

    .line 236
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 229
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    return-void
.end method

.method static parseFromSection(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;
    .locals 4

    .line 242
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2040
    invoke-static {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;

    move-result-object v3

    .line 245
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 254
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 255
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 257
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;

    .line 3176
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->a:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3177
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->b:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3178
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->c:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3179
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->d:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3180
    iget-object v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3181
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 3183
    iget-object v5, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;

    .line 3217
    iget v6, v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;->a:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3218
    iget-wide v5, v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;->b:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3185
    :cond_0
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->e:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3186
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->g:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3187
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->h:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3188
    iget v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->i:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3189
    iget v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->j:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3190
    iget v2, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->k:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
