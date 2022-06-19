.class public final Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SettingsAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;
    }
.end annotation


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

.field private c:Lorg/mistergroup/shouldianswer/a/cy;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    .line 31
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/model/UserAccount;->a:Lorg/mistergroup/shouldianswer/model/UserAccount;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/UserAccount;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->f:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->f:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->e:Z

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Lorg/mistergroup/shouldianswer/a/cy;
    .locals 1

    .line 27
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final d()V
    .locals 9

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->d:Z

    .line 197
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->H()Ljava/lang/String;

    move-result-object v1

    .line 198
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 199
    :goto_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    const-string v4, "binding"

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cy;->r:Landroid/widget/LinearLayout;

    const-string v5, "binding.llAccountInfo"

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    if-eqz v0, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cy;->u:Landroid/widget/LinearLayout;

    const-string v7, "binding.llInitialSelection"

    invoke-static {v2, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_4

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    sget-object v8, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    if-ne v7, v8, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v6

    :goto_2
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v2, :cond_5

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cy;->t:Landroid/widget/LinearLayout;

    const-string v7, "binding.llCreateAccount"

    invoke-static {v2, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_6

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    sget-object v8, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    if-ne v7, v8, :cond_6

    move v7, v3

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v2, :cond_7

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cy;->s:Landroid/widget/LinearLayout;

    const-string v7, "binding.llConnectAccount"

    invoke-static {v2, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    if-ne v0, v7, :cond_8

    move v6, v3

    :cond_8
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cy;->p:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->g:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v0, :cond_a

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cy;->r:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 207
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v0, :cond_b

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cy;->x:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvUserID"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_c
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->L()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    const-string v5, "binding.tvLastSynchronization"

    if-eqz v2, :cond_e

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/MyApp;->a()Ljava/text/DateFormat;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/MyApp;->b()Ljava/text/DateFormat;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v1, :cond_d

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/cy;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 214
    :cond_e
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v0, :cond_f

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cy;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100180

    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_4
    iput-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->d:Z

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->d()V

    return-void
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->e:Z

    return p0
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    const-string p2, "binding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->i:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$b;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->f:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->k:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->l:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$f;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->d:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$g;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->g:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$h;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_6

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->e:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$i;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_7

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->h:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$j;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_8

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->m:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_9

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->j:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->d()V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cy;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0002

    .line 227
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 228
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0069

    const/4 v0, 0x0

    .line 44
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/cy;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    .line 45
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c:Lorg/mistergroup/shouldianswer/a/cy;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/cy;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0031

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f100135

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.help_url_data_backup_how_to)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 222
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 223
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->d()V

    return-void
.end method
