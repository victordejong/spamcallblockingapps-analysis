.class public Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "MissedCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/widget/TextView;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "MissedCallActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->v:Ljava/util/List;

    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f090364

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0906be

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->w:Landroid/widget/TextView;

    const v2, 0x7f0901e0

    .line 4
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09005a

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090796

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09066c

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0906c4

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->C()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->c0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->y:I

    return p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->b0()V

    return-void
.end method

.method private b0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "missed_request_num"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/d$a;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const-string v2, "ca-app-pub-5825926894918682/7437588851"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    .line 4
    new-instance v1, Lcom/google/android/gms/ads/t$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/t$a;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/t$a;->b(Z)Lcom/google/android/gms/ads/t$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/ads/t$a;->a()Lcom/google/android/gms/ads/t;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/formats/c$a;->h(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/formats/c$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;

    .line 11
    new-instance v1, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method private c0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->v:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->v:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->v:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget v3, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->x:I

    if-lez v3, :cond_4

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ""

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->x:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->w:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'#EE5164\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->w:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private d0()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/a1;->d0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/a1;->e0()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/a1;->f0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09005a

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901e0

    if-eq p1, v0, :cond_1

    const v0, 0x7f090364

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "missed_close"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->d0()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "misscall_more_pdtclick"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->d0()V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060121

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/h1;->C0(Landroid/app/Activity;I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "contact_missed"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->v:Ljava/util/List;

    const-string v1, "unreadkey"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->x:I

    const-string v0, "isContact"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->y:I

    :cond_1
    const p1, 0x7f0c0092

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "misscall_more_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {p0}, Lcom/allinone/callerid/util/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->d0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
