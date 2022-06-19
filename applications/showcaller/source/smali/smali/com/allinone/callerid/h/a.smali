.class public Lcom/allinone/callerid/h/a;
.super Lcom/allinone/callerid/h/b;
.source "ClipBoardOverlayView.java"


# static fields
.field private static volatile c:Lcom/allinone/callerid/h/a;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Landroid/view/WindowManager;

.field private m:Landroid/view/WindowManager$LayoutParams;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/graphics/Typeface;

.field public p:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/h/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic d(Lcom/allinone/callerid/h/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/allinone/callerid/h/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/a;->h:F

    return p0
.end method

.method static synthetic f(Lcom/allinone/callerid/h/a;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/a;->h:F

    return p1
.end method

.method static synthetic g(Lcom/allinone/callerid/h/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/a;->i:F

    return p0
.end method

.method static synthetic h(Lcom/allinone/callerid/h/a;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/a;->i:F

    return p1
.end method

.method static synthetic i(Lcom/allinone/callerid/h/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/a;->j:F

    return p0
.end method

.method static synthetic j(Lcom/allinone/callerid/h/a;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/a;->j:F

    return p1
.end method

.method static synthetic k(Lcom/allinone/callerid/h/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/h/a;->k:F

    return p0
.end method

.method static synthetic l(Lcom/allinone/callerid/h/a;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/h/a;->k:F

    return p1
.end method

.method static synthetic m(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/a;->m:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic n(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/h/a;->l:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static o()Lcom/allinone/callerid/h/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/h/a;->c:Lcom/allinone/callerid/h/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/allinone/callerid/h/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/allinone/callerid/h/a;->c:Lcom/allinone/callerid/h/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/allinone/callerid/h/a;

    invoke-direct {v1}, Lcom/allinone/callerid/h/a;-><init>()V

    sput-object v1, Lcom/allinone/callerid/h/a;->c:Lcom/allinone/callerid/h/a;

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
    sget-object v0, Lcom/allinone/callerid/h/a;->c:Lcom/allinone/callerid/h/a;

    return-object v0
.end method

.method private p()Landroid/view/WindowManager$LayoutParams;
    .locals 3

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

    const/16 v1, 0x33

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x80228

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method

.method private r(Landroid/content/Context;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/h/a;->q()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->m:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/h/a;->p()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/h/a;->m:Landroid/view/WindowManager$LayoutParams;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->l:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    const-string v0, "window"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/allinone/callerid/h/a;->l:Landroid/view/WindowManager;

    .line 6
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const v2, 0x7f0c0160

    if-lt v0, v1, :cond_2

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/allinone/callerid/h/b;->a(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/h/a;->p:Landroid/view/ViewGroup;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/allinone/callerid/h/b;->a(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/h/a;->p:Landroid/view/ViewGroup;

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->p:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/h/a;->m:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, p1, v1}, Lcom/allinone/callerid/h/b;->c(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->p:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/h/a;->s(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;)V

    :cond_4
    return-void
.end method

.method private s(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 5

    const v0, 0x7f0906f2

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/h/a;->f:Landroid/widget/TextView;

    const v0, 0x7f090452

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/h/a;->g:Landroid/widget/ImageView;

    const v0, 0x7f0906b9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/h/a;->e:Landroid/widget/TextView;

    const v0, 0x7f0907a6

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    const v0, 0x7f090670

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09009b

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0900b3

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0900ab

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    new-instance v4, Lcom/allinone/callerid/h/a$a;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/h/a$a;-><init>(Lcom/allinone/callerid/h/a;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v0, Lcom/allinone/callerid/h/a$b;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/h/a$b;-><init>(Lcom/allinone/callerid/h/a;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v0, Lcom/allinone/callerid/h/a$c;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/h/a$c;-><init>(Lcom/allinone/callerid/h/a;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v0, Lcom/allinone/callerid/h/a$d;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/h/a$d;-><init>(Lcom/allinone/callerid/h/a;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/h/a;->o:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/h/a;->o:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/h/a;->o:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/allinone/callerid/h/a;->t(Landroid/content/Context;Lcom/allinone/callerid/search/CallLogBean;)V

    .line 20
    :cond_0
    new-instance p2, Lcom/allinone/callerid/h/a$e;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/h/a$e;-><init>(Lcom/allinone/callerid/h/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/h/a;->p:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/allinone/callerid/h/a;->l:Landroid/view/WindowManager;

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
    iget-object v2, p0, Lcom/allinone/callerid/h/a;->p:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/allinone/callerid/h/a;->p:Landroid/view/ViewGroup;

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public t(Landroid/content/Context;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0801b4

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/h/a;->g:Landroid/widget/ImageView;

    invoke-static {p1, v2, v1, v3}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/h/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 12
    :goto_2
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f060112

    const/16 v4, 0x8

    const v5, 0x7f0801b5

    const-string v6, " "

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    .line 13
    iget-object v2, p0, Lcom/allinone/callerid/h/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/h/a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v2, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10029b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    :cond_4
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-lez p1, :cond_5

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/h/a;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10029a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f10032f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public u(Landroid/content/Context;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/allinone/callerid/h/a;->d:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/h/a;->o:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/h/a;->o:Landroid/graphics/Typeface;

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/h/a;->r(Landroid/content/Context;Lcom/allinone/callerid/search/CallLogBean;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
