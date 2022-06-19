.class public Lcom/allinone/callerid/util/recorder/f;
.super Ljava/lang/Object;
.source "RecorderUtils.java"


# static fields
.field private static a:Landroid/app/AlertDialog; = null

.field private static b:Landroid/app/AlertDialog; = null

.field private static c:Landroid/app/AlertDialog; = null

.field private static d:Landroid/app/AlertDialog; = null

.field private static e:Landroid/app/AlertDialog; = null

.field private static f:Landroid/app/AlertDialog; = null

.field private static g:Landroid/app/AlertDialog; = null

.field private static h:Z = false

.field private static i:Landroid/media/MediaPlayer;

.field private static j:Landroid/os/Handler;

.field private static k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/allinone/callerid/util/recorder/f$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/recorder/f$i;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static B(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/allinone/callerid/i/a/v/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/allinone/callerid/util/recorder/f;->r(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    new-instance p1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;-><init>()V

    .line 4
    invoke-virtual {p1, p0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_1

    const/16 p0, 0x6e

    .line 5
    invoke-virtual {p1, p0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x6f

    .line 6
    invoke-virtual {p1, p0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    .line 7
    :goto_0
    sget-boolean p0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p0, :cond_2

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5f00\u59cb\u81ea\u52a8\u5f55\u97f3"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getPhonestatus()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "wbb"

    invoke-static {p2, p0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/service/b;->k(Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/a1;->o2()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 11
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p0

    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->E0(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "speaker_tip_show"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 13
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/allinone/callerid/util/a1;->F2(Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/recorder/f;->h:Z

    return v0
.end method

.method static synthetic c()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->f:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/allinone/callerid/util/recorder/f;->h:Z

    return p0
.end method

.method static synthetic e()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->g:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic f()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic g(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic m()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->q()V

    return-void
.end method

.method static synthetic n()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic o()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic p()Landroid/app/AlertDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->e:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static q()V
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->r(Z)V

    .line 4
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    return-void
.end method

.method public static r(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->h()I

    move-result v2

    if-ne v2, v1, :cond_5

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/f/k/a;->c()Lcom/allinone/callerid/f/k/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/f/k/a;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/f/k/a;->c()Lcom/allinone/callerid/f/k/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/f/k/a;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method public static s(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/allinone/callerid/i/a/c;->a()V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013c

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v2, 0x7f090651

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f090652

    .line 8
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0906e9

    .line 9
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090656

    .line 10
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 11
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 12
    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 13
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 14
    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    .line 16
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$f;

    invoke-direct {v1, p1}, Lcom/allinone/callerid/util/recorder/f$f;-><init>(Lcom/allinone/callerid/i/a/c;)V

    .line 22
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->e:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    sget-object p0, Lcom/allinone/callerid/util/recorder/f;->e:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 29
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->v(Z)V

    .line 30
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "accept_dialog_show"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static t(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013c

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v2, 0x7f090651

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f090652

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0906e9

    .line 7
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090656

    .line 8
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090653

    .line 9
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090654

    .line 10
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 11
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 12
    invoke-virtual {v9, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 13
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 14
    invoke-virtual {v9, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    .line 16
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$h;

    invoke-direct {v1, p1}, Lcom/allinone/callerid/util/recorder/f$h;-><init>(Lcom/allinone/callerid/i/a/c;)V

    .line 24
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->g:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    sget-object p0, Lcom/allinone/callerid/util/recorder/f;->g:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "accessibility_permissions_dialog_show"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/allinone/callerid/util/recorder/f;->h:Z

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090066

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090069

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const v3, 0x7f090068

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090064

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090067

    .line 8
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f090065

    .line 9
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v7

    .line 11
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v7, "mm:ss"

    invoke-direct {p1, v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$j;

    invoke-direct {v1, v5}, Lcom/allinone/callerid/util/recorder/f$j;-><init>(Landroid/widget/ImageView;)V

    .line 17
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    .line 19
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$k;

    invoke-direct {v1, v3, p1}, Lcom/allinone/callerid/util/recorder/f$k;-><init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 20
    sget-object p1, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/allinone/callerid/util/recorder/f$l;

    invoke-direct {v1}, Lcom/allinone/callerid/util/recorder/f$l;-><init>()V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 21
    sget-object p1, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/allinone/callerid/util/recorder/f$m;

    invoke-direct {v1, p0, p2}, Lcom/allinone/callerid/util/recorder/f$m;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 22
    :try_start_0
    sget-object p1, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 23
    sget-object p1, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 25
    sget-object p1, Lcom/allinone/callerid/util/recorder/f;->i:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/allinone/callerid/util/recorder/f$n;

    invoke-direct {p2, v4, v3, v2, v5}, Lcom/allinone/callerid/util/recorder/f$n;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :cond_0
    :goto_0
    :try_start_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->a:Landroid/app/AlertDialog;

    .line 30
    new-instance p1, Lcom/allinone/callerid/util/recorder/f$o;

    invoke-direct {p1}, Lcom/allinone/callerid/util/recorder/f$o;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    sget-object p0, Lcom/allinone/callerid/util/recorder/f;->a:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static v(Landroid/app/Activity;Lcom/allinone/callerid/i/a/d;)Landroid/app/AlertDialog;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    return-object v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/recorder/d;->c()V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v3, "recorder_show_guide_tip_dialog_count"

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c009c

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09013c

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09013a

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f090137

    .line 8
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09012f

    .line 9
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090131

    .line 10
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090130

    .line 11
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090805

    .line 12
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v9, 0x7f090139

    .line 13
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0900d4

    .line 14
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const v11, 0x7f0900d5

    .line 15
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    const v12, 0x7f09013b

    .line 16
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    const v13, 0x7f090138

    .line 17
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f090770

    .line 18
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 19
    new-instance v15, Lcom/allinone/callerid/util/recorder/f$r;

    invoke-direct {v15, v11, v12, v3}, Lcom/allinone/callerid/util/recorder/f$r;-><init>(Landroid/widget/CheckBox;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v10, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 20
    new-instance v15, Lcom/allinone/callerid/util/recorder/f$a;

    invoke-direct {v15, v10, v12, v3}, Lcom/allinone/callerid/util/recorder/f$a;-><init>(Landroid/widget/CheckBox;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v11, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    new-instance v10, Lcom/allinone/callerid/util/recorder/f$b;

    invoke-direct {v10}, Lcom/allinone/callerid/util/recorder/f$b;-><init>()V

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v8

    .line 23
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 31
    new-instance v2, Lcom/allinone/callerid/util/recorder/f$c;

    invoke-direct {v2, v0}, Lcom/allinone/callerid/util/recorder/f$c;-><init>(Landroid/app/Activity;)V

    .line 32
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/util/recorder/f;->c:Landroid/app/AlertDialog;

    .line 37
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$d;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/allinone/callerid/util/recorder/f$d;-><init>(Lcom/allinone/callerid/i/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 39
    sget-object v0, Lcom/allinone/callerid/util/recorder/f;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static w(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/recorder/d;->c()V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->k()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/allinone/callerid/i/a/c;->a()V

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "recorder_show_guide_tip_dialog_count_p"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c009d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09013c

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v3, 0x7f090651

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090652

    .line 12
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0906e9

    .line 13
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090656

    .line 14
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 15
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 16
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 17
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$e;

    invoke-direct {v1, p1}, Lcom/allinone/callerid/util/recorder/f$e;-><init>(Lcom/allinone/callerid/i/a/c;)V

    .line 26
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->d:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    sget-object p0, Lcom/allinone/callerid/util/recorder/f;->d:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 33
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->w(Z)V

    .line 34
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "enable_dialog_show"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static x(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V
    .locals 14

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->l()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/allinone/callerid/i/a/c;->a()V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013c

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v2, 0x7f090651

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f090652

    .line 8
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0906e9

    .line 9
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090656

    .line 10
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090714

    .line 11
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090715

    .line 12
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090774

    .line 13
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090775

    .line 14
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0905f6

    .line 15
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0905f7

    .line 16
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 17
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 18
    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 19
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 20
    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 21
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 22
    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 23
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 24
    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 25
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 26
    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 27
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$g;

    invoke-direct {v1, p1}, Lcom/allinone/callerid/util/recorder/f$g;-><init>(Lcom/allinone/callerid/i/a/c;)V

    .line 40
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->f:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    sget-object p0, Lcom/allinone/callerid/util/recorder/f;->f:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 47
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->x(Z)V

    .line 48
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "permissions_dialog_show"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static y(Landroid/app/Activity;Lcom/allinone/callerid/bean/recorder/RecordCall;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090141

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09013f

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09013e

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/customview/BaseEditText;

    const v4, 0x7f090140

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f09043f

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09013d

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v7

    .line 9
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRemark()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 16
    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/200"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$p;

    invoke-direct {v1, v2, v3, p0}, Lcom/allinone/callerid/util/recorder/f$p;-><init>(Landroid/widget/TextView;Lcom/allinone/callerid/customview/BaseEditText;Landroid/app/Activity;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    new-instance v1, Lcom/allinone/callerid/util/recorder/f$q;

    invoke-direct {v1, v3, p1, p2, p0}, Lcom/allinone/callerid/util/recorder/f$q;-><init>(Lcom/allinone/callerid/customview/BaseEditText;Lcom/allinone/callerid/bean/recorder/RecordCall;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/app/Activity;)V

    .line 20
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/util/recorder/f;->b:Landroid/app/AlertDialog;

    .line 25
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static z(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
