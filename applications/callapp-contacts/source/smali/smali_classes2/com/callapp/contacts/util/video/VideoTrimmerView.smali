.class public Lcom/callapp/contacts/util/video/VideoTrimmerView;
.super Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;
    }
.end annotation


# instance fields
.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Lcom/lb/video_trimmer_library/view/TimeLineView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/VideoView;

.field private n:Landroid/view/View;

.field private o:Lcom/lb/video_trimmer_library/view/RangeSeekBarView;

.field private p:Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/video/VideoTrimmerView;)Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->p:Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 12

    .line 41
    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    const-wide/16 v2, 0x3c

    .line 42
    rem-long v4, v0, v2

    .line 43
    div-long v6, v0, v2

    rem-long/2addr v6, v2

    const-wide/16 v2, 0xe10

    .line 44
    div-long/2addr v0, v2

    .line 45
    new-instance p0, Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/util/Formatter;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    cmp-long v11, v0, v9

    if-lez v11, :cond_0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v8

    const-string v0, "%d:%02d:%02d"

    invoke-virtual {p0, v0, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v8, [Ljava/lang/Object;

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%02d:%02d"

    invoke-virtual {p0, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02d8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0917

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lb/video_trimmer_library/view/TimeLineView;

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->k:Lcom/lb/video_trimmer_library/view/TimeLineView;

    const v1, 0x7f0a091b

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->j:Landroid/view/View;

    const v1, 0x7f0a06c0

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->l:Landroid/widget/ImageView;

    const v1, 0x7f0a0aa2

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->m:Landroid/widget/VideoView;

    const v1, 0x7f0a0aa3

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->n:Landroid/view/View;

    const v1, 0x7f0a071a

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->o:Lcom/lb/video_trimmer_library/view/RangeSeekBarView;

    const v1, 0x7f0a0a9c

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->i:Landroid/widget/TextView;

    const v1, 0x7f0a097b

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->g:Landroid/widget/TextView;

    const v1, 0x7f0a06c1

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->h:Landroid/widget/TextView;

    const v1, 0x7f0a033c

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1202c0

    .line 67
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a033d

    .line 68
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/video/VideoTrimmerView$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/video/VideoTrimmerView$1;-><init>(Lcom/callapp/contacts/util/video/VideoTrimmerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    const v0, 0x7f12063a

    .line 146
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(II)V
    .locals 3

    const v0, 0x7f12063a

    .line 139
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p2, p1

    invoke-static {p2}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPlayView()Landroid/view/View;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRangeSeekBarView()Lcom/lb/video_trimmer_library/view/RangeSeekBarView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->o:Lcom/lb/video_trimmer_library/view/RangeSeekBarView;

    return-object v0
.end method

.method public getTimeInfoContainer()Landroid/view/View;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->j:Landroid/view/View;

    return-object v0
.end method

.method public getTimeLineView()Lcom/lb/video_trimmer_library/view/TimeLineView;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->k:Lcom/lb/video_trimmer_library/view/TimeLineView;

    return-object v0
.end method

.method public getVideoView()Landroid/widget/VideoView;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->m:Landroid/widget/VideoView;

    return-object v0
.end method

.method public getVideoViewContainer()Landroid/view/View;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->n:Landroid/view/View;

    return-object v0
.end method

.method public setTrimmerEvents(Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoTrimmerView;->p:Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;

    return-void
.end method
