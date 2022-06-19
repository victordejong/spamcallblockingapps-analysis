.class Lcom/callapp/contacts/util/video/VideoTrimmerView$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/video/VideoTrimmerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/video/VideoTrimmerView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/video/VideoTrimmerView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView$1;->a:Lcom/callapp/contacts/util/video/VideoTrimmerView;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView$1;->a:Lcom/callapp/contacts/util/video/VideoTrimmerView;

    .line 1168
    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->b()V

    .line 1169
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1170
    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v0, 0x9

    .line 1172
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1173
    iget p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->c:I

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_1

    .line 1174
    iget p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->e:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    iget p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->c:I

    rsub-int p1, p1, 0x3e8

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 1175
    iget p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->e:I

    iget v2, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->c:I

    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    iput p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->e:I

    goto :goto_0

    .line 1176
    :cond_0
    iget p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->d:I

    iget v2, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->c:I

    rsub-int v2, v2, 0x3e8

    if-le p1, v2, :cond_1

    .line 1177
    iget p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->d:I

    iget v2, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->c:I

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    iput p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->d:I

    .line 1181
    :cond_1
    :goto_0
    iget-object p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->b:Lcom/lb/video_trimmer_library/a/c;

    if-eqz p1, :cond_3

    .line 1182
    iget-object p1, v1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->b:Lcom/lb/video_trimmer_library/a/c;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    :cond_2
    invoke-interface {p1}, Lcom/lb/video_trimmer_library/a/c;->b()V

    .line 1183
    :cond_3
    sget-object p1, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    .line 1184
    new-instance v6, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;-><init>(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;Ljava/lang/String;JLjava/lang/String;)V

    check-cast v6, Lcom/lb/video_trimmer_library/b/a$a;

    .line 1183
    invoke-virtual {p1, v6}, Lcom/lb/video_trimmer_library/b/a;->a(Lcom/lb/video_trimmer_library/b/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    const-class v0, Lcom/callapp/contacts/util/video/VideoTrimmerView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to trim the video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView$1;->a:Lcom/callapp/contacts/util/video/VideoTrimmerView;

    invoke-static {v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->a(Lcom/callapp/contacts/util/video/VideoTrimmerView;)Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView$1;->a:Lcom/callapp/contacts/util/video/VideoTrimmerView;

    invoke-static {v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->a(Lcom/callapp/contacts/util/video/VideoTrimmerView;)Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;->onError(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
