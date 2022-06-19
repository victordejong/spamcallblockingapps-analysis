.class public Lcom/callerid/block/start/SimulateCallActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# instance fields
.field private s:Landroid/os/Vibrator;

.field private t:Landroid/os/Handler;

.field private u:Ljava/lang/Runnable;

.field private v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity;->t:Landroid/os/Handler;

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SimulateCallActivity;->s:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/start/SimulateCallActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SimulateCallActivity;->u:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SimulateCallActivity;->t:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic T(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SimulateCallActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f09019e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    new-instance v0, Lcom/callerid/block/start/SimulateCallActivity$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/SimulateCallActivity$a;-><init>(Lcom/callerid/block/start/SimulateCallActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090463

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Lcom/callerid/block/start/SimulateCallActivity$b;

    invoke-direct {p1, p0}, Lcom/callerid/block/start/SimulateCallActivity$b;-><init>(Lcom/callerid/block/start/SimulateCallActivity;)V

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity;->t:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity;->s:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance p1, Lcom/callerid/block/start/SimulateCallActivity$c;

    invoke-direct {p1, p0}, Lcom/callerid/block/start/SimulateCallActivity$c;-><init>(Lcom/callerid/block/start/SimulateCallActivity;)V

    iput-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity;->u:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity;->t:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x320
        0x5dc
    .end array-data
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity;->s:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    sget-object v0, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/callerid/block/f/c;->Z(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity;->s:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    sget-object v0, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/callerid/block/f/c;->Z(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity;->u:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/callerid/block/start/SimulateCallActivity;->t:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method
