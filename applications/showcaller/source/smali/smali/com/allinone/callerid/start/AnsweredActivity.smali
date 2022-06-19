.class public Lcom/allinone/callerid/start/AnsweredActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "AnsweredActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Ljava/lang/String;

.field private C:Landroid/content/Context;

.field private D:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private E:Z

.field private F:I

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/FrameLayout;

.field private K:Landroid/widget/FrameLayout;

.field private L:Landroid/widget/FrameLayout;

.field private M:Lcom/allinone/callerid/dialog/j;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/FrameLayout;

.field private final u:Ljava/lang/String;

.field private v:Lcom/allinone/callerid/search/EZSearchResult;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "AnsweredActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->u:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    return-void
.end method

.method private C()V
    .locals 5

    const v0, 0x7f090056

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    const v2, 0x7f090364

    .line 5
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0900a9

    .line 6
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/allinone/callerid/start/AnsweredActivity;->z:Landroid/widget/FrameLayout;

    const v3, 0x7f090099

    .line 7
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f090097

    .line 8
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->A:Landroid/widget/FrameLayout;

    const v4, 0x7f09009a

    .line 9
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->O:Landroid/widget/FrameLayout;

    const v4, 0x7f090452

    .line 10
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->x:Landroid/widget/ImageView;

    const v4, 0x7f090393

    .line 11
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0903bc

    .line 12
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->I:Landroid/widget/LinearLayout;

    const v4, 0x7f0900ae

    .line 13
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->J:Landroid/widget/FrameLayout;

    const v4, 0x7f0900b4

    .line 14
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->K:Landroid/widget/FrameLayout;

    const v4, 0x7f0900b8

    .line 15
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->L:Landroid/widget/FrameLayout;

    .line 16
    iget-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0906f2

    .line 24
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->w:Landroid/widget/TextView;

    const v2, 0x7f09076c

    .line 25
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->N:Landroid/widget/TextView;

    const v2, 0x7f090765

    .line 26
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->y:Landroid/widget/TextView;

    const v2, 0x7f090767

    .line 27
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->G:Landroid/widget/TextView;

    const v2, 0x7f090622

    .line 28
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->H:Landroid/widget/TextView;

    const v2, 0x7f09076f

    .line 29
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090741

    .line 30
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090789

    .line 31
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090796

    .line 32
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0906bd

    .line 33
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f09067d

    .line 34
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090618

    .line 35
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090621

    .line 36
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->C()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->n0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->j0()V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/start/AnsweredActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->F:I

    return p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/start/AnsweredActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/start/AnsweredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/start/AnsweredActivity;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/allinone/callerid/start/AnsweredActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->C:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->p0()V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/start/AnsweredActivity;)Lcom/allinone/callerid/dialog/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->M:Lcom/allinone/callerid/dialog/j;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/start/AnsweredActivity;)Lcom/allinone/callerid/search/EZSearchResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    return-object p0
.end method

.method private h0()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/person"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/contact"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/raw_contact"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_type"

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "phone"

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    .line 7
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/h1;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->E:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->w1(Z)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/allinone/callerid/start/AnsweredActivity;->o0(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/allinone/callerid/start/AnsweredActivity;->o0(Landroid/content/Context;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/allinone/callerid/start/AnsweredActivity$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/AnsweredActivity$d;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private j0()V
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
    new-instance v1, Lcom/allinone/callerid/start/AnsweredActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/AnsweredActivity$b;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

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
    new-instance v1, Lcom/allinone/callerid/start/AnsweredActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/AnsweredActivity$c;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

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

.method private k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/bean/ReportedContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/ReportedContent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/ReportedContent;->setNumber(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/bean/ReportedContent;->setType(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/ReportedContent;->setTime(J)V

    .line 5
    invoke-static {v0}, Lcom/allinone/callerid/i/a/w/d;->d(Lcom/allinone/callerid/bean/ReportedContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    new-instance v0, Lcom/allinone/callerid/util/t0;

    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->C:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v7

    const-string v5, "android"

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/util/t0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {v0, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 11
    new-instance p2, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {p2}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 12
    invoke-virtual {p2, p1}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    const-string p1, "0"

    .line 13
    invoke-virtual {p2, p1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, p1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    const-string p3, "1"

    .line 15
    invoke-virtual {p2, p3}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V

    return-void
.end method

.method private l0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/dialog/f;

    const v1, 0x7f1100f6

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/dialog/f;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/start/AnsweredActivity$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/AnsweredActivity$i;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V

    :goto_0
    return-void
.end method

.method private m0()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->F:I

    const v1, 0x7f0801b4

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    .line 3
    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getRaw_contact_id()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/allinone/callerid/start/AnsweredActivity;->x:Landroid/widget/ImageView;

    .line 4
    invoke-static {p0, v0, v2, v1, v3}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->C:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/start/AnsweredActivity;->x:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1, v3}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->F:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private n0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->m0()V

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "missed_activity"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ezSearchResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getDate()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->E:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->w:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->N:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 17
    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :goto_1
    iget v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->F:I

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v0

    if-lez v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->x:Landroid/widget/ImageView;

    const v2, 0x7f0801b5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060061

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->G:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1002a3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method private o0(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/dialog/k;

    const v1, 0x7f1100f6

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/allinone/callerid/dialog/k;-><init>(Landroid/content/Context;IZ)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7f6

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private p0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/allinone/callerid/dialog/j;

    iget-object v1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->C:Landroid/content/Context;

    new-instance v2, Lcom/allinone/callerid/start/AnsweredActivity$h;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/start/AnsweredActivity$h;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

    const v3, 0x7f1100f6

    invoke-direct {v0, v1, v3, v2}, Lcom/allinone/callerid/dialog/j;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->M:Lcom/allinone/callerid/dialog/j;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->M:Lcom/allinone/callerid/dialog/j;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const-string v2, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v2, "missed_close"

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->i0()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 6
    :sswitch_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_telemarket"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    new-instance v0, Lcom/allinone/callerid/start/AnsweredActivity$g;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/AnsweredActivity$g;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/m/b;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    goto/16 :goto_0

    .line 9
    :sswitch_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_spam"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    new-instance v0, Lcom/allinone/callerid/start/AnsweredActivity$f;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/AnsweredActivity$f;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/m/b;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    goto/16 :goto_0

    .line 12
    :sswitch_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_scam"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->B:Ljava/lang/String;

    new-instance v0, Lcom/allinone/callerid/start/AnsweredActivity$e;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/AnsweredActivity$e;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/m/b;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    goto :goto_0

    .line 15
    :sswitch_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_btn_report"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->z:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->J:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 21
    :sswitch_5
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->l0()V

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_btn_block_spam"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :sswitch_6
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->l0()V

    .line 24
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_btn_block"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :sswitch_7
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->h0()V

    .line 26
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_btn_add_contact"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :sswitch_8
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->i0()V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090056 -> :sswitch_8
        0x7f090097 -> :sswitch_7
        0x7f090099 -> :sswitch_6
        0x7f09009a -> :sswitch_5
        0x7f0900a9 -> :sswitch_4
        0x7f0900ae -> :sswitch_3
        0x7f0900b4 -> :sswitch_2
        0x7f0900b8 -> :sswitch_1
        0x7f090364 -> :sswitch_0
    .end sparse-switch
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

    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->C:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "contact_missed"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/EZSearchResult;

    iput-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    const-string v0, "isContact"

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->F:I

    :cond_0
    const p1, 0x7f0c0025

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity;->C:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "answered_activity"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/start/AnsweredActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/AnsweredActivity$a;-><init>(Lcom/allinone/callerid/start/AnsweredActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {p0}, Lcom/allinone/callerid/util/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->i0()V

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "dialog_notifi_per_tip_enalbleed"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 6
    invoke-direct {p0}, Lcom/allinone/callerid/start/AnsweredActivity;->l0()V

    :cond_1
    return-void
.end method
