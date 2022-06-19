.class public Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CallScreenUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/net/Uri;

.field private D:Landroidx/appcompat/app/a;

.field private E:Landroidx/appcompat/app/a;

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/allinone/callerid/customview/DeletableEditText;

.field private y:Landroid/widget/TextView;

.field private z:Lcom/allinone/callerid/customview/DeletableEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "CallScreenUploadActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->g0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->f0()V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->E:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->i0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->D:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method private f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->x:Lcom/allinone/callerid/customview/DeletableEditText;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->z:Lcom/allinone/callerid/customview/DeletableEditText;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private g0()V
    .locals 4

    const v0, 0x7f0902b7

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v1, 0x7f0907ae

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090269

    .line 5
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090799

    .line 6
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v3, 0x7f09079a

    .line 7
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->w:Landroid/widget/TextView;

    const v3, 0x7f090196

    .line 8
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/customview/DeletableEditText;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->x:Lcom/allinone/callerid/customview/DeletableEditText;

    const v3, 0x7f090611

    .line 9
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->y:Landroid/widget/TextView;

    const v3, 0x7f090191

    .line 10
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/customview/DeletableEditText;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->z:Lcom/allinone/callerid/customview/DeletableEditText;

    const v3, 0x7f090314

    .line 11
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->A:Landroid/widget/ImageView;

    const v3, 0x7f09030c

    .line 12
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->B:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->x:Lcom/allinone/callerid/customview/DeletableEditText;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->z:Lcom/allinone/callerid/customview/DeletableEditText;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private i0(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090650

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090364

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100361

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100362

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$e;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$f;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$f;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->k(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->D:Landroidx/appcompat/app/a;

    return-void
.end method

.method private j0(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0907b0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090467

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->E:Landroidx/appcompat/app/a;

    return-void
.end method

.method private k0(Landroid/net/Uri;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->q(Landroid/net/Uri;)Lcom/bumptech/glide/h;

    move-result-object p1

    const v0, 0x7f0802f1

    .line 4
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->Z(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/h;

    .line 5
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/h;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private l0(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_upload"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    invoke-static {p1, p2, p3, v0}, Lcom/allinone/callerid/d/e/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/allinone/callerid/d/e/d$a;)V

    return-void
.end method


# virtual methods
.method public h0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    .line 2
    invoke-static {p0, v0}, Lcom/allinone/callerid/d/f/a;->h(Landroid/app/Activity;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$g;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$g;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->r(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0xa0

    if-ne p1, p2, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/d/f/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->C:Landroid/net/Uri;

    .line 4
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->k0(Landroid/net/Uri;)V

    .line 5
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "callscreen"

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "select_video_uri:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->C:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Has no SD card!"

    const/4 p2, 0x0

    .line 7
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->h0()V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->B:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f0802f1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->C:Landroid/net/Uri;

    goto/16 :goto_0

    .line 6
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 8
    :sswitch_3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->x:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->z:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->C:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 13
    invoke-direct {p0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->j0(Landroid/content/Context;)V

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->C:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->l0(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090269 -> :sswitch_3
        0x7f0902b7 -> :sswitch_2
        0x7f09030c -> :sswitch_1
        0x7f090314 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

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
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 3
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
