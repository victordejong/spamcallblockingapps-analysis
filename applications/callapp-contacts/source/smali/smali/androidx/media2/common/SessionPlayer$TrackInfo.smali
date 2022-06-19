.class public Landroidx/media2/common/SessionPlayer$TrackInfo;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/SessionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/media/MediaFormat;

.field public d:Z

.field e:Landroid/os/Bundle;

.field private final f:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1087
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 1079
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILandroid/media/MediaFormat;)V
    .locals 1

    const/4 v0, 0x0

    .line 1101
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>(IILandroid/media/MediaFormat;Z)V

    return-void
.end method

.method public constructor <init>(IILandroid/media/MediaFormat;Z)V
    .locals 1

    .line 1113
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 1079
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Ljava/lang/Object;

    .line 1114
    iput p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 1115
    iput p2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    .line 1116
    iput-object p3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    .line 1117
    iput-boolean p4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V
    .locals 1

    .line 1270
    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V
    .locals 1

    .line 1277
    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V
    .locals 1

    .line 1284
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V
    .locals 1

    .line 1291
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaFormat;
    .locals 1

    .line 1148
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public final a(Z)V
    .locals 3

    .line 1228
    iget-object p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 1229
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v1, "androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL"

    .line 1231
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1232
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    const-string v1, "language"

    .line 1233
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v1, v0, v2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->b(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    const-string v0, "mime"

    .line 1234
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->b(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    const-string v0, "is-forced-subtitle"

    .line 1235
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    const-string v0, "is-autoselect"

    .line 1237
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    const-string v0, "is-default"

    .line 1238
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    .line 1241
    :cond_1
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v1, "androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE"

    iget-boolean v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1242
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 3

    .line 1251
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    .line 1253
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v2, "language"

    invoke-static {v2, v0, v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->d(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    .line 1254
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v2, "mime"

    invoke-static {v2, v0, v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->d(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    .line 1255
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v2, "is-forced-subtitle"

    invoke-static {v2, v0, v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->c(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    .line 1257
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v2, "is-autoselect"

    invoke-static {v2, v0, v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->c(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    .line 1258
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const-string v2, "is-default"

    invoke-static {v2, v0, v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->c(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/os/Bundle;)V

    .line 1261
    :cond_0
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1264
    :cond_1
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Z

    return-void

    .line 1262
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1214
    :cond_0
    instance-of v1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1217
    :cond_1
    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 1218
    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    iget p1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1206
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    .line 1179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 1180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "METADATA"

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "SUBTITLE"

    .line 1189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "AUDIO"

    .line 1186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "VIDEO"

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelectable="

    .line 1199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
