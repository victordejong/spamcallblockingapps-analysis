.class public final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "DialpadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;,
        Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/q;

.field private d:Lorg/mistergroup/shouldianswer/components/a/e;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

.field private h:Ljava/lang/String;

.field private i:Lorg/mistergroup/shouldianswer/ui/main/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->b:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f()V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d()V

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->g:Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

    return-object p0
.end method

.method private final d()V
    .locals 7

    .line 48
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$c;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Lorg/mistergroup/shouldianswer/ui/main/a;
    .locals 1

    .line 35
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->i:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-nez p0, :cond_0

    const-string v0, "model"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final e()V
    .locals 0

    return-void
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Lorg/mistergroup/shouldianswer/components/a/e;
    .locals 1

    .line 35
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez p0, :cond_0

    const-string v0, "contactsAdapter"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final f()V
    .locals 4

    .line 249
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->g:Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    const-string v0, ""

    .line 250
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 252
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->g:Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "formatter!!.inputDigit(number[i])"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/q;->s:Landroid/widget/TextView;

    const-string v1, "binding.tvNumber"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v0, :cond_4

    const-string v1, "contactsAdapter"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 4

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-static {p2}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/v;

    move-result-object p2

    const-class v0, Lorg/mistergroup/shouldianswer/ui/main/a;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p2

    const-string v0, "ViewModelProviders.of(th\u2026ityViewModel::class.java)"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/main/a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->i:Lorg/mistergroup/shouldianswer/ui/main/a;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "uri"

    .line 73
    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "uri.pathSegments[1]"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    .line 76
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "number"

    .line 77
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.getString(\"number\", null)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    .line 78
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/n;->a:Lorg/mistergroup/shouldianswer/utils/n;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 82
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    invoke-static {v2, v1, p2, v3, p2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 86
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object p2

    .line 87
    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/c;->n()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/t$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object p2

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->g:Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

    .line 89
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    const-string v1, "binding"

    if-nez p2, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$n;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$n;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_3

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_4

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->i:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$q;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$q;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->j:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$r;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$r;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_6

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->k:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$s;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$s;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_7

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->l:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$t;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$t;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_8

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->m:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$u;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$u;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_9

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->n:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$v;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$v;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_a

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->o:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$d;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_b

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->p:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$e;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_c

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->r:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$f;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_d

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$g;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_e

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_f

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->q:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$i;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_10

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->c:Landroid/widget/ImageButton;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_11

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_12

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->f:Landroid/widget/LinearLayout;

    const-string v2, "binding.llNumberContainer"

    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 129
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_13

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->f:Landroid/widget/LinearLayout;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 131
    new-instance p2, Lorg/mistergroup/shouldianswer/components/a/e;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->i:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-nez v2, :cond_14

    const-string v3, "model"

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/a;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/mistergroup/shouldianswer/components/a/e;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    .line 132
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    const-string v2, "contactsAdapter"

    if-nez p2, :cond_15

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/mistergroup/shouldianswer/components/a/e;->b(Z)V

    .line 133
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez p2, :cond_16

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/a/e;->d(Z)V

    .line 134
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez p2, :cond_17

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/a/e;->c(Z)V

    .line 135
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez p2, :cond_18

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$l;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$l;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v0, Lkotlin/e/a/m;

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lkotlin/e/a/m;)V

    .line 145
    sget-object p2, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/k;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    check-cast v3, Landroidx/lifecycle/q;

    invoke-virtual {p2, v0, v3}, Lorg/mistergroup/shouldianswer/components/a/g;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 152
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_19
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez v0, :cond_1a

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/q;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "binding.listView"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 154
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p2, :cond_1b

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1b
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/q;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v0, :cond_1c

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1c
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 156
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez p2, :cond_1d

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1d
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Lkotlin/e/a/b;

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lkotlin/e/a/b;)V

    .line 174
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p1, :cond_1e

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1e
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/q;->e:Landroidx/recyclerview/widget/RecyclerView;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 176
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f()V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 192
    :try_start_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->values()[Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    aget-object v3, v3, v4

    sget-object v4, Lorg/mistergroup/shouldianswer/ui/dialpad/a;->a:[I

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v2, :cond_9

    if-eq v3, v0, :cond_8

    .line 215
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->i:Lorg/mistergroup/shouldianswer/ui/main/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "model"

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/a;->f()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ac;->j()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 216
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->values()[Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    aget-object v3, v3, v5

    sget-object v5, Lorg/mistergroup/shouldianswer/ui/dialpad/a;->b:[I

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->ordinal()I

    move-result v3

    aget v3, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v3, v2, :cond_7

    const-string v5, "context!!"

    if-eq v3, v0, :cond_5

    const/4 p1, 0x3

    if-eq v3, p1, :cond_4

    const/4 p1, 0x4

    if-eq v3, p1, :cond_1

    goto/16 :goto_2

    .line 232
    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->i:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-nez p1, :cond_2

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/a;->f()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/mistergroup/shouldianswer/model/ac;->a(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 228
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 223
    :cond_5
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    new-instance v6, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$w;

    invoke-direct {v6, p0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$w;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Landroid/view/MenuItem;)V

    check-cast v6, Lkotlin/e/a/b;

    invoke-virtual {v3, v4, v5, v6}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    goto :goto_2

    .line 218
    :cond_7
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/y;->a()Landroid/content/ClipboardManager;

    move-result-object p1

    const-string v3, "phone number"

    .line 219
    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 220
    invoke-virtual {p1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 202
    :cond_8
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.dir/contact"

    .line 203
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone"

    .line 204
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    :try_start_4
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return v2

    .line 194
    :cond_9
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->h:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_a

    move p1, v2

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_b

    .line 195
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/n;->a:Lorg/mistergroup/shouldianswer/utils/n;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->h:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/mistergroup/shouldianswer/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_b
    return v2

    :catch_1
    move-exception p1

    .line 237
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_c
    :goto_2
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "menu"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "v"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-super/range {p0 .. p3}, Lorg/mistergroup/shouldianswer/ui/b;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a01a3

    if-ne v2, v3, :cond_5

    .line 262
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/ui/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Landroid/content/ClipboardManager;

    .line 263
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 264
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_2

    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 266
    invoke-static/range {v6 .. v11}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    .line 267
    invoke-static/range {v12 .. v17}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->h:Ljava/lang/String;

    const/16 v2, 0x14

    .line 268
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_1

    goto :goto_1

    :cond_1
    if-lt v2, v5, :cond_2

    .line 269
    sget-object v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->f:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->ordinal()I

    move-result v2

    const v5, 0x7f1000f9

    invoke-interface {v0, v4, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 271
    :cond_2
    :goto_1
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-eqz v3, :cond_5

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->e:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->ordinal()I

    move-result v2

    const v3, 0x7f1000f8

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    .line 262
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 273
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0033

    const/4 v0, 0x0

    .line 61
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/q;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    .line 62
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/q;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/q;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 244
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onDestroy()V

    .line 245
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v0, :cond_0

    const-string v1, "contactsAdapter"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e()V

    .line 186
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    return-void
.end method
