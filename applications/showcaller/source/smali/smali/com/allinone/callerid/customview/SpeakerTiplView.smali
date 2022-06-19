.class public Lcom/allinone/callerid/customview/SpeakerTiplView;
.super Landroid/widget/LinearLayout;
.source "SpeakerTiplView.java"


# static fields
.field private static d:Landroid/view/WindowManager;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->e:Landroid/content/Context;

    .line 3
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->f:Landroid/view/WindowManager$LayoutParams;

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->e:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0153

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "window"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    sput-object p1, Lcom/allinone/callerid/customview/SpeakerTiplView;->d:Landroid/view/WindowManager;

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/customview/SpeakerTiplView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/customview/SpeakerTiplView;->d:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7da

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x31

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 7
    iget-object v2, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->e:Landroid/content/Context;

    const/high16 v3, 0x42c40000    # 98.0f

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/customview/SpeakerTiplView;->f:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 11
    sget-object v1, Lcom/allinone/callerid/customview/SpeakerTiplView;->d:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
