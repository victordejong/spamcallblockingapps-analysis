.class public Lcn/jzvd/JzvdStd;
.super Lcn/jzvd/Jzvd;
.source "JzvdStd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jzvd/JzvdStd$b;
    }
.end annotation


# static fields
.field public static c0:J = 0x0L

.field public static d0:I = 0x46

.field protected static e0:Ljava/util/Timer;


# instance fields
.field protected A0:Landroid/widget/ProgressBar;

.field protected B0:Landroid/widget/TextView;

.field protected C0:Landroid/widget/ImageView;

.field protected D0:Landroid/app/Dialog;

.field protected E0:Landroid/widget/ProgressBar;

.field protected F0:Landroid/widget/TextView;

.field private G0:Landroid/content/BroadcastReceiver;

.field public f0:Landroid/widget/ImageView;

.field public g0:Landroid/widget/ProgressBar;

.field public h0:Landroid/widget/ProgressBar;

.field public i0:Landroid/widget/TextView;

.field public j0:Landroid/widget/ImageView;

.field public k0:Landroid/widget/ImageView;

.field public l0:Landroid/widget/LinearLayout;

.field public m0:Landroid/widget/ImageView;

.field public n0:Landroid/widget/TextView;

.field public o0:Landroid/widget/TextView;

.field public p0:Landroid/widget/TextView;

.field public q0:Landroid/widget/PopupWindow;

.field public r0:Landroid/widget/TextView;

.field public s0:Landroid/widget/LinearLayout;

.field protected t0:Lcn/jzvd/JzvdStd$b;

.field protected u0:Landroid/app/Dialog;

.field protected v0:Landroid/widget/ProgressBar;

.field protected w0:Landroid/widget/TextView;

.field protected x0:Landroid/widget/TextView;

.field protected y0:Landroid/widget/ImageView;

.field protected z0:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/jzvd/Jzvd;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcn/jzvd/JzvdStd$a;

    invoke-direct {p1, p0}, Lcn/jzvd/JzvdStd$a;-><init>(Lcn/jzvd/JzvdStd;)V

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->G0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/jzvd/Jzvd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcn/jzvd/JzvdStd$a;

    invoke-direct {p1, p0}, Lcn/jzvd/JzvdStd$a;-><init>(Lcn/jzvd/JzvdStd;)V

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->G0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic V(Lcn/jzvd/JzvdStd;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/jzvd/JzvdStd;->G0:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private synthetic i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->G:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->q0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic k0(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcn/jzvd/JzvdStd;->e(IJ)V

    .line 3
    iget-object p2, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v0}, Lcn/jzvd/t;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget v0, v0, Lcn/jzvd/t;->a:I

    if-ne p2, v0, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#fff85959"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->q0:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method private synthetic m0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->U()V

    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lcn/jzvd/Jzvd;->j:Z

    return-void
.end method

.method private synthetic o0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->j()V

    return-void
.end method


# virtual methods
.method public C(IJJ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcn/jzvd/Jzvd;->C(IJJ)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcn/jzvd/JzvdStd;->g0:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->E()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->Y()V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->W()V

    return-void
.end method

.method public F()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->F()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->Z()V

    return-void
.end method

.method public G()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->G()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->a0()V

    return-void
.end method

.method public H()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->H()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->c0()V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->W()V

    return-void
.end method

.method public I()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->I()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->d0()V

    return-void
.end method

.method public J()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->J()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->f0()V

    return-void
.end method

.method public M()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->M()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->W()V

    .line 3
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->q0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->O()V

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->g0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->g0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public P(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/Jzvd;->P(I)V

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->D0:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/jzvd/z;->jz_dialog_brightness:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Lcn/jzvd/y;->tv_brightness:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/jzvd/JzvdStd;->F0:Landroid/widget/TextView;

    .line 5
    sget v1, Lcn/jzvd/y;->brightness_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/jzvd/JzvdStd;->E0:Landroid/widget/ProgressBar;

    .line 6
    invoke-virtual {p0, v0}, Lcn/jzvd/JzvdStd;->g0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/jzvd/JzvdStd;->D0:Landroid/app/Dialog;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->D0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->D0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    const/16 p1, 0x64

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->F0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->E0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->q0()V

    return-void
.end method

.method public Q(FLjava/lang/String;JLjava/lang/String;J)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p7}, Lcn/jzvd/Jzvd;->Q(FLjava/lang/String;JLjava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->u0:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/jzvd/z;->jz_dialog_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Lcn/jzvd/y;->duration_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/jzvd/JzvdStd;->v0:Landroid/widget/ProgressBar;

    .line 5
    sget v1, Lcn/jzvd/y;->tv_current:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/jzvd/JzvdStd;->w0:Landroid/widget/TextView;

    .line 6
    sget v1, Lcn/jzvd/y;->tv_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/jzvd/JzvdStd;->x0:Landroid/widget/TextView;

    .line 7
    sget v1, Lcn/jzvd/y;->duration_image_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/jzvd/JzvdStd;->y0:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0, v0}, Lcn/jzvd/JzvdStd;->g0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/jzvd/JzvdStd;->u0:Landroid/app/Dialog;

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->u0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->u0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->w0:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcn/jzvd/JzvdStd;->x0:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcn/jzvd/JzvdStd;->v0:Landroid/widget/ProgressBar;

    const-wide/16 v0, 0x0

    cmp-long p5, p6, v0

    if-gtz p5, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    div-long/2addr p3, p6

    long-to-int p3, p3

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->y0:Landroid/widget/ImageView;

    sget p2, Lcn/jzvd/x;->jz_forward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->y0:Landroid/widget/ImageView;

    sget p2, Lcn/jzvd/x;->jz_backward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->q0()V

    return-void
.end method

.method public R(FI)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jzvd/Jzvd;->R(FI)V

    .line 2
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->z0:Landroid/app/Dialog;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/jzvd/z;->jz_dialog_volume:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v0, Lcn/jzvd/y;->volume_image_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/jzvd/JzvdStd;->C0:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcn/jzvd/y;->tv_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/jzvd/JzvdStd;->B0:Landroid/widget/TextView;

    .line 6
    sget v0, Lcn/jzvd/y;->volume_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/jzvd/JzvdStd;->A0:Landroid/widget/ProgressBar;

    .line 7
    invoke-virtual {p0, p1}, Lcn/jzvd/JzvdStd;->g0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->z0:Landroid/app/Dialog;

    .line 8
    :cond_0
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->z0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->z0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    if-gtz p2, :cond_2

    .line 10
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->C0:Landroid/widget/ImageView;

    sget v0, Lcn/jzvd/x;->jz_close_volume:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->C0:Landroid/widget/ImageView;

    sget v0, Lcn/jzvd/x;->jz_add_volume:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    const/16 p1, 0x64

    if-le p2, p1, :cond_3

    const/16 p2, 0x64

    goto :goto_1

    :cond_3
    if-gez p2, :cond_4

    const/4 p2, 0x0

    .line 12
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->B0:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->q0()V

    return-void
.end method

.method public S()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->S()V

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/jzvd/a0;->tips_not_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/jzvd/a0;->tips_not_wifi_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/jzvd/q;

    invoke-direct {v2, p0}, Lcn/jzvd/q;-><init>(Lcn/jzvd/JzvdStd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/jzvd/a0;->tips_not_wifi_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/jzvd/p;

    invoke-direct {v2, p0}, Lcn/jzvd/p;-><init>(Lcn/jzvd/JzvdStd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    sget-object v1, Lcn/jzvd/s;->d:Lcn/jzvd/s;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public W()V
    .locals 1

    .line 1
    sget-object v0, Lcn/jzvd/JzvdStd;->e0:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->t0:Lcn/jzvd/JzvdStd$b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    return-void
.end method

.method public X(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->h0:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public Y()V
    .locals 8

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    :goto_0
    return-void
.end method

.method public Z()V
    .locals 8

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    :goto_0
    return-void
.end method

.method public a0()V
    .locals 8

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    :goto_0
    return-void
.end method

.method public b0()V
    .locals 8

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    :goto_0
    return-void
.end method

.method public c0()V
    .locals 8

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    :goto_0
    return-void
.end method

.method public d0()V
    .locals 8

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    :goto_0
    return-void
.end method

.method public e(IJ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/Jzvd;->e(IJ)V

    .line 2
    iget-object p1, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->o0:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->s0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public e0()V
    .locals 8

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    :goto_0
    return-void
.end method

.method public f0()V
    .locals 10

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->p:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object v2, p0

    .line 2
    invoke-virtual/range {v2 .. v9}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->t0()V

    :goto_0
    return-void
.end method

.method public g0(Landroid/view/View;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/jzvd/b0;->jz_style_dialog_progress:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x20

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x10

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, -0x2

    .line 7
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcn/jzvd/z;->jz_layout_std:I

    return v0
.end method

.method public h0()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcn/jzvd/r;

    invoke-direct {v0, p0}, Lcn/jzvd/r;-><init>(Lcn/jzvd/JzvdStd;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic j0()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/JzvdStd;->i0()V

    return-void
.end method

.method public synthetic l0(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JzvdStd;->k0(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public synthetic n0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JzvdStd;->m0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/Jzvd;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3
    sget v0, Lcn/jzvd/y;->thumb:I

    const-string v1, "/"

    const-string v2, "file"

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    .line 4
    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

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

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    .line 7
    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->S()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->U()V

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    .line 11
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->r0()V

    goto/16 :goto_3

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/jzvd/a0;->no_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 13
    :cond_4
    sget v0, Lcn/jzvd/y;->surface_container:I

    if-ne p1, v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->s0()V

    goto/16 :goto_3

    .line 15
    :cond_5
    sget v0, Lcn/jzvd/y;->back:I

    if-ne p1, v0, :cond_6

    .line 16
    invoke-static {}, Lcn/jzvd/Jzvd;->b()Z

    goto/16 :goto_3

    .line 17
    :cond_6
    sget v0, Lcn/jzvd/y;->back_tiny:I

    if-ne p1, v0, :cond_7

    .line 18
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->j()V

    goto/16 :goto_3

    .line 19
    :cond_7
    sget v0, Lcn/jzvd/y;->clarity:I

    if-ne p1, v0, :cond_a

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 22
    sget v0, Lcn/jzvd/z;->jz_layout_clarity:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 23
    new-instance v0, Lcn/jzvd/o;

    invoke-direct {v0, p0, p1}, Lcn/jzvd/o;-><init>(Lcn/jzvd/JzvdStd;Landroid/widget/LinearLayout;)V

    const/4 v2, 0x0

    .line 24
    :goto_1
    iget-object v4, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget-object v4, v4, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 25
    iget-object v4, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v4, v2}, Lcn/jzvd/t;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcn/jzvd/z;->jz_layout_clarity_item:I

    invoke-static {v5, v6, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 30
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v4, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget v4, v4, Lcn/jzvd/t;->a:I

    if-ne v2, v4, :cond_8

    const-string v4, "#fff85959"

    .line 32
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    :cond_9
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcn/jzvd/JzvdStd;->q0:Landroid/widget/PopupWindow;

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->q0:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 36
    invoke-virtual {p1, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 37
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 38
    iget-object v1, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 39
    iget-object v2, p0, Lcn/jzvd/JzvdStd;->q0:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    neg-int v4, v0

    neg-int v5, v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_3

    .line 40
    :cond_a
    sget v0, Lcn/jzvd/y;->retry_btn:I

    if-ne p1, v0, :cond_e

    .line 41
    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget-object p1, p1, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_2

    .line 42
    :cond_b
    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    .line 43
    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jzvd/v;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-boolean p1, Lcn/jzvd/Jzvd;->j:Z

    if-nez p1, :cond_c

    .line 45
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->S()V

    return-void

    .line 46
    :cond_c
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->a()V

    .line 47
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->J()V

    goto :goto_3

    .line 48
    :cond_d
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/jzvd/a0;->no_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_e
    :goto_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/Jzvd;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->W()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/Jzvd;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->s0()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcn/jzvd/y;->surface_container:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->s0()V

    .line 5
    iget-boolean v0, p0, Lcn/jzvd/Jzvd;->S:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcn/jzvd/Jzvd;->getDuration()J

    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcn/jzvd/Jzvd;->a0:J

    const-wide/16 v4, 0x64

    mul-long v2, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    const-wide/16 v0, 0x1

    :cond_1
    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 8
    iget-object v1, p0, Lcn/jzvd/JzvdStd;->g0:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcn/jzvd/Jzvd;->S:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/jzvd/Jzvd;->R:Z

    if-nez v0, :cond_6

    .line 10
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->r0()V

    goto :goto_0

    .line 11
    :cond_3
    sget v1, Lcn/jzvd/y;->bottom_seek_progress:I

    if-ne v0, v1, :cond_6

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->s0()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->W()V

    .line 15
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/jzvd/Jzvd;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->p()V

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->D0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic p0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JzvdStd;->o0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->q()V

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->u0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public q0()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->f0()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->d0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->b0()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->Y()V

    :cond_3
    :goto_0
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->r()V

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->z0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public r0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->setSystemTimeAndBattery()V

    .line 3
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v1}, Lcn/jzvd/t;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->f0()V

    .line 6
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->setSystemTimeAndBattery()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->d0()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->e0()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 11
    iget-object v0, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->b0()V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->c0()V

    :cond_6
    :goto_0
    return-void
.end method

.method public s0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->W()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcn/jzvd/JzvdStd;->e0:Ljava/util/Timer;

    .line 3
    new-instance v0, Lcn/jzvd/JzvdStd$b;

    invoke-direct {v0, p0}, Lcn/jzvd/JzvdStd$b;-><init>(Lcn/jzvd/JzvdStd;)V

    iput-object v0, p0, Lcn/jzvd/JzvdStd;->t0:Lcn/jzvd/JzvdStd$b;

    .line 4
    sget-object v1, Lcn/jzvd/JzvdStd;->e0:Ljava/util/Timer;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public setAllControlsVisiblity(IIIIIII)V
    .locals 0

    .line 1
    iget-object p6, p0, Lcn/jzvd/Jzvd;->G:Landroid/view/ViewGroup;

    invoke-virtual {p6, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/jzvd/Jzvd;->H:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->h0:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->g0:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->s0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setBatteryLevel()V
    .locals 3

    .line 1
    sget v0, Lcn/jzvd/JzvdStd;->d0:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->m0:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_battery_level_10:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->m0:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_battery_level_30:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x3c

    if-lt v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->m0:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_battery_level_50:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x50

    if-lt v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    .line 5
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->m0:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_battery_level_70:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x5f

    if-lt v0, v2, :cond_4

    if-ge v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->m0:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_battery_level_90:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    if-lt v0, v1, :cond_5

    const/16 v1, 0x64

    if-gt v0, v1, :cond_5

    .line 7
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->m0:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_battery_level_100:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/Jzvd;->setBufferProgress(I)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->g0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public setScreenFullscreen()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->setScreenFullscreen()V

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->C:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_shrink:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->f0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->k0:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget-object v0, v0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v2}, Lcn/jzvd/t;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/jzvd/w;->jz_start_button_w_h_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcn/jzvd/JzvdStd;->X(I)V

    .line 11
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->setSystemTimeAndBattery()V

    return-void
.end method

.method public setScreenNormal()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->setScreenNormal()V

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->C:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_enlarge:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->f0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->k0:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/jzvd/w;->jz_start_button_w_h_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcn/jzvd/JzvdStd;->X(I)V

    .line 6
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setScreenTiny()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->setScreenTiny()V

    .line 2
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->k0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object v2, p0

    .line 3
    invoke-virtual/range {v2 .. v9}, Lcn/jzvd/JzvdStd;->setAllControlsVisiblity(IIIIIII)V

    .line 4
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->l0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSystemTimeAndBattery()V
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 3
    iget-object v2, p0, Lcn/jzvd/JzvdStd;->n0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/jzvd/JzvdStd;->c0:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/jzvd/JzvdStd;->c0:J

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/JzvdStd;->G0:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->setBatteryLevel()V

    :goto_0
    return-void
.end method

.method public setUp(Lcn/jzvd/t;ILjava/lang/Class;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/Jzvd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V

    .line 2
    iget-object p3, p0, Lcn/jzvd/JzvdStd;->i0:Landroid/widget/TextView;

    iget-object p1, p1, Lcn/jzvd/t;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p2}, Lcn/jzvd/Jzvd;->setScreen(I)V

    return-void
.end method

.method public t0()V
    .locals 5

    .line 1
    iget v0, p0, Lcn/jzvd/Jzvd;->o:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->o0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    .line 5
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->o0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_click_replay_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->o0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/jzvd/Jzvd;->A:Landroid/widget/ImageView;

    sget v1, Lcn/jzvd/x;->jz_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v0, p0, Lcn/jzvd/JzvdStd;->o0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public x(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/Jzvd;->x(Landroid/content/Context;)V

    .line 2
    sget p1, Lcn/jzvd/y;->battery_time_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->l0:Landroid/widget/LinearLayout;

    .line 3
    sget p1, Lcn/jzvd/y;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->g0:Landroid/widget/ProgressBar;

    .line 4
    sget p1, Lcn/jzvd/y;->title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->i0:Landroid/widget/TextView;

    .line 5
    sget p1, Lcn/jzvd/y;->back:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->f0:Landroid/widget/ImageView;

    .line 6
    sget p1, Lcn/jzvd/y;->thumb:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->j0:Landroid/widget/ImageView;

    .line 7
    sget p1, Lcn/jzvd/y;->loading:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->h0:Landroid/widget/ProgressBar;

    .line 8
    sget p1, Lcn/jzvd/y;->back_tiny:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->k0:Landroid/widget/ImageView;

    .line 9
    sget p1, Lcn/jzvd/y;->battery_level:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->m0:Landroid/widget/ImageView;

    .line 10
    sget p1, Lcn/jzvd/y;->video_current_time:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->n0:Landroid/widget/TextView;

    .line 11
    sget p1, Lcn/jzvd/y;->replay_text:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->o0:Landroid/widget/TextView;

    .line 12
    sget p1, Lcn/jzvd/y;->clarity:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    .line 13
    sget p1, Lcn/jzvd/y;->retry_btn:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->r0:Landroid/widget/TextView;

    .line 14
    sget p1, Lcn/jzvd/y;->retry_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/jzvd/JzvdStd;->s0:Landroid/widget/LinearLayout;

    .line 15
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->f0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->k0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->p0:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcn/jzvd/JzvdStd;->r0:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->y()V

    .line 2
    invoke-virtual {p0}, Lcn/jzvd/JzvdStd;->W()V

    return-void
.end method
