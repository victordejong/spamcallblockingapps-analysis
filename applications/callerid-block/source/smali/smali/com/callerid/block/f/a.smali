.class public Lcom/callerid/block/f/a;
.super Lcom/callerid/block/f/b;
.source ""


# static fields
.field private static c:Landroid/content/Context;

.field private static d:Landroid/widget/TextView;

.field private static e:Landroid/widget/TextView;

.field private static f:Landroid/widget/ImageView;

.field private static g:F

.field private static h:F

.field private static i:F

.field private static j:F

.field private static k:Landroid/view/WindowManager;

.field private static l:Landroid/view/WindowManager$LayoutParams;

.field private static m:Landroid/widget/TextView;

.field private static n:Landroid/graphics/Typeface;

.field private static o:Landroid/graphics/Typeface;

.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()F
    .locals 1

    sget v0, Lcom/callerid/block/f/a;->g:F

    return v0
.end method

.method static synthetic d(F)F
    .locals 0

    sput p0, Lcom/callerid/block/f/a;->g:F

    return p0
.end method

.method static synthetic e()F
    .locals 1

    sget v0, Lcom/callerid/block/f/a;->h:F

    return v0
.end method

.method static synthetic f(F)F
    .locals 0

    sput p0, Lcom/callerid/block/f/a;->h:F

    return p0
.end method

.method static synthetic g()F
    .locals 1

    sget v0, Lcom/callerid/block/f/a;->i:F

    return v0
.end method

.method static synthetic h(F)F
    .locals 0

    sput p0, Lcom/callerid/block/f/a;->i:F

    return p0
.end method

.method static synthetic i()F
    .locals 1

    sget v0, Lcom/callerid/block/f/a;->j:F

    return v0
.end method

.method static synthetic j(F)F
    .locals 0

    sput p0, Lcom/callerid/block/f/a;->j:F

    return p0
.end method

.method static synthetic k()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    sget-object v0, Lcom/callerid/block/f/a;->l:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic l()Landroid/view/WindowManager;
    .locals 1

    sget-object v0, Lcom/callerid/block/f/a;->k:Landroid/view/WindowManager;

    return-object v0
.end method

.method private static m()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/callerid/block/f/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    invoke-interface {p0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    sput-object p0, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static o(Landroid/content/Context;Lcom/callerid/block/search/CallLogBean;I)V
    .locals 2

    invoke-static {p0}, Lcom/callerid/block/f/a;->n(Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/f/a;->m()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sput-object v0, Lcom/callerid/block/f/a;->l:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/callerid/block/f/a;->k:Landroid/view/WindowManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/callerid/block/f/a;->l:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p0, p2, v0}, Lcom/callerid/block/f/b;->a(Landroid/content/Context;ILandroid/view/WindowManager$LayoutParams;)Landroid/view/ViewGroup;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    sget-object p2, Lcom/callerid/block/f/a;->k:Landroid/view/WindowManager;

    sget-object v0, Lcom/callerid/block/f/a;->l:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, p1}, Lcom/callerid/block/f/a;->p(Landroid/view/View;Lcom/callerid/block/search/CallLogBean;)V

    :cond_2
    return-void
.end method

.method private static p(Landroid/view/View;Lcom/callerid/block/search/CallLogBean;)V
    .locals 5

    const v0, 0x7f090425

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/callerid/block/f/a;->e:Landroid/widget/TextView;

    const v0, 0x7f0902b7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/callerid/block/f/a;->f:Landroid/widget/ImageView;

    const v0, 0x7f09040b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/callerid/block/f/a;->d:Landroid/widget/TextView;

    const v0, 0x7f09048f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    const v0, 0x7f0903e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/TextView;

    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    const v2, 0x7f09008f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/customview/LImageButton;

    const v3, 0x7f090088

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/customview/LImageButton;

    sget-object v4, Lcom/callerid/block/f/a;->o:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Lcom/callerid/block/f/a$a;

    invoke-direct {v4}, Lcom/callerid/block/f/a$a;-><init>()V

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/callerid/block/f/a$b;

    invoke-direct {v0, p1}, Lcom/callerid/block/f/a$b;-><init>(Lcom/callerid/block/search/CallLogBean;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/callerid/block/f/a$c;

    invoke-direct {v0, p1}, Lcom/callerid/block/f/a$c;-><init>(Lcom/callerid/block/search/CallLogBean;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/callerid/block/f/a$d;

    invoke-direct {v0, p1}, Lcom/callerid/block/f/a$d;-><init>(Lcom/callerid/block/search/CallLogBean;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/callerid/block/f/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/callerid/block/f/a;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/callerid/block/f/a;->n:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lcom/callerid/block/f/a;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/callerid/block/f/a;->n:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/callerid/block/f/a;->n:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/callerid/block/f/a;->q(Landroid/content/Context;Lcom/callerid/block/search/CallLogBean;)V

    :cond_0
    new-instance p1, Lcom/callerid/block/f/a$e;

    invoke-direct {p1}, Lcom/callerid/block/f/a$e;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static q(Landroid/content/Context;Lcom/callerid/block/search/CallLogBean;)V
    .locals 9

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/f/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f040525

    const v2, 0x7f0801ab

    invoke-static {p0, v0, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p0

    sput p0, Lcom/callerid/block/f/a;->p:I

    sget-object v0, Lcom/callerid/block/f/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/callerid/block/f/a;->p:I

    sget-object v3, Lcom/callerid/block/f/a;->f:Landroid/widget/ImageView;

    invoke-static {p0, v0, v2, v3}, Lcom/callerid/block/util/p;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_1
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/callerid/block/f/a;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object p0, Lcom/callerid/block/f/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/callerid/block/f/a;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f060139

    const/16 v4, 0x8

    const-string v5, " "

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez p0, :cond_5

    sget-object v2, Lcom/callerid/block/f/a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v2, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v2, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100181

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    sget-object v6, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-lez p0, :cond_6

    sget-object v1, Lcom/callerid/block/f/a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lcom/callerid/block/f/a;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100180

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1001c9

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public static r(Landroid/content/Context;Lcom/callerid/block/search/CallLogBean;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    sget-object v0, Lcom/callerid/block/f/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/callerid/block/f/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/callerid/block/f/a;->n:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/callerid/block/f/a;->o:Landroid/graphics/Typeface;

    const v1, 0x7f0c00d8

    invoke-static {p0, p1, v1}, Lcom/callerid/block/f/a;->o(Landroid/content/Context;Lcom/callerid/block/search/CallLogBean;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
