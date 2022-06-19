.class public abstract Lcn/jzvd/Jzvd;
.super Landroid/widget/FrameLayout;
.source "Jzvd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jzvd/Jzvd$b;
    }
.end annotation


# static fields
.field public static d:Lcn/jzvd/Jzvd;

.field public static e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Z

.field public static g:I

.field public static h:I

.field public static i:Z

.field public static j:Z

.field public static k:I

.field public static l:J

.field public static m:I

.field public static n:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/widget/SeekBar;

.field public C:Landroid/widget/ImageView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/view/ViewGroup;

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/view/ViewGroup;

.field public I:Lcn/jzvd/JZTextureView;

.field protected J:Ljava/util/Timer;

.field protected K:I

.field protected L:I

.field protected M:Landroid/media/AudioManager;

.field protected N:Lcn/jzvd/Jzvd$b;

.field protected O:Z

.field protected P:F

.field protected Q:F

.field protected R:Z

.field protected S:Z

.field protected T:Z

.field protected U:J

.field protected V:I

.field protected W:F

.field protected a0:J

.field public b0:Z

.field public o:I

.field public p:I

.field public q:Lcn/jzvd/t;

.field public r:I

.field public s:I

.field public t:Ljava/lang/Class;

.field public u:Lcn/jzvd/u;

.field public v:I

.field public w:I

.field protected x:J

.field public y:I

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/jzvd/Jzvd;->e:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/jzvd/Jzvd;->f:Z

    const/4 v1, 0x6

    .line 3
    sput v1, Lcn/jzvd/Jzvd;->g:I

    .line 4
    sput v0, Lcn/jzvd/Jzvd;->h:I

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcn/jzvd/Jzvd;->i:Z

    .line 6
    sput-boolean v0, Lcn/jzvd/Jzvd;->j:Z

    const/4 v1, 0x2

    .line 7
    sput v1, Lcn/jzvd/Jzvd;->k:I

    const-wide/16 v1, 0x0

    .line 8
    sput-wide v1, Lcn/jzvd/Jzvd;->l:J

    .line 9
    sput v0, Lcn/jzvd/Jzvd;->m:I

    .line 10
    new-instance v0, Lcn/jzvd/Jzvd$a;

    invoke-direct {v0}, Lcn/jzvd/Jzvd$a;-><init>()V

    sput-object v0, Lcn/jzvd/Jzvd;->n:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 3
    iput v0, p0, Lcn/jzvd/Jzvd;->p:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcn/jzvd/Jzvd;->r:I

    .line 5
    iput v1, p0, Lcn/jzvd/Jzvd;->s:I

    .line 6
    iput v0, p0, Lcn/jzvd/Jzvd;->v:I

    .line 7
    iput v1, p0, Lcn/jzvd/Jzvd;->w:I

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcn/jzvd/Jzvd;->x:J

    .line 9
    iput v0, p0, Lcn/jzvd/Jzvd;->y:I

    .line 10
    iput-wide v2, p0, Lcn/jzvd/Jzvd;->z:J

    .line 11
    iput-boolean v1, p0, Lcn/jzvd/Jzvd;->b0:Z

    .line 12
    invoke-virtual {p0, p1}, Lcn/jzvd/Jzvd;->x(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 14
    iput p2, p0, Lcn/jzvd/Jzvd;->o:I

    .line 15
    iput p2, p0, Lcn/jzvd/Jzvd;->p:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/jzvd/Jzvd;->r:I

    .line 17
    iput v0, p0, Lcn/jzvd/Jzvd;->s:I

    .line 18
    iput p2, p0, Lcn/jzvd/Jzvd;->v:I

    .line 19
    iput v0, p0, Lcn/jzvd/Jzvd;->w:I

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcn/jzvd/Jzvd;->x:J

    .line 21
    iput p2, p0, Lcn/jzvd/Jzvd;->y:I

    .line 22
    iput-wide v1, p0, Lcn/jzvd/Jzvd;->z:J

    .line 23
    iput-boolean v0, p0, Lcn/jzvd/Jzvd;->b0:Z

    .line 24
    invoke-virtual {p0, p1}, Lcn/jzvd/Jzvd;->x(Landroid/content/Context;)V

    return-void
.end method

.method public static L()V
    .locals 2

    const-string v0, "JZVD"

    const-string v1, "releaseAllVideos"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->M()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 3

    const-string v0, "JZVD"

    const-string v1, "backPress"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcn/jzvd/Jzvd;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->w()V

    return v1

    .line 4
    :cond_0
    sget-object v0, Lcn/jzvd/Jzvd;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz v0, :cond_1

    iget v2, v0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->j()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setCurrentJzvd(Lcn/jzvd/Jzvd;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->M()V

    .line 2
    :cond_0
    sput-object p0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    return-void
.end method

.method public static setTextureViewRotation(I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    if-eqz v0, :cond_0

    int-to-float p0, p0

    .line 2
    invoke-virtual {v0, p0}, Lcn/jzvd/JZTextureView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public static setVideoImageDisplayType(I)V
    .locals 0

    .line 1
    sput p0, Lcn/jzvd/Jzvd;->k:I

    .line 2
    sget-object p0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public static t()V
    .locals 3

    .line 1
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz v0, :cond_2

    .line 2
    iget v1, v0, Lcn/jzvd/Jzvd;->o:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sput v1, Lcn/jzvd/Jzvd;->m:I

    .line 4
    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->H()V

    .line 5
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    iget-object v0, v0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0}, Lcn/jzvd/u;->pause()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcn/jzvd/Jzvd;->L()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static u()V
    .locals 3

    .line 1
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lcn/jzvd/Jzvd;->o:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 3
    sget v1, Lcn/jzvd/Jzvd;->m:I

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->H()V

    .line 5
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    iget-object v0, v0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0}, Lcn/jzvd/u;->pause()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->I()V

    .line 7
    sget-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    iget-object v0, v0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0}, Lcn/jzvd/u;->start()V

    :goto_0
    const/4 v0, 0x0

    .line 8
    sput v0, Lcn/jzvd/Jzvd;->m:I

    :cond_1
    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo what - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JZVD"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 2
    iget p1, p0, Lcn/jzvd/Jzvd;->o:I

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->I()V

    :cond_1
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 3
    iget-boolean v0, p0, Lcn/jzvd/Jzvd;->b0:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0}, Lcn/jzvd/u;->start()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/jzvd/Jzvd;->b0:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v0}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    .line 7
    invoke-virtual {v0}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->I()V

    :cond_2
    return-void
.end method

.method public C(IJJ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/jzvd/Jzvd;->O:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcn/jzvd/Jzvd;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-le v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput v1, p0, Lcn/jzvd/Jzvd;->y:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcn/jzvd/Jzvd;->D:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcn/jzvd/v;->l(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_3
    iget-object p1, p0, Lcn/jzvd/Jzvd;->E:Landroid/widget/TextView;

    invoke-static {p4, p5}, Lcn/jzvd/v;->l(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateAutoComplete  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    .line 4
    iget-object v0, p0, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    iget-object v0, p0, Lcn/jzvd/Jzvd;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/Jzvd;->E:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateError  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateNormal  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    .line 4
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jzvd/u;->release()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePause  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->T()V

    return-void
.end method

.method public I()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePlaying  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    iget-wide v0, p0, Lcn/jzvd/Jzvd;->z:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v4, v0, v1}, Lcn/jzvd/u;->seekTo(J)V

    .line 5
    iput-wide v2, p0, Lcn/jzvd/Jzvd;->z:J

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jzvd/v;->b(Landroid/content/Context;Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 7
    iget-object v2, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v2, v0, v1}, Lcn/jzvd/u;->seekTo(J)V

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 9
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->T()V

    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePreparing  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->O()V

    return-void
.end method

.method public K(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lcn/jzvd/Jzvd;->w:I

    if-eqz v1, :cond_0

    int-to-float v1, v1

    .line 4
    invoke-virtual {v0, v1}, Lcn/jzvd/JZTextureView;->setRotation(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    invoke-virtual {v0, p1, p2}, Lcn/jzvd/JZTextureView;->setVideoSize(II)V

    :cond_1
    return-void
.end method

.method public M()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v3}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcn/jzvd/v;->g(Landroid/content/Context;Ljava/lang/Object;J)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    .line 6
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->p()V

    .line 7
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->q()V

    .line 8
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->r()V

    .line 9
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->G()V

    .line 10
    iget-object v0, p0, Lcn/jzvd/Jzvd;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcn/jzvd/u;->SAVED_SURFACE:Landroid/graphics/SurfaceTexture;

    .line 12
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 13
    sget-object v1, Lcn/jzvd/Jzvd;->n:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 14
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/jzvd/u;->release()V

    :cond_2
    return-void
.end method

.method public O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 3
    iget-object v0, p0, Lcn/jzvd/Jzvd;->D:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/jzvd/v;->l(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/jzvd/Jzvd;->E:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcn/jzvd/v;->l(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public P(I)V
    .locals 0

    return-void
.end method

.method public Q(FLjava/lang/String;JLjava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public R(FI)V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public T()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startProgressTimer:  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    .line 3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/jzvd/Jzvd;->J:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcn/jzvd/Jzvd$b;

    invoke-direct {v2, p0}, Lcn/jzvd/Jzvd$b;-><init>(Lcn/jzvd/Jzvd;)V

    iput-object v2, p0, Lcn/jzvd/Jzvd;->N:Lcn/jzvd/Jzvd$b;

    .line 5
    iget-object v1, p0, Lcn/jzvd/Jzvd;->J:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public U()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcn/jzvd/Jzvd;->setCurrentJzvd(Lcn/jzvd/Jzvd;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->t:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcn/jzvd/Jzvd;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jzvd/u;

    iput-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->a()V

    .line 10
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/jzvd/Jzvd;->M:Landroid/media/AudioManager;

    .line 11
    sget-object v1, Lcn/jzvd/Jzvd;->n:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 12
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->J()V

    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTextureView ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/jzvd/Jzvd;->F:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    new-instance v0, Lcn/jzvd/JZTextureView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jzvd/JZTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    .line 4
    iget-object v1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 6
    iget-object v1, p0, Lcn/jzvd/Jzvd;->F:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd;->J:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->N:Lcn/jzvd/Jzvd$b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lcn/jzvd/u;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(IJ)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcn/jzvd/Jzvd;->o:I

    .line 2
    iput-wide p2, p0, Lcn/jzvd/Jzvd;->z:J

    .line 3
    iget-object p2, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iput p1, p2, Lcn/jzvd/t;->a:I

    .line 4
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/jzvd/u;->setSurface(Landroid/view/Surface;)V

    .line 5
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {p1}, Lcn/jzvd/u;->release()V

    .line 6
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {p1}, Lcn/jzvd/u;->prepare()V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getCurrentPositionWhenPlaying()J
    .locals 4

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0}, Lcn/jzvd/u;->getCurrentPosition()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v1

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-wide v1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0}, Lcn/jzvd/u;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getLayoutId()I
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->j(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/Jzvd;->h:I

    invoke-static {v0, v1}, Lcn/jzvd/v;->i(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->k(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->h(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jzvd/u;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcn/jzvd/Jzvd;->d:Lcn/jzvd/Jzvd;

    return-void
.end method

.method public o(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jzvd/Jzvd;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {p1}, Lcn/jzvd/t;->a()Lcn/jzvd/t;

    move-result-object p1

    iget-object v1, p0, Lcn/jzvd/Jzvd;->t:Ljava/lang/Class;

    invoke-virtual {v0, p1, v4, v1}, Lcn/jzvd/Jzvd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/jzvd/y;->start:I

    const/4 v1, 0x6

    const-string v2, "] "

    const-string v3, "JZVD"

    if-ne p1, v0, :cond_6

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick start ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcn/jzvd/Jzvd;->o:I

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    .line 7
    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jzvd/v;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcn/jzvd/Jzvd;->j:Z

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->S()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->U()V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pauseVideo ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {p1}, Lcn/jzvd/u;->pause()V

    .line 13
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->H()V

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 14
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {p1}, Lcn/jzvd/u;->start()V

    .line 15
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->I()V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_9

    .line 16
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->U()V

    goto :goto_1

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/jzvd/a0;->no_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 18
    :cond_6
    sget v0, Lcn/jzvd/y;->fullscreen:I

    if-ne p1, v0, :cond_9

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick fullscreen ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget p1, p0, Lcn/jzvd/Jzvd;->o:I

    if-ne p1, v1, :cond_7

    return-void

    .line 21
    :cond_7
    iget p1, p0, Lcn/jzvd/Jzvd;->p:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 22
    invoke-static {}, Lcn/jzvd/Jzvd;->b()Z

    goto :goto_1

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toFullscreenActivity ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->v()V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcn/jzvd/Jzvd;->r:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/jzvd/Jzvd;->s:I

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p2, p1

    .line 4
    iget v0, p0, Lcn/jzvd/Jzvd;->s:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    iget v0, p0, Lcn/jzvd/Jzvd;->r:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 7
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void

    .line 10
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getDuration()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcn/jzvd/Jzvd;->D:Landroid/widget/TextView;

    int-to-long p2, p2

    mul-long p2, p2, v0

    const-wide/16 v0, 0x64

    div-long/2addr p2, v0

    invoke-static {p2, p3}, Lcn/jzvd/v;->l(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bottomProgress onStartTrackingTouch ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JZVD"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottomProgress onStopTrackingTouch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JZVD"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->T()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getDuration()J

    move-result-wide v5

    mul-long v3, v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    .line 8
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcn/jzvd/Jzvd;->y:I

    .line 9
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {p1, v3, v4}, Lcn/jzvd/u;->seekTo(J)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "seekTo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v9, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 4
    sget v3, Lcn/jzvd/y;->surface_container:I

    const/4 v10, 0x0

    if-ne v2, v3, :cond_f

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "] "

    const-string v4, "JZVD"

    const/4 v5, 0x1

    if-eqz v2, :cond_e

    if-eq v2, v5, :cond_b

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch surfaceContainer actionMove ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v2, v9, Lcn/jzvd/Jzvd;->P:F

    sub-float v2, v0, v2

    .line 8
    iget v0, v9, Lcn/jzvd/Jzvd;->Q:F

    sub-float v11, v1, v0

    .line 9
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 10
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 11
    iget v3, v9, Lcn/jzvd/Jzvd;->p:I

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/high16 v14, 0x437f0000    # 255.0f

    if-ne v3, v5, :cond_5

    .line 12
    iget-boolean v3, v9, Lcn/jzvd/Jzvd;->S:Z

    if-nez v3, :cond_5

    iget-boolean v3, v9, Lcn/jzvd/Jzvd;->R:Z

    if-nez v3, :cond_5

    iget-boolean v3, v9, Lcn/jzvd/Jzvd;->T:Z

    if-nez v3, :cond_5

    const/high16 v3, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    if-ltz v0, :cond_2

    .line 14
    iget v0, v9, Lcn/jzvd/Jzvd;->o:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    .line 15
    iput-boolean v5, v9, Lcn/jzvd/Jzvd;->S:Z

    .line 16
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    iput-wide v0, v9, Lcn/jzvd/Jzvd;->U:J

    goto :goto_0

    .line 17
    :cond_2
    iget v0, v9, Lcn/jzvd/Jzvd;->P:F

    iget v1, v9, Lcn/jzvd/Jzvd;->K:I

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 18
    iput-boolean v5, v9, Lcn/jzvd/Jzvd;->T:Z

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 20
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float v1, v0, v12

    if-gez v1, :cond_3

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcn/jzvd/Jzvd;->W:F

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current system brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcn/jzvd/Jzvd;->W:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    mul-float v0, v0, v14

    .line 24
    iput v0, v9, Lcn/jzvd/Jzvd;->W:F

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current activity brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcn/jzvd/Jzvd;->W:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    :cond_4
    iput-boolean v5, v9, Lcn/jzvd/Jzvd;->R:Z

    .line 27
    iget-object v0, v9, Lcn/jzvd/Jzvd;->M:Landroid/media/AudioManager;

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, v9, Lcn/jzvd/Jzvd;->V:I

    .line 28
    :cond_5
    :goto_0
    iget-boolean v0, v9, Lcn/jzvd/Jzvd;->S:Z

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getDuration()J

    move-result-wide v7

    .line 30
    iget-wide v0, v9, Lcn/jzvd/Jzvd;->U:J

    long-to-float v0, v0

    long-to-float v1, v7

    mul-float v1, v1, v2

    iget v3, v9, Lcn/jzvd/Jzvd;->K:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcn/jzvd/Jzvd;->a0:J

    cmp-long v3, v0, v7

    if-lez v3, :cond_6

    .line 31
    iput-wide v7, v9, Lcn/jzvd/Jzvd;->a0:J

    .line 32
    :cond_6
    iget-wide v0, v9, Lcn/jzvd/Jzvd;->a0:J

    invoke-static {v0, v1}, Lcn/jzvd/v;->l(J)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v7, v8}, Lcn/jzvd/v;->l(J)Ljava/lang/String;

    move-result-object v6

    .line 34
    iget-wide v4, v9, Lcn/jzvd/Jzvd;->a0:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/jzvd/Jzvd;->Q(FLjava/lang/String;JLjava/lang/String;J)V

    .line 35
    :cond_7
    iget-boolean v0, v9, Lcn/jzvd/Jzvd;->R:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x40400000    # 3.0f

    if-eqz v0, :cond_8

    neg-float v11, v11

    .line 36
    iget-object v0, v9, Lcn/jzvd/Jzvd;->M:Landroid/media/AudioManager;

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v3, v0

    mul-float v3, v3, v11

    mul-float v3, v3, v2

    .line 37
    iget v4, v9, Lcn/jzvd/Jzvd;->L:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 38
    iget-object v4, v9, Lcn/jzvd/Jzvd;->M:Landroid/media/AudioManager;

    iget v5, v9, Lcn/jzvd/Jzvd;->V:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v13, v5, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 39
    iget v3, v9, Lcn/jzvd/Jzvd;->V:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v3, v11, v2

    mul-float v3, v3, v1

    iget v4, v9, Lcn/jzvd/Jzvd;->L:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    neg-float v3, v11

    .line 40
    invoke-virtual {p0, v3, v0}, Lcn/jzvd/Jzvd;->R(FI)V

    .line 41
    :cond_8
    iget-boolean v0, v9, Lcn/jzvd/Jzvd;->T:Z

    if-eqz v0, :cond_f

    neg-float v0, v11

    mul-float v3, v0, v14

    mul-float v3, v3, v2

    .line 42
    iget v4, v9, Lcn/jzvd/Jzvd;->L:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/jzvd/v;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 44
    iget v5, v9, Lcn/jzvd/Jzvd;->W:F

    int-to-float v3, v3

    add-float v6, v5, v3

    div-float/2addr v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_9

    .line 45
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_9
    add-float v6, v5, v3

    div-float/2addr v6, v14

    cmpg-float v6, v6, v12

    if-gtz v6, :cond_a

    const v3, 0x3c23d70a    # 0.01f

    .line 46
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_a
    add-float/2addr v5, v3

    div-float/2addr v5, v14

    .line 47
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jzvd/v;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    iget v3, v9, Lcn/jzvd/Jzvd;->W:F

    mul-float v3, v3, v1

    div-float/2addr v3, v14

    mul-float v0, v0, v2

    mul-float v0, v0, v1

    iget v1, v9, Lcn/jzvd/Jzvd;->L:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 50
    invoke-virtual {p0, v0}, Lcn/jzvd/Jzvd;->P(I)V

    goto :goto_2

    .line 51
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch surfaceContainer actionUp ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-boolean v10, v9, Lcn/jzvd/Jzvd;->O:Z

    .line 53
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->q()V

    .line 54
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->r()V

    .line 55
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->p()V

    .line 56
    iget-boolean v0, v9, Lcn/jzvd/Jzvd;->S:Z

    if-eqz v0, :cond_d

    .line 57
    iget-object v0, v9, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    iget-wide v1, v9, Lcn/jzvd/Jzvd;->a0:J

    invoke-virtual {v0, v1, v2}, Lcn/jzvd/u;->seekTo(J)V

    .line 58
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getDuration()J

    move-result-wide v0

    .line 59
    iget-wide v2, v9, Lcn/jzvd/Jzvd;->a0:J

    const-wide/16 v4, 0x64

    mul-long v2, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_c

    const-wide/16 v0, 0x1

    :cond_c
    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 60
    iget-object v1, v9, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 61
    :cond_d
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->T()V

    goto :goto_2

    .line 62
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch surfaceContainer actionDown ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-boolean v5, v9, Lcn/jzvd/Jzvd;->O:Z

    .line 64
    iput v0, v9, Lcn/jzvd/Jzvd;->P:F

    .line 65
    iput v1, v9, Lcn/jzvd/Jzvd;->Q:F

    .line 66
    iput-boolean v10, v9, Lcn/jzvd/Jzvd;->R:Z

    .line 67
    iput-boolean v10, v9, Lcn/jzvd/Jzvd;->S:Z

    .line 68
    iput-boolean v10, v9, Lcn/jzvd/Jzvd;->T:Z

    :cond_f
    :goto_2
    return v10
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcn/jzvd/u;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public setMediaInterface(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->M()V

    .line 2
    iput-object p1, p0, Lcn/jzvd/Jzvd;->t:Ljava/lang/Class;

    return-void
.end method

.method public setScreen(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->setScreenTiny()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->setScreenFullscreen()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->setScreenNormal()V

    :goto_0
    return-void
.end method

.method public setScreenFullscreen()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcn/jzvd/Jzvd;->p:I

    return-void
.end method

.method public setScreenNormal()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/jzvd/Jzvd;->p:I

    return-void
.end method

.method public setScreenTiny()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcn/jzvd/Jzvd;->p:I

    return-void
.end method

.method public setState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcn/jzvd/Jzvd;->setState(III)V

    return-void
.end method

.method public setState(III)V
    .locals 2

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->F()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->E()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->H()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->I()V

    goto :goto_0

    :cond_4
    int-to-long v0, p3

    .line 6
    invoke-virtual {p0, p2, v0, v1}, Lcn/jzvd/Jzvd;->e(IJ)V

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->J()V

    goto :goto_0

    .line 8
    :cond_6
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->G()V

    :goto_0
    return-void
.end method

.method public setUp(Lcn/jzvd/t;I)V
    .locals 1

    .line 3
    const-class v0, Lcn/jzvd/JZMediaSystem;

    invoke-virtual {p0, p1, p2, v0}, Lcn/jzvd/Jzvd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V

    return-void
.end method

.method public setUp(Lcn/jzvd/t;ILjava/lang/Class;)V
    .locals 5

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jzvd/Jzvd;->x:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    .line 7
    iput p2, p0, Lcn/jzvd/Jzvd;->p:I

    .line 8
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->G()V

    .line 9
    iput-object p3, p0, Lcn/jzvd/Jzvd;->t:Ljava/lang/Class;

    return-void
.end method

.method public setUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/jzvd/t;

    invoke-direct {v0, p1, p2}, Lcn/jzvd/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcn/jzvd/Jzvd;->setUp(Lcn/jzvd/t;I)V

    return-void
.end method

.method public setUp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2
    new-instance v0, Lcn/jzvd/t;

    invoke-direct {v0, p1, p2}, Lcn/jzvd/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcn/jzvd/Jzvd;->setUp(Lcn/jzvd/t;I)V

    return-void
.end method

.method public setUp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 1

    .line 4
    new-instance v0, Lcn/jzvd/t;

    invoke-direct {v0, p1, p2}, Lcn/jzvd/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcn/jzvd/Jzvd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V

    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, v0}, Lcn/jzvd/Jzvd;->o(Landroid/view/ViewGroup;)V

    .line 4
    sget-object v1, Lcn/jzvd/Jzvd;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->h(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->setScreenFullscreen()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->d(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/Jzvd;->g:I

    invoke-static {v0, v1}, Lcn/jzvd/v;->i(Landroid/content/Context;I)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->e(Landroid/content/Context;)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jzvd/Jzvd;->x:J

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->h(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    sget-object v0, Lcn/jzvd/Jzvd;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    sget-object v0, Lcn/jzvd/Jzvd;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    sget-object v0, Lcn/jzvd/Jzvd;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->setScreenNormal()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->j(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/Jzvd;->h:I

    invoke-static {v0, v1}, Lcn/jzvd/v;->i(Landroid/content/Context;I)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/v;->k(Landroid/content/Context;)V

    return-void
.end method

.method public x(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    sget p1, Lcn/jzvd/y;->start:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    .line 3
    sget p1, Lcn/jzvd/y;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->C:Landroid/widget/ImageView;

    .line 4
    sget p1, Lcn/jzvd/y;->bottom_seek_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    .line 5
    sget p1, Lcn/jzvd/y;->current:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->D:Landroid/widget/TextView;

    .line 6
    sget p1, Lcn/jzvd/y;->total:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->E:Landroid/widget/TextView;

    .line 7
    sget p1, Lcn/jzvd/y;->layout_bottom:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    .line 8
    sget p1, Lcn/jzvd/y;->surface_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->F:Landroid/view/ViewGroup;

    .line 9
    sget p1, Lcn/jzvd/y;->layout_top:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/jzvd/Jzvd;->G:Landroid/view/ViewGroup;

    .line 10
    iget-object p1, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcn/jzvd/Jzvd;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcn/jzvd/Jzvd;->B:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 13
    iget-object p1, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcn/jzvd/Jzvd;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcn/jzvd/Jzvd;->K:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcn/jzvd/Jzvd;->L:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcn/jzvd/Jzvd;->o:I

    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoCompletion  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->c()V

    .line 4
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->p()V

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->q()V

    .line 6
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->r()V

    .line 7
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->E()V

    .line 8
    iget-object v0, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {v0}, Lcn/jzvd/u;->release()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/jzvd/v;->g(Landroid/content/Context;Ljava/lang/Object;J)V

    return-void
.end method

.method public z(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZVD"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    const/16 v1, -0x26

    if-eq p2, v1, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p2, v0, :cond_0

    const/16 p1, -0x13

    if-eq p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->F()V

    .line 3
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    invoke-virtual {p1}, Lcn/jzvd/u;->release()V

    :cond_0
    return-void
.end method
