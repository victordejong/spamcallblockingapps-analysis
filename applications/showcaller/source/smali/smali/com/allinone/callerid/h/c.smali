.class public Lcom/allinone/callerid/h/c;
.super Lcom/allinone/callerid/h/b;
.source "OverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/h/c$s;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/allinone/callerid/h/c;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/FrameLayout;

.field private G:Landroid/widget/ImageView;

.field private H:[I

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroidx/viewpager/widget/ViewPager;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Ljava/lang/String;

.field public N:Z

.field private O:Landroid/widget/RelativeLayout;

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/TextView;

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Landroid/os/Handler;

.field private V:Ljava/lang/Runnable;

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:I

.field private a0:Landroid/widget/LinearLayout;

.field private b0:Landroid/widget/ImageView;

.field private c0:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private d0:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private e0:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private f0:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private g0:Z

.field private h:Landroid/widget/ImageView;

.field private h0:Landroid/view/ViewStub;

.field private i:Ljava/lang/String;

.field private i0:Ljava/lang/String;

.field private j:F

.field private j0:Landroid/widget/ImageView;

.field private k:F

.field private k0:I

.field private l:F

.field public l0:Landroid/view/ViewGroup;

.field private m:F

.field private m0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

.field private n:Landroid/view/WindowManager;

.field private n0:I

.field private o:Landroid/view/WindowManager$LayoutParams;

.field private o0:I

.field private p:I

.field private p0:Z

.field private q:I

.field private q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

.field private r:Z

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/graphics/Typeface;

.field private y:Landroid/graphics/Typeface;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/h/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/allinone/callerid/h/c;->t:I

    .line 5
    iput-object v0, p0, Lcom/allinone/callerid/h/c;->u:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/allinone/callerid/h/c;->H:[I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/allinone/callerid/h/c;->N:Z

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/allinone/callerid/h/c;->R:I

    .line 9
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/h/c;->U:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/allinone/callerid/h/c$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/h/c$j;-><init>(Lcom/allinone/callerid/h/c;)V

    iput-object v1, p0, Lcom/allinone/callerid/h/c;->V:Ljava/lang/Runnable;

    .line 11
    iput-boolean v0, p0, Lcom/allinone/callerid/h/c;->p0:Z

    return-void

    :array_0
    .array-data 4
        0x7f0c0139
        0x7f0c013a
    .end array-data
.end method

.method static synthetic A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static A0()Lcom/allinone/callerid/h/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/h/c;->c:Lcom/allinone/callerid/h/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/allinone/callerid/h/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/allinone/callerid/h/c;->c:Lcom/allinone/callerid/h/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/allinone/callerid/h/c;

    invoke-direct {v1}, Lcom/allinone/callerid/h/c;-><init>()V

    sput-object v1, Lcom/allinone/callerid/h/c;->c:Lcom/allinone/callerid/h/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/allinone/callerid/h/c;->c:Lcom/allinone/callerid/h/c;

    return-object v0
.end method

.method static synthetic B(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method private B0()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x800033

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/a1;->B0()I

    move-result v1

    .line 10
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u503c==--->y=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-static {v3, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x80228

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method

.method static synthetic C(Lcom/allinone/callerid/h/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/allinone/callerid/h/c;Ljava/lang/String;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/h/c;->L0(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private D0(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/allinone/callerid/h/c;->C0()V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->B0()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/h/c;->o:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "window"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/allinone/callerid/h/c;->n:Landroid/view/WindowManager;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/allinone/callerid/h/b;->a(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p3, "floatview_no_per"

    invoke-virtual {p1, p3}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/allinone/callerid/h/b;->a(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 10
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "callstatus"

    const-string p3, "overlay"

    .line 11
    invoke-static {p1, p3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/allinone/callerid/h/c;->E0(Landroid/view/View;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic E(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->P:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private E0(Landroid/view/View;Ljava/lang/String;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    const v1, 0x7f040139

    const v2, 0x7f080216

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/h/c;->n0:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    const v1, 0x7f040138

    const v2, 0x7f080217

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/h/c;->o0:I

    const v0, 0x7f09023a

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    iput-object v0, p0, Lcom/allinone/callerid/h/c;->m0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setIsonTouch(Z)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->m0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-virtual {v0, p3}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setCall_status(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->m0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-virtual {v0, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setTel_phone(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->m0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    const/16 v2, 0x2711

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setStatus(I)V

    .line 8
    invoke-direct {p0, p2, p4}, Lcom/allinone/callerid/h/c;->F0(Ljava/lang/String;I)V

    const v0, 0x7f090236

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/h/c;->L:Landroid/widget/LinearLayout;

    const v0, 0x7f0907f7

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v2, 0x7f0907f4

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/allinone/callerid/h/c;->h0:Landroid/view/ViewStub;

    const v2, 0x7f090691

    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0903c1

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    const v2, 0x7f0904e3

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/allinone/callerid/h/c;->F:Landroid/widget/FrameLayout;

    const v2, 0x7f0903b3

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/h/c;->P:Landroid/widget/LinearLayout;

    const v2, 0x7f090746

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090707

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->Q:Landroid/widget/TextView;

    const v3, 0x7f0904f4

    .line 18
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->O:Landroid/widget/RelativeLayout;

    const v3, 0x7f0902e7

    .line 19
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->G:Landroid/widget/ImageView;

    const v3, 0x7f0902cc

    .line 20
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->j0:Landroid/widget/ImageView;

    const v3, 0x7f0906f2

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    const v3, 0x7f0906fc

    .line 22
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->v:Landroid/widget/TextView;

    const v3, 0x7f0904e1

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->w:Landroid/widget/FrameLayout;

    const v3, 0x7f090238

    .line 24
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090452

    .line 25
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->h:Landroid/widget/ImageView;

    const v4, 0x7f0906b9

    .line 26
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    const v4, 0x7f0907a6

    .line 27
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    const v4, 0x7f0906f1

    .line 28
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->g:Landroid/widget/TextView;

    const v4, 0x7f09077a

    .line 29
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->D:Landroid/widget/TextView;

    const v4, 0x7f09066f

    .line 30
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->E:Landroid/widget/TextView;

    const v4, 0x7f0903c8

    .line 31
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    const v4, 0x7f09033d

    .line 32
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    const v4, 0x7f0907b9

    .line 33
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    const v4, 0x7f0903c9

    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->d0:Landroid/widget/LinearLayout;

    const v4, 0x7f09033e

    .line 35
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->e0:Landroid/widget/ImageView;

    const v4, 0x7f0907ba

    .line 36
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/h/c;->f0:Landroid/widget/TextView;

    .line 37
    new-instance v4, Lcom/allinone/callerid/h/c$k;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/h/c$k;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v3, Lcom/allinone/callerid/mvc/view/recorder/a;

    invoke-direct {v3}, Lcom/allinone/callerid/mvc/view/recorder/a;-><init>()V

    .line 39
    new-instance v4, Lcom/allinone/callerid/h/c$l;

    invoke-direct {v4, p0, p3, p2}, Lcom/allinone/callerid/h/c$l;-><init>(Lcom/allinone/callerid/h/c;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/mvc/view/recorder/a;->d(Lcom/allinone/callerid/mvc/view/recorder/a$b;)V

    .line 40
    iget-object v4, p0, Lcom/allinone/callerid/h/c;->m0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    new-instance v5, Lcom/allinone/callerid/h/c$m;

    invoke-direct {v5, p0, v3, p2, p3}, Lcom/allinone/callerid/h/c$m;-><init>(Lcom/allinone/callerid/h/c;Lcom/allinone/callerid/mvc/view/recorder/a;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->Q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->D:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->E:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0907ea

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, Lcom/allinone/callerid/h/c;->J:Landroidx/viewpager/widget/ViewPager;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/allinone/callerid/h/c;->I:Ljava/util/List;

    .line 53
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/allinone/callerid/h/c;->y0(Landroid/content/Context;)V

    .line 54
    new-instance v2, Lcom/allinone/callerid/b/q;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->I:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/allinone/callerid/b/q;-><init>(Ljava/util/List;)V

    .line 55
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->J:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 56
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->J:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 57
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->J:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/allinone/callerid/h/c$n;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/h/c$n;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    if-eqz p2, :cond_1

    const-string v2, ""

    .line 58
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    invoke-static {p2}, Lcom/allinone/callerid/util/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/h/c;->i0:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->i0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->i0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->g:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/allinone/callerid/h/c;->J0(Landroid/content/Context;Ljava/lang/String;II)V

    .line 66
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-static {}, Lcom/allinone/callerid/util/a1;->C0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 68
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :catch_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 70
    :goto_1
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->k2(Z)V

    goto :goto_2

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/allinone/callerid/h/c;->y:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f10019f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->J:Landroidx/viewpager/widget/ViewPager;

    new-instance p3, Lcom/allinone/callerid/h/c$o;

    invoke-direct {p3, p0, p1}, Lcom/allinone/callerid/h/c$o;-><init>(Lcom/allinone/callerid/h/c;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    new-instance p2, Lcom/allinone/callerid/h/c$p;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/h/c$p;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic F(Lcom/allinone/callerid/h/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->V:Ljava/lang/Runnable;

    return-object p0
.end method

.method private F0(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/h/c$s;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/h/c$s;-><init>(Lcom/allinone/callerid/h/c;Ljava/lang/String;I)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->i0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method private I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/a1;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    if-nez p4, :cond_1

    if-eqz p3, :cond_1

    const-string p4, ""

    .line 2
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->d()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p4

    const-string v0, "search_buyu_token_max"

    invoke-virtual {p4, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-static {p4}, Lcom/allinone/callerid/util/f0;->z(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p4

    const-string v0, "search_buyu_count"

    invoke-virtual {p4, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p4, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    new-instance v0, Lcom/allinone/callerid/h/c$f;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/h/c$f;-><init>(Lcom/allinone/callerid/h/c;Ljava/lang/String;)V

    invoke-static {p4, p2, p3, v0}, Lcom/allinone/callerid/i/a/a0/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/a0/a;)V

    :cond_1
    return-void
.end method

.method static synthetic J(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic K(Lcom/allinone/callerid/h/c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method private K0(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "wbb"

    const-string v0, "\u67e5\u8be2\u672c\u5730\u6570\u636e\u5e76\u5c55\u793a"

    .line 2
    invoke-static {p2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    const-string v0, "search_offline_new"

    invoke-virtual {p2, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/allinone/callerid/h/c$h;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/h/c$h;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/l/a/f;->d(Ljava/lang/String;Lcom/allinone/callerid/l/a/c;)V

    :cond_1
    return-void
.end method

.method static synthetic L(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->Q:Landroid/widget/TextView;

    return-object p0
.end method

.method private L0(Ljava/lang/String;IIZ)V
    .locals 8

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    new-instance v7, Lcom/allinone/callerid/h/c$e;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p2

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/h/c$e;-><init>(Lcom/allinone/callerid/h/c;IIZLjava/lang/String;)V

    invoke-static {v0, p1, p2, p3, v7}, Lcom/allinone/callerid/i/a/a0/d;->a(Landroid/content/Context;Ljava/lang/String;IILcom/allinone/callerid/i/a/a0/c;)V

    :cond_0
    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method private M0(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/allinone/callerid/h/c;->M:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/h/c$g;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/h/c$g;-><init>(Lcom/allinone/callerid/h/c;Ljava/lang/String;)V

    invoke-static {p2, v0, p1, v1}, Lcom/allinone/callerid/i/a/d0/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/d0/a;)V

    :cond_0
    return-void
.end method

.method static synthetic N(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method private N0(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1
    new-instance p3, Lcom/allinone/callerid/h/c$d;

    invoke-direct {p3, p0}, Lcom/allinone/callerid/h/c$d;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/i/a/f0/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/f0/a;)V

    :cond_0
    return-void
.end method

.method static synthetic O(Lcom/allinone/callerid/h/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->T:Ljava/lang/String;

    return-object p0
.end method

.method private O0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->w0()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->w:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/allinone/callerid/h/c;->n0:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->w:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/allinone/callerid/h/c;->o0:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->w:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/allinone/callerid/h/c;->n0:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method static synthetic P(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c;->T:Ljava/lang/String;

    return-object p1
.end method

.method private P0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->u:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/h/c$q;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/h/c$q;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
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

.method static synthetic Q(Lcom/allinone/callerid/h/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->t:I

    return p0
.end method

.method static synthetic R(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->O0()V

    return-void
.end method

.method private R0()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_1

    .line 2
    iget-object v5, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x1c

    if-lt v0, v5, :cond_2

    .line 3
    :cond_0
    iput-boolean v4, p0, Lcom/allinone/callerid/h/c;->r:Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->F:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->s()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->G:Landroid/widget/ImageView;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->q()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->U:Landroid/os/Handler;

    new-instance v3, Lcom/allinone/callerid/h/c$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/h/c$b;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v4, p0, Lcom/allinone/callerid/h/c;->r:Z

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->F:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->s()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->G:Landroid/widget/ImageView;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->q()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->U:Landroid/os/Handler;

    new-instance v3, Lcom/allinone/callerid/h/c$c;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/h/c$c;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic S(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private S0(Lcom/allinone/callerid/model/EZSearchContacts;Z)V
    .locals 8

    const v0, 0x7f100227

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_11

    .line 1
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->P:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->U:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 3
    iget-object v4, p0, Lcom/allinone/callerid/h/c;->V:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->h0:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->h0:Landroid/view/ViewStub;

    invoke-virtual {p2, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 6
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->i0:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->g:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    iput-object p2, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p2, 0x0

    .line 18
    :goto_3
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_8

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 21
    iget-object v5, p0, Lcom/allinone/callerid/h/c;->v:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 22
    :cond_8
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->v:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_4
    :try_start_1
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getKeyword()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_a

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 26
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 28
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "subtype"

    .line 29
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object v4, p0, Lcom/allinone/callerid/h/c;->D:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v4, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    .line 33
    iget-object v4, p0, Lcom/allinone/callerid/h/c;->E:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    :cond_9
    iget-object v4, p0, Lcom/allinone/callerid/h/c;->D:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_c

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 36
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->D:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    .line 39
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->E:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    :cond_b
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->D:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :cond_c
    :goto_5
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 44
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 46
    :cond_d
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 47
    :cond_e
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_f
    :goto_6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object p1

    .line 50
    iget v0, p0, Lcom/allinone/callerid/h/c;->t:I

    const v3, 0x7f08005e

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_10

    .line 51
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->O0()V

    .line 53
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100300

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget v0, p0, Lcom/allinone/callerid/h/c;->C:I

    if-ne v0, v4, :cond_10

    .line 57
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->R0()V

    .line 58
    :cond_10
    iget v0, p0, Lcom/allinone/callerid/h/c;->t:I

    if-ne v0, v4, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    if-lez p2, :cond_12

    .line 59
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->O0()V

    .line 61
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100069

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget p1, p0, Lcom/allinone/callerid/h/c;->C:I

    if-ne p1, v4, :cond_12

    .line 65
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->R0()V

    goto :goto_7

    .line 66
    :cond_11
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 67
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_7
    return-void
.end method

.method static synthetic T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method private T0(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/allinone/callerid/h/c;->T:Ljava/lang/String;

    const v5, 0x7f0801f0

    const-string v6, " "

    const-string v8, "zh-TW"

    const v9, 0x7f10032f

    const v10, 0x7f100374

    const-string v11, "zh"

    const/4 v12, 0x3

    const-string v13, ""

    if-eqz v3, :cond_10

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2
    iget-object v3, v0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v3

    const-string v15, "spam_name_show"

    invoke-virtual {v3, v15}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v3

    const-string v15, "spam_no_name_show"

    invoke-virtual {v3, v15}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-boolean v3, v0, Lcom/allinone/callerid/h/c;->g0:Z

    const-string v15, "spam_name_declined"

    const-string v7, "spam_name_blocked"

    const-string v4, "spam_no_name_declined"

    const-string v14, "spam_no_name_blocked"

    if-eqz v3, :cond_8

    if-lt v1, v12, :cond_4

    .line 6
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_2
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 16
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_4
    if-lt v2, v12, :cond_17

    .line 17
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    const v3, 0x7f0801fa

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 19
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100375

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    :goto_3
    const v5, 0x7f100375

    .line 21
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_4
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 26
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 27
    :cond_7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_8
    if-lt v1, v12, :cond_c

    .line 28
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->e0:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 30
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    .line 31
    :cond_9
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->f0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 32
    :cond_a
    :goto_5
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->f0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_6
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 38
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 39
    :cond_b
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_c
    if-lt v2, v12, :cond_17

    .line 40
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->e0:Landroid/widget/ImageView;

    const v3, 0x7f0801fa

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 42
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    .line 43
    :cond_d
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->f0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100375

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_e
    :goto_7
    const v5, 0x7f100375

    .line 44
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->f0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_8
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 50
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 51
    :cond_f
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 52
    :cond_10
    iget-object v3, v0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v3, :cond_11

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_d

    .line 53
    :cond_11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v3

    const-string v4, "no_spam_no_name_show"

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    if-lt v1, v12, :cond_14

    .line 54
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 56
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    .line 57
    :cond_12
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 58
    :cond_13
    :goto_9
    iget-object v2, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_a
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "no_spam_no_name_blocked"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_14
    if-lt v2, v12, :cond_17

    .line 63
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    const v3, 0x7f0801fa

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 65
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_b

    .line 66
    :cond_15
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100375

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_16
    :goto_b
    const v4, 0x7f100375

    .line 67
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_c
    iget-object v1, v0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "no_spam_no_name_declined"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_17
    :goto_d
    return-void
.end method

.method static synthetic U(Lcom/allinone/callerid/h/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->C:I

    return p0
.end method

.method private U0()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->T:Ljava/lang/String;

    const v1, 0x7f0801fa

    const v2, 0x7f0801f0

    const-string v3, " "

    const/4 v4, 0x0

    const v5, 0x7f100375

    const-string v6, "zh-TW"

    const v7, 0x7f10032f

    const v8, 0x7f100374

    const-string v9, "zh"

    const/4 v10, 0x3

    const-string v11, ""

    if-eqz v0, :cond_8

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v12, "spam_name_show"

    invoke-virtual {v0, v12}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v12, "spam_no_name_show"

    invoke-virtual {v0, v12}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget v0, p0, Lcom/allinone/callerid/h/c;->Y:I

    if-lt v0, v10, :cond_4

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/allinone/callerid/h/c;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/h/c;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "spam_name_blocked"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 16
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "spam_no_name_blocked"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 17
    :cond_4
    iget v0, p0, Lcom/allinone/callerid/h/c;->Z:I

    if-lt v0, v10, :cond_f

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 20
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/allinone/callerid/h/c;->Z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 22
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/h/c;->Z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "spam_name_declined"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 28
    :cond_7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "spam_no_name_declined"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->S:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_9

    .line 30
    :cond_9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v11, "no_spam_no_name_show"

    invoke-virtual {v0, v11}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/allinone/callerid/h/c;->Y:I

    if-lt v0, v10, :cond_c

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 34
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 35
    :cond_a
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/allinone/callerid/h/c;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 36
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/h/c;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_6
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "no_spam_no_name_blocked"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 41
    :cond_c
    iget v0, p0, Lcom/allinone/callerid/h/c;->Z:I

    if-lt v0, v10, :cond_f

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 44
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/allinone/callerid/h/c;->Z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 46
    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->c0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/h/c;->Z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_8
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "no_spam_no_name_declined"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_f
    :goto_9
    return-void
.end method

.method static synthetic V(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->R0()V

    return-void
.end method

.method static synthetic W(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic X(Lcom/allinone/callerid/h/c;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/h/c;Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    return-object p1
.end method

.method static synthetic a0(Lcom/allinone/callerid/h/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/h/c;->g0:Z

    return p1
.end method

.method static synthetic b0(Lcom/allinone/callerid/h/c;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/h/c;->T0(II)V

    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/h/c;->X:Z

    return p0
.end method

.method static synthetic d(Lcom/allinone/callerid/h/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->R:I

    return p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/h/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/h/c;->X:Z

    return p1
.end method

.method static synthetic e(Lcom/allinone/callerid/h/c;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/h/c;->R:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/allinone/callerid/h/c;->R:I

    return v0
.end method

.method static synthetic e0(Lcom/allinone/callerid/h/c;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/h/c;->N0(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic f(Lcom/allinone/callerid/h/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->U:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/h/c;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/h/c;->M0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic g(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->P0()V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/h/c;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->O:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/allinone/callerid/h/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->j:F

    return p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/h/c;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->J:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic i(Lcom/allinone/callerid/h/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->j:F

    return p1
.end method

.method static synthetic i0(Lcom/allinone/callerid/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/h/c;->W:Z

    return p0
.end method

.method static synthetic j(Lcom/allinone/callerid/h/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->k:F

    return p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/h/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/h/c;->W:Z

    return p1
.end method

.method static synthetic k(Lcom/allinone/callerid/h/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->k:F

    return p1
.end method

.method static synthetic k0(Lcom/allinone/callerid/h/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->Y:I

    return p0
.end method

.method static synthetic l(Lcom/allinone/callerid/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/h/c;->z:Z

    return p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/h/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->Y:I

    return p1
.end method

.method static synthetic m(Lcom/allinone/callerid/h/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/h/c;->z:Z

    return p1
.end method

.method static synthetic m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->o:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic n(Lcom/allinone/callerid/h/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->l:F

    return p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/h/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->Z:I

    return p0
.end method

.method static synthetic o(Lcom/allinone/callerid/h/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->l:F

    return p1
.end method

.method static synthetic o0(Lcom/allinone/callerid/h/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->Z:I

    return p1
.end method

.method static synthetic p(Lcom/allinone/callerid/h/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->m:F

    return p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/h/c;->U0()V

    return-void
.end method

.method static synthetic q(Lcom/allinone/callerid/h/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->m:F

    return p1
.end method

.method static synthetic q0(Lcom/allinone/callerid/h/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/h/c;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic r(Lcom/allinone/callerid/h/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->p:I

    return p0
.end method

.method static synthetic r0(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->d0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic s(Lcom/allinone/callerid/h/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->p:I

    return p1
.end method

.method static synthetic s0(Lcom/allinone/callerid/h/c;Lcom/allinone/callerid/model/EZSearchContacts;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/h/c;->S0(Lcom/allinone/callerid/model/EZSearchContacts;Z)V

    return-void
.end method

.method static synthetic t(Lcom/allinone/callerid/h/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/c;->q:I

    return p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/h/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/h/c;->p0:Z

    return p1
.end method

.method static synthetic u(Lcom/allinone/callerid/h/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/c;->q:I

    return p1
.end method

.method static synthetic u0(Lcom/allinone/callerid/h/c;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->m0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    return-object p0
.end method

.method static synthetic v(Lcom/allinone/callerid/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/h/c;->A:Z

    return p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->n:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic w(Lcom/allinone/callerid/h/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/h/c;->A:Z

    return p1
.end method

.method static synthetic w0(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->L:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic x(Lcom/allinone/callerid/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/h/c;->B:Z

    return p0
.end method

.method static synthetic x0(Lcom/allinone/callerid/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/h/c;->r:Z

    return p0
.end method

.method static synthetic y(Lcom/allinone/callerid/h/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/h/c;->B:Z

    return p1
.end method

.method private y0(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->H:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/allinone/callerid/h/c;->I:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    return-object p0
.end method

.method private z0(Ljava/lang/String;II)V
    .locals 4

    const-string v0, " "

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/h/c;->W:Z

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/h/c;->X:Z

    .line 4
    iput v0, p0, Lcom/allinone/callerid/h/c;->Y:I

    .line 5
    iput v0, p0, Lcom/allinone/callerid/h/c;->Z:I

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "is_connected"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    if-ne p3, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "unknow_is_connected"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    if-ne p2, v1, :cond_0

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "unknow_incoming_is_connected"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->t(Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->u:Ljava/lang/String;

    new-instance v2, Lcom/allinone/callerid/h/c$r;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/allinone/callerid/h/c$r;-><init>(Lcom/allinone/callerid/h/c;Ljava/lang/String;II)V

    invoke-static {v0, v2}, Lcom/allinone/callerid/i/a/b0/b;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/b0/a;)V

    if-ne p3, v1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->u:Ljava/lang/String;

    new-instance p2, Lcom/allinone/callerid/h/c$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/h/c$a;-><init>(Lcom/allinone/callerid/h/c;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/m/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/allinone/callerid/h/c;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v2, v0, v3}, Lcom/allinone/callerid/h/b;->c(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowManager$LayoutParams;)V

    .line 15
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "callstatus"

    const-string v2, "\u65e0\u7f51\u5c55\u793a\u60ac\u6d6e\u7a97"

    .line 16
    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "is_not_connected"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    if-ne p3, v1, :cond_3

    .line 18
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "unknow_not_connected"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    if-ne p2, v1, :cond_3

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    const-string v0, "unknow_incoming_not_connected"

    invoke-virtual {p2, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/allinone/callerid/util/f0;->u(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1, p3}, Lcom/allinone/callerid/h/c;->K0(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public C0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/h/b;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 3
    :try_start_2
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->n:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const-string v2, "window"

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 7
    iget-object v2, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    .line 10
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public G0(Ljava/lang/String;I)V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/allinone/callerid/h/c;->p0:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->j()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    .line 5
    :cond_0
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    iget-object v1, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/h/c;->o:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v0, v1, v3, v2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    .line 6
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setCall_status(I)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setTel_phone(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setStatus(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    const/16 p2, 0x54

    invoke-virtual {p1, p2, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setLayoutParams(II)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f()V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    new-instance p2, Lcom/allinone/callerid/h/c$i;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/h/c$i;-><init>(Lcom/allinone/callerid/h/c;)V

    const-wide/16 v0, 0x5a

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public H0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->j()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/h/c;->q0:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    :cond_0
    return-void
.end method

.method public J0(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->P:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->U:Landroid/os/Handler;

    iget-object v0, p0, Lcom/allinone/callerid/h/c;->V:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object p1

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/allinone/callerid/h/c;->k0:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/main/d;->F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    const v1, 0x7f0801b4

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/h/c;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/h/c;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, p1, v1}, Lcom/allinone/callerid/h/b;->c(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "callstatus"

    const-string v0, "\u8054\u7cfb\u4eba\u76f4\u63a5\u5c55\u793a"

    .line 11
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3, p4}, Lcom/allinone/callerid/h/c;->z0(Ljava/lang/String;II)V

    return-void
.end method

.method public Q0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "callstatus"

    const-string v2, "show"

    .line 3
    invoke-static {v1, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/h/c;->d:Landroid/content/Context;

    .line 5
    iput p3, p0, Lcom/allinone/callerid/h/c;->C:I

    .line 6
    iput p4, p0, Lcom/allinone/callerid/h/c;->t:I

    .line 7
    iput-object p5, p0, Lcom/allinone/callerid/h/c;->i:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/allinone/callerid/h/c;->k0:I

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p5

    iget-object p5, p5, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {p1, p5}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p5

    invoke-static {p5}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object p5

    invoke-virtual {p5}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/allinone/callerid/h/c;->M:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/allinone/callerid/h/c;->u:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p5

    iput-object p5, p0, Lcom/allinone/callerid/h/c;->x:Landroid/graphics/Typeface;

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object p5

    iput-object p5, p0, Lcom/allinone/callerid/h/c;->y:Landroid/graphics/Typeface;

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/a1;->w0()I

    move-result p5

    if-eqz p5, :cond_3

    const/4 p6, 0x1

    if-eq p5, p6, :cond_2

    const/4 p6, 0x2

    if-eq p5, p6, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f0c0161

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/h/c;->D0(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_0

    :cond_2
    const v4, 0x7f0c0162

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/h/c;->D0(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_0

    :cond_3
    const v4, 0x7f0c0161

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/h/c;->D0(Landroid/content/Context;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
