.class final Landroidx/media2/widget/MediaControlView$b;
.super Landroidx/media2/widget/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    .line 2057
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroidx/media2/widget/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/widget/k;)V
    .locals 3

    .line 2169
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2171
    :cond_0
    sget-boolean p1, Landroidx/media2/widget/MediaControlView;->a:Z

    .line 2174
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->b(Z)V

    .line 2176
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->C:Landroid/widget/SeekBar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2177
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->D:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v1, v0, Landroidx/media2/widget/MediaControlView;->l:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/MediaControlView;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroidx/media2/widget/k;F)V
    .locals 6

    .line 2190
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    .line 2192
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 2196
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->S:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2198
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    .line 5780
    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    iget v3, v0, Landroidx/media2/widget/MediaControlView;->S:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5781
    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->Q:Ljava/util/List;

    iget v3, v0, Landroidx/media2/widget/MediaControlView;->S:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5782
    iput v1, v0, Landroidx/media2/widget/MediaControlView;->S:I

    .line 2201
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2202
    :goto_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 2203
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 2204
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->Q:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroidx/media2/widget/MediaControlView;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 2209
    :cond_4
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/l$g;->MediaControlView_custom_playback_speed_text:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    int-to-float v5, p2

    div-float/2addr v5, p1

    .line 2211
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v1

    .line 2209
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2213
    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 2214
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 2215
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2216
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->Q:Ljava/util/List;

    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2217
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, v1, p1}, Landroidx/media2/widget/MediaControlView;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 2222
    :cond_5
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    .line 2223
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_6

    .line 2224
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, p1}, Landroidx/media2/widget/MediaControlView;->a(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2229
    :cond_7
    :goto_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget p2, p1, Landroidx/media2/widget/MediaControlView;->i:I

    iput p2, p1, Landroidx/media2/widget/MediaControlView;->S:I

    return-void
.end method

.method public final a(Landroidx/media2/widget/k;I)V
    .locals 3

    .line 2060
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2062
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->a:Z

    if-eqz v0, :cond_1

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlayerStateChanged(state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/k;->l()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/common/MediaItem;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 2087
    :cond_2
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView;->b(I)V

    .line 2088
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p2, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2089
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2}, Landroidx/media2/widget/MediaControlView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2090
    new-instance p2, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    sget v0, Landroidx/media2/widget/l$g;->mcv2_playback_error_text:I

    .line 2408
    iget-object v1, p2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v2, p2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 2091
    sget v0, Landroidx/media2/widget/l$g;->mcv2_error_dialog_button:I

    new-instance v1, Landroidx/media2/widget/MediaControlView$b$1;

    invoke-direct {v1, p0}, Landroidx/media2/widget/MediaControlView$b$1;-><init>(Landroidx/media2/widget/MediaControlView$b;)V

    .line 2092
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    .line 2579
    iget-object v0, p2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$a;->r:Z

    .line 3008
    invoke-virtual {p2}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 3009
    invoke-virtual {p1}, Landroidx/appcompat/app/c;->show()V

    :cond_3
    :goto_0
    return-void

    .line 2074
    :cond_4
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2075
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 2076
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->d()V

    .line 2077
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->b(Z)V

    return-void

    .line 2080
    :cond_5
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView;->b(I)V

    .line 2081
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2082
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->af:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2083
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->ag:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2084
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->ae:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroidx/media2/widget/k;J)V
    .locals 5

    .line 2110
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2112
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->a:Z

    .line 2116
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, v0, Landroidx/media2/widget/MediaControlView;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p2

    .line 2117
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v2, v2, Landroidx/media2/widget/MediaControlView;->l:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 2118
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->C:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2119
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->D:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1, p2, p3}, Landroidx/media2/widget/MediaControlView;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide p2, p2, Landroidx/media2/widget/MediaControlView;->o:J

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 2122
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v2, p2, Landroidx/media2/widget/MediaControlView;->o:J

    iput-wide v2, p2, Landroidx/media2/widget/MediaControlView;->n:J

    .line 2125
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide p2, p2, Landroidx/media2/widget/MediaControlView;->o:J

    invoke-virtual {p1, p2, p3}, Landroidx/media2/widget/k;->a(J)V

    .line 2126
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iput-wide v0, p1, Landroidx/media2/widget/MediaControlView;->o:J

    return-void

    .line 2128
    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iput-wide v0, p1, Landroidx/media2/widget/MediaControlView;->n:J

    .line 2132
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->p:Z

    if-nez p1, :cond_3

    .line 2133
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2134
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->af:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2135
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 2136
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->af:Ljava/lang/Runnable;

    iget-object p3, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, p3, Landroidx/media2/widget/MediaControlView;->m:J

    invoke-virtual {p1, p2, v0, v1}, Landroidx/media2/widget/MediaControlView;->a(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public final a(Landroidx/media2/widget/k;Landroidx/media2/common/MediaItem;)V
    .locals 2

    .line 2144
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2146
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->a:Z

    if-eqz v0, :cond_1

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCurrentMediaItemChanged(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2149
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p2}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/common/MediaItem;)V

    .line 2150
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p2}, Landroidx/media2/widget/MediaControlView;->b(Landroidx/media2/common/MediaItem;)V

    .line 2151
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/k;->p()I

    move-result v0

    .line 2152
    invoke-virtual {p1}, Landroidx/media2/widget/k;->q()I

    move-result p1

    .line 2151
    invoke-virtual {p2, v0, p1}, Landroidx/media2/widget/MediaControlView;->b(II)V

    return-void
.end method

.method final a(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3

    .line 2248
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2250
    :cond_0
    sget-boolean p1, Landroidx/media2/widget/MediaControlView;->a:Z

    if-eqz p1, :cond_1

    .line 2251
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTrackSelected(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6126
    :cond_1
    iget p1, p2, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    .line 2254
    :goto_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->O:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 2255
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->O:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2256
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iput v2, p1, Landroidx/media2/widget/MediaControlView;->g:I

    .line 2258
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->f:I

    if-ne p1, v1, :cond_2

    .line 2259
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget p2, p2, Landroidx/media2/widget/MediaControlView;->g:I

    add-int/lit8 p2, p2, 0x1

    .line 7052
    iput p2, p1, Landroidx/media2/widget/MediaControlView$d;->b:I

    .line 2261
    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->G:Landroid/widget/ImageButton;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Landroidx/media2/widget/l$d;->media2_widget_ic_subtitle_on:I

    invoke-static {p2, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2263
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->G:Landroid/widget/ImageButton;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v0, Landroidx/media2/widget/l$g;->mcv2_cc_is_on:I

    .line 2264
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2263
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 7126
    :cond_5
    iget p1, p2, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    if-ne p1, v1, :cond_8

    const/4 p1, 0x0

    .line 2269
    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 2270
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->N:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2271
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iput p1, p2, Landroidx/media2/widget/MediaControlView;->h:I

    .line 2273
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->K:Ljava/util/List;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->h:I

    .line 8009
    iget-object v1, p2, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 8010
    iget-object v1, p2, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 8011
    iget-object p2, p2, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p2, ""

    .line 2273
    :goto_2
    invoke-interface {p1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method final a(Landroidx/media2/widget/k;Landroidx/media2/common/VideoSize;)V
    .locals 2

    .line 2308
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2310
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->a:Z

    if-eqz v0, :cond_1

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoSizeChanged(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2313
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->M:I

    if-nez v0, :cond_2

    .line 9074
    iget v0, p2, Landroidx/media2/common/VideoSize;->b:I

    if-lez v0, :cond_2

    .line 10066
    iget p2, p2, Landroidx/media2/common/VideoSize;->a:I

    if-lez p2, :cond_2

    .line 2314
    invoke-virtual {p1}, Landroidx/media2/widget/k;->o()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2316
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/widget/k;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method final a(Landroidx/media2/widget/k;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/k;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 2235
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2237
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->a:Z

    if-eqz v0, :cond_1

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrackInfoChanged(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2241
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/widget/k;Ljava/util/List;)V

    .line 2242
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/k;->l()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/common/MediaItem;)V

    .line 2243
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/k;->l()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView;->b(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method final a(Landroidx/media2/widget/k;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/k;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2160
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->a:Z

    if-eqz v0, :cond_1

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlaylistChanged(): list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", metadata: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2163
    :cond_1
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/k;->p()I

    move-result p3

    .line 2164
    invoke-virtual {p1}, Landroidx/media2/widget/k;->q()I

    move-result p1

    .line 2163
    invoke-virtual {p2, p3, p1}, Landroidx/media2/widget/MediaControlView;->b(II)V

    return-void
.end method

.method public final b(Landroidx/media2/widget/k;)V
    .locals 13

    .line 2183
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2185
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    .line 3644
    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->h()V

    .line 3646
    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    .line 4168
    iget-object v1, v0, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3647
    :goto_0
    iget-object v1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    .line 4173
    iget-object v4, v1, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v4, :cond_2

    iget-object v1, v1, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    const v4, 0x9c41

    invoke-virtual {v1, v4}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3648
    :goto_1
    iget-object v4, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    invoke-virtual {v4}, Landroidx/media2/widget/k;->g()Z

    move-result v4

    .line 3649
    iget-object v5, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    .line 4188
    iget-object v6, v5, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v6, :cond_3

    iget-object v5, v5, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    const/16 v6, 0x2718

    invoke-virtual {v5, v6}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 3650
    :goto_2
    iget-object v6, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    .line 5183
    iget-object v7, v6, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v7, :cond_4

    iget-object v6, v6, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    const/16 v7, 0x2719

    invoke-virtual {v6, v7}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 3651
    :goto_3
    iget-object v7, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    .line 5193
    iget-object v8, v7, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v8, :cond_5

    iget-object v7, v7, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    const/16 v8, 0x2713

    invoke-virtual {v7, v8}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 3653
    :goto_4
    iget-object v7, p1, Landroidx/media2/widget/MediaControlView;->y:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_10

    .line 3655
    iget-object v9, p1, Landroidx/media2/widget/MediaControlView;->y:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 3657
    sget v10, Landroidx/media2/widget/l$e;->pause:I

    invoke-virtual {p1, v9, v10}, Landroidx/media2/widget/MediaControlView;->a(II)Landroid/widget/ImageButton;

    move-result-object v10

    const/16 v11, 0x8

    if-eqz v10, :cond_7

    if-eqz v0, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    const/16 v12, 0x8

    .line 3659
    :goto_6
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3661
    :cond_7
    sget v10, Landroidx/media2/widget/l$e;->rew:I

    invoke-virtual {p1, v9, v10}, Landroidx/media2/widget/MediaControlView;->a(II)Landroid/widget/ImageButton;

    move-result-object v10

    if-eqz v10, :cond_9

    if-eqz v1, :cond_8

    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    const/16 v12, 0x8

    .line 3663
    :goto_7
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3665
    :cond_9
    sget v10, Landroidx/media2/widget/l$e;->ffwd:I

    invoke-virtual {p1, v9, v10}, Landroidx/media2/widget/MediaControlView;->a(II)Landroid/widget/ImageButton;

    move-result-object v10

    if-eqz v10, :cond_b

    if-eqz v4, :cond_a

    const/4 v12, 0x0

    goto :goto_8

    :cond_a
    const/16 v12, 0x8

    .line 3667
    :goto_8
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3669
    :cond_b
    sget v10, Landroidx/media2/widget/l$e;->prev:I

    invoke-virtual {p1, v9, v10}, Landroidx/media2/widget/MediaControlView;->a(II)Landroid/widget/ImageButton;

    move-result-object v10

    if-eqz v10, :cond_d

    if-eqz v5, :cond_c

    const/4 v12, 0x0

    goto :goto_9

    :cond_c
    const/16 v12, 0x8

    .line 3671
    :goto_9
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3673
    :cond_d
    sget v10, Landroidx/media2/widget/l$e;->next:I

    invoke-virtual {p1, v9, v10}, Landroidx/media2/widget/MediaControlView;->a(II)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_f

    if-eqz v6, :cond_e

    const/4 v11, 0x0

    .line 3675
    :cond_e
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3678
    :cond_10
    iput-boolean v2, p1, Landroidx/media2/widget/MediaControlView;->t:Z

    .line 3679
    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->C:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 3680
    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->e()V

    return-void
.end method

.method final b(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 2283
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eq p1, v0, :cond_0

    return-void

    .line 2285
    :cond_0
    sget-boolean p1, Landroidx/media2/widget/MediaControlView;->a:Z

    if-eqz p1, :cond_1

    .line 2286
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTrackDeselected(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8126
    :cond_1
    iget p1, p2, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 2289
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 2290
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2291
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    const/4 p2, -0x1

    iput p2, p1, Landroidx/media2/widget/MediaControlView;->g:I

    .line 2293
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->f:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 2294
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget p2, p2, Landroidx/media2/widget/MediaControlView;->g:I

    add-int/lit8 p2, p2, 0x1

    .line 9052
    iput p2, p1, Landroidx/media2/widget/MediaControlView$d;->b:I

    .line 2296
    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->G:Landroid/widget/ImageButton;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Landroidx/media2/widget/l$d;->media2_widget_ic_subtitle_off:I

    invoke-static {p2, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2298
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->G:Landroid/widget/ImageButton;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$b;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v0, Landroidx/media2/widget/l$g;->mcv2_cc_is_off:I

    .line 2299
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2298
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
