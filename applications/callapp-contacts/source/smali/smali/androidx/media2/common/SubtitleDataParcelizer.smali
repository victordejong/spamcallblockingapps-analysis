.class public final Landroidx/media2/common/SubtitleDataParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/common/SubtitleData;
    .locals 4

    .line 14
    new-instance v0, Landroidx/media2/common/SubtitleData;

    invoke-direct {v0}, Landroidx/media2/common/SubtitleData;-><init>()V

    .line 15
    iget-wide v1, v0, Landroidx/media2/common/SubtitleData;->a:J

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->b(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/SubtitleData;->a:J

    .line 16
    iget-wide v1, v0, Landroidx/media2/common/SubtitleData;->b:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->b(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/SubtitleData;->b:J

    .line 17
    iget-object v1, v0, Landroidx/media2/common/SubtitleData;->c:[B

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b([BI)[B

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/common/SubtitleData;->c:[B

    return-object v0
.end method

.method public static write(Landroidx/media2/common/SubtitleData;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 3

    .line 24
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->a(JI)V

    .line 25
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->a(JI)V

    .line 26
    iget-object p0, p0, Landroidx/media2/common/SubtitleData;->c:[B

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a([BI)V

    return-void
.end method
