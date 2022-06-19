.class public Lcom/allinone/callerid/d/c/a;
.super Lcom/allinone/callerid/h/b;
.source "IncomingCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/c/a$k;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/allinone/callerid/d/c/a;


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field private k:Ljava/lang/String;

.field private l:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

.field private s:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

.field private t:Landroid/view/WindowManager;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/view/WindowManager$LayoutParams;

.field private w:I

.field public x:Landroid/view/ViewGroup;

.field private y:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/h/b;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/allinone/callerid/d/c/a;->d:I

    return-void
.end method

.method private A()Landroid/view/WindowManager$LayoutParams;
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

    const/16 v1, 0x33

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

.method private C()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/allinone/callerid/d/c/a;->B()V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/d/c/a;->z()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    const-string v2, "window"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/allinone/callerid/d/c/a;->t:Landroid/view/WindowManager;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const v3, 0x7f0c008d

    if-lt v1, v2, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    invoke-virtual {p0, v1, v3, v0}, Lcom/allinone/callerid/h/b;->b(Landroid/content/Context;ILandroid/view/WindowManager$LayoutParams;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "floatview_no_per"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    invoke-virtual {p0, v1, v3, v0}, Lcom/allinone/callerid/h/b;->b(Landroid/content/Context;ILandroid/view/WindowManager$LayoutParams;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a;->t:Landroid/view/WindowManager;

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "callstatus"

    const-string v1, "overlay"

    .line 13
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/d/c/a;->F(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/allinone/callerid/d/c/a;->d:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/allinone/callerid/d/c/a;->w:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/main/d;->F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/d/c/a;->x()V

    return-void
.end method

.method private E()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/d/c/a;->A()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->v:Landroid/view/WindowManager$LayoutParams;

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/a;

    invoke-direct {v0}, Lcom/allinone/callerid/mvc/view/recorder/a;-><init>()V

    .line 3
    new-instance v1, Lcom/allinone/callerid/d/c/a$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/c/a$e;-><init>(Lcom/allinone/callerid/d/c/a;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/a;->d(Lcom/allinone/callerid/mvc/view/recorder/a$b;)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->s:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    new-instance v2, Lcom/allinone/callerid/d/c/a$f;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/d/c/a$f;-><init>(Lcom/allinone/callerid/d/c/a;Lcom/allinone/callerid/mvc/view/recorder/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private F(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0904c3

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f09034b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->l:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const v0, 0x7f0900bf

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->g:Landroid/widget/ImageView;

    const v0, 0x7f0900c1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->h:Landroid/widget/TextView;

    const v0, 0x7f0900c2

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->i:Landroid/widget/TextView;

    const v0, 0x7f09018c

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090011

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0902ca

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0902ef

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/d/c/a;->y:Landroid/widget/ImageView;

    const v3, 0x7f090765

    .line 10
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/d/c/a;->m:Landroid/widget/TextView;

    const v3, 0x7f0906b9

    .line 11
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/d/c/a;->n:Landroid/widget/TextView;

    const v3, 0x7f09071a

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/d/c/a;->o:Landroid/widget/TextView;

    .line 13
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5c55\u793a\u6765\u7535\u95ea\u5c4f\u5f39\u7a97: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contact"

    invoke-static {v4, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->m:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object v3, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 22
    invoke-static {v3}, Lcom/allinone/callerid/util/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/d/c/a;->p:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, ""

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    iget-object v3, p0, Lcom/allinone/callerid/d/c/a;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v3, p0, Lcom/allinone/callerid/d/c/a;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_2
    :goto_0
    new-instance v3, Lcom/allinone/callerid/d/c/a$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/d/c/a$b;-><init>(Lcom/allinone/callerid/d/c/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance v2, Lcom/allinone/callerid/d/c/a$c;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/d/c/a$c;-><init>(Lcom/allinone/callerid/d/c/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance v0, Lcom/allinone/callerid/d/c/a$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/d/c/a$d;-><init>(Lcom/allinone/callerid/d/c/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "callscreen_show"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->j:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_3

    .line 31
    invoke-direct {p0, v0}, Lcom/allinone/callerid/d/c/a;->I(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    :cond_3
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 32
    invoke-static {v2}, Lcom/allinone/callerid/customview/e/d;->h([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/allinone/callerid/customview/e/a;->d()Lcom/allinone/callerid/customview/e/a;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 34
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/e/a;->l([F)Lcom/allinone/callerid/customview/e/a;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/allinone/callerid/customview/e/a;->c()Lcom/allinone/callerid/customview/e/d;

    move-result-object v1

    const-wide/16 v4, 0x190

    .line 36
    invoke-virtual {v1, v4, v5}, Lcom/allinone/callerid/customview/e/d;->j(J)Lcom/allinone/callerid/customview/e/d;

    move-result-object v1

    const/4 v2, -0x1

    .line 37
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/e/d;->m(I)Lcom/allinone/callerid/customview/e/d;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/allinone/callerid/customview/e/d;->n()Lcom/allinone/callerid/customview/e/d;

    const v1, 0x7f09023a

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    iput-object p1, p0, Lcom/allinone/callerid/d/c/a;->s:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    .line 40
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setIsonTouch(Z)V

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->s:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setCall_status(I)V

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->s:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setTel_phone(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->s:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    const/16 v0, 0x2711

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setStatus(I)V

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    iget v0, p0, Lcom/allinone/callerid/d/c/a;->d:I

    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/d/c/a;->G(Ljava/lang/String;I)V

    .line 45
    invoke-direct {p0}, Lcom/allinone/callerid/d/c/a;->E()V

    .line 46
    invoke-direct {p0}, Lcom/allinone/callerid/d/c/a;->D()V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        -0x3f600000    # -5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private G(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/c/a$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/d/c/a$k;-><init>(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;I)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private I(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcn/jzvd/Jzvd;->L()V

    .line 6
    new-instance v0, Lcn/jzvd/t;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jzvd/t;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcn/jzvd/t;->e:Z

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a;->l:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const-class v3, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    invoke-virtual {v2, v0, v1, v3}, Lcn/jzvd/JzvdStd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V

    .line 9
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUseVideoAudioRing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->l:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->setSilence(Z)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->l:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->setSilence(Z)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->l:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->U()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    iget-object p4, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    invoke-static {p4}, Lcom/allinone/callerid/util/f0;->z(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p4

    const-string v0, "search_buyu_count"

    invoke-virtual {p4, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p4, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    new-instance v0, Lcom/allinone/callerid/d/c/a$i;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/d/c/a$i;-><init>(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;)V

    invoke-static {p4, p2, p3, v0}, Lcom/allinone/callerid/i/a/a0/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/a0/a;)V

    :cond_1
    return-void
.end method

.method private L(Ljava/lang/String;I)V
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

    invoke-virtual {p2, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcom/allinone/callerid/d/c/a$j;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/d/c/a$j;-><init>(Lcom/allinone/callerid/d/c/a;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/l/a/f;->d(Ljava/lang/String;Lcom/allinone/callerid/l/a/c;)V

    :cond_1
    return-void
.end method

.method private M(Ljava/lang/String;IZ)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    new-instance v2, Lcom/allinone/callerid/d/c/a$h;

    invoke-direct {v2, p0, p3, p1}, Lcom/allinone/callerid/d/c/a$h;-><init>(Lcom/allinone/callerid/d/c/a;ZLjava/lang/String;)V

    invoke-static {v1, p1, v0, p2, v2}, Lcom/allinone/callerid/i/a/a0/d;->a(Landroid/content/Context;Ljava/lang/String;IILcom/allinone/callerid/i/a/a0/c;)V

    :cond_0
    return-void
.end method

.method private O(Lcom/allinone/callerid/model/EZSearchContacts;Z)V
    .locals 4

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->p:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object p2

    .line 6
    iget v0, p0, Lcom/allinone/callerid/d/c/a;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    iget-object v3, p0, Lcom/allinone/callerid/d/c/a;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f08005e

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_6

    .line 17
    iget-object v3, p0, Lcom/allinone/callerid/d/c/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object v3, p0, Lcom/allinone/callerid/d/c/a;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    if-lez p2, :cond_7

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->o:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100069

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method static synthetic d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    return-object p0
.end method

.method static synthetic f(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/allinone/callerid/d/c/a;Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    return-object p1
.end method

.method static synthetic h(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/allinone/callerid/d/c/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic j(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/d/c/a;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic n(Lcom/allinone/callerid/d/c/a;Lcom/allinone/callerid/model/EZSearchContacts;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/d/c/a;->O(Lcom/allinone/callerid/model/EZSearchContacts;Z)V

    return-void
.end method

.method static synthetic o(Lcom/allinone/callerid/d/c/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/d/c/a;->q:Z

    return p1
.end method

.method static synthetic p(Lcom/allinone/callerid/d/c/a;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->v:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic q(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->s:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    return-object p0
.end method

.method static synthetic s(Lcom/allinone/callerid/d/c/a;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->t:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic t(Lcom/allinone/callerid/d/c/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->u:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic u(Lcom/allinone/callerid/d/c/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/d/c/a;->d:I

    return p0
.end method

.method static synthetic v(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/d/c/a;->M(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/c/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "is_connected"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/allinone/callerid/d/c/a;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_is_connected"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_incoming_is_connected"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/f0;->t(Landroid/content/Context;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    new-instance v2, Lcom/allinone/callerid/d/c/a$g;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/d/c/a$g;-><init>(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/allinone/callerid/i/a/b0/b;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/b0/a;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "is_not_connected"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_not_connected"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_incoming_not_connected"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/f0;->u(Landroid/content/Context;)V

    .line 13
    iget v1, p0, Lcom/allinone/callerid/d/c/a;->d:I

    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/d/c/a;->L(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static y()Lcom/allinone/callerid/d/c/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/d/c/a;->c:Lcom/allinone/callerid/d/c/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/allinone/callerid/d/c/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/allinone/callerid/d/c/a;->c:Lcom/allinone/callerid/d/c/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/allinone/callerid/d/c/a;

    invoke-direct {v1}, Lcom/allinone/callerid/d/c/a;-><init>()V

    sput-object v1, Lcom/allinone/callerid/d/c/a;->c:Lcom/allinone/callerid/d/c/a;

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
    sget-object v0, Lcom/allinone/callerid/d/c/a;->c:Lcom/allinone/callerid/d/c/a;

    return-object v0
.end method

.method private z()Landroid/view/WindowManager$LayoutParams;
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
    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x1080728

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method


# virtual methods
.method public B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->t:Landroid/view/WindowManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    invoke-static {}, Lcn/jzvd/Jzvd;->L()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->t:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 7
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public H(Ljava/lang/String;I)V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/allinone/callerid/d/c/a;->q:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->j()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    .line 5
    :cond_0
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    iget-object v1, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/d/c/a;->v:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v0, v1, v3, v2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    .line 6
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setCall_status(I)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setTel_phone(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setStatus(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    const/16 p2, 0x54

    invoke-virtual {p1, p2, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setLayoutParams(II)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f()V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    new-instance p2, Lcom/allinone/callerid/d/c/a$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/d/c/a$a;-><init>(Lcom/allinone/callerid/d/c/a;)V

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

.method public J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->j()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/d/c/a;->r:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    :cond_0
    return-void
.end method

.method public N(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/callscreen/bean/HomeInfo;ILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a;->f:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/allinone/callerid/d/c/a;->j:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/d/c/a;->k:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/allinone/callerid/d/c/a;->d:I

    .line 6
    iput-object p5, p0, Lcom/allinone/callerid/d/c/a;->e:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/allinone/callerid/d/c/a;->w:I

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/d/c/a;->C()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
