.class public Lcom/mglab/scm/intro/IntroActivity;
.super Lf/j;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# static fields
.field public static p:Z = false

.field public static q:Z = false

.field public static r:Z = false

.field public static s:I = 0x0

.field public static t:I = 0x0

.field public static u:I = 0x0

.field public static v:Ljava/lang/String; = null

.field public static w:Z = false

.field public static x:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public back:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public intro_bar_linear_layout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public final n:Lea/b;

.field public next:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public final o:Lea/b;

.field public progress1:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public progress2:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public progress3:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public progress4:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public progress5:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/j;-><init>()V

    .line 2
    new-instance v0, Lcom/mglab/scm/intro/IntroActivity$a;

    invoke-direct {v0, p0}, Lcom/mglab/scm/intro/IntroActivity$a;-><init>(Lcom/mglab/scm/intro/IntroActivity;)V

    iput-object v0, p0, Lcom/mglab/scm/intro/IntroActivity;->n:Lea/b;

    .line 3
    new-instance v0, Lcom/mglab/scm/intro/IntroActivity$b;

    invoke-direct {v0, p0}, Lcom/mglab/scm/intro/IntroActivity$b;-><init>(Lcom/mglab/scm/intro/IntroActivity;)V

    iput-object v0, p0, Lcom/mglab/scm/intro/IntroActivity;->o:Lea/b;

    return-void
.end method

.method public static v()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mglab/scm/intro/IntroActivity;->q:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/mglab/scm/intro/IntroActivity;->p:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    if-nez v0, :cond_1

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->s:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    :cond_1
    sget-boolean v0, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public backClick()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lj8/a;

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/mglab/scm/intro/Intro4;

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Lcom/mglab/scm/intro/Intro3;

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, v0, Lcom/mglab/scm/intro/Intro2;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, v2}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v0, v0, Lcom/mglab/scm/intro/Intro1;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 13
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public nextClick()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/mglab/scm/intro/Intro1;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto/16 :goto_1

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/mglab/scm/intro/Intro2;

    const/16 v2, 0x17

    if-eqz v1, :cond_3

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    const-string v1, "android.permission.READ_CALL_LOG"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.CALL_PHONE"

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_1

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 6
    filled-new-array {v0, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/mglab/scm/intro/IntroActivity;->n:Lea/b;

    invoke-static {p0, v0, v1}, Lea/a;->a(Landroid/app/Activity;[Ljava/lang/String;Lea/b;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, v0}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh8/q;->C(Landroid/content/Context;)V

    goto :goto_1

    .line 11
    :cond_3
    instance-of v1, v0, Lcom/mglab/scm/intro/Intro3;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    const-string v0, "android.permission.READ_CONTACTS"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/mglab/scm/intro/IntroActivity;->o:Lea/b;

    invoke-static {p0, v0, v1}, Lea/a;->a(Landroid/app/Activity;[Ljava/lang/String;Lea/b;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    .line 15
    invoke-virtual {p0, v0}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    .line 16
    new-instance v0, Lh8/q;

    invoke-direct {v0}, Lh8/q;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, v3}, Lh8/q;->B(Landroid/content/Context;Z)V

    goto :goto_1

    .line 18
    :cond_5
    instance-of v1, v0, Lcom/mglab/scm/intro/Intro4;

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    .line 19
    invoke-virtual {p0, v0}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto :goto_1

    .line 20
    :cond_6
    instance-of v0, v0, Lj8/a;

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fstart"

    .line 22
    invoke-static {v0, v1, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mglab/scm/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/o;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/intro/IntroActivity;->backClick()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lba/b;->k(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lea/a;->b(Landroid/content/Context;)V

    const p1, 0x7f0c001c

    .line 5
    invoke-virtual {p0, p1}, Lf/j;->setContentView(I)V

    .line 6
    sget-object p1, Lbutterknife/ButterKnife;->a:Ljava/util/Map;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 9
    sget-object p1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {p1}, Lf8/h;->x(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    .line 10
    sget-object p1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {p1}, Lf8/h;->x(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    sget-object p1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->v(Landroid/content/Context;)V

    .line 12
    sget-object p1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Lcom/mglab/scm/intro/IntroActivity;->u()V

    :cond_0
    const/4 p1, 0x0

    .line 14
    sput-boolean p1, Lcom/mglab/scm/intro/IntroActivity;->p:Z

    .line 15
    sput-boolean p1, Lcom/mglab/scm/intro/IntroActivity;->q:Z

    .line 16
    sput-boolean p1, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    .line 17
    sput p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    .line 18
    sput p1, Lcom/mglab/scm/intro/IntroActivity;->t:I

    .line 19
    sput p1, Lcom/mglab/scm/intro/IntroActivity;->u:I

    .line 20
    sput-boolean p1, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    const p1, 0x7f1101e2

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 22
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 23
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lba/b;->k(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lf/j;->onDestroy()V

    return-void
.end method

.method public onMessageEvent(Lk8/q;)V
    .locals 9
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget v0, p1, Lk8/q;->a:I

    const/4 v1, -0x5

    const-string v2, ")"

    const-string v3, "("

    const-string v4, ".. "

    const/4 v5, 0x3

    const/4 v6, 0x0

    const v7, 0x7f1101ef

    const/4 v8, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, -0x4

    if-eq v0, v1, :cond_10

    const/4 v1, -0x3

    if-eq v0, v1, :cond_e

    const/4 v1, -0x2

    if-eq v0, v1, :cond_c

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x14

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget p1, p1, Lk8/q;->b:I

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->t:I

    if-le p1, v0, :cond_1

    .line 3
    sput p1, Lcom/mglab/scm/intro/IntroActivity;->t:I

    .line 4
    :cond_1
    sget-boolean p1, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    if-eqz p1, :cond_14

    .line 5
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->t:I

    sput p1, Lcom/mglab/scm/intro/IntroActivity;->u:I

    goto/16 :goto_0

    .line 6
    :cond_2
    sput-boolean v8, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    .line 7
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->t:I

    sput p1, Lcom/mglab/scm/intro/IntroActivity;->u:I

    const p1, 0x7f1101e1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 9
    sput-boolean v6, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object p1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->v(Landroid/content/Context;)V

    .line 11
    sget-object p1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lcom/mglab/scm/intro/IntroActivity;->u()V

    .line 13
    invoke-virtual {p0, v8}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->u:I

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->t:I

    if-ge p1, v0, :cond_6

    add-int/2addr p1, v8

    .line 16
    sput p1, Lcom/mglab/scm/intro/IntroActivity;->u:I

    :cond_6
    const p1, 0x7f1101e8

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 18
    :cond_7
    sput-boolean v8, Lcom/mglab/scm/intro/IntroActivity;->q:Z

    goto/16 :goto_0

    .line 19
    :cond_8
    sput-boolean v8, Lcom/mglab/scm/intro/IntroActivity;->p:Z

    goto/16 :goto_0

    .line 20
    :cond_9
    sput-boolean v8, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    .line 21
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v8}, Lcom/mglab/scm/intro/IntroActivity;->x(Z)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    const p1, 0x7f1101eb

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 25
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    add-int/2addr p1, v8

    sput p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    if-gt p1, v5, :cond_b

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->s:I

    invoke-static {p1, v0, v2}, La6/h;->l(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 28
    :cond_b
    sput-boolean v6, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    goto/16 :goto_0

    :cond_c
    const p1, 0x7f1101ec

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 30
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    add-int/2addr p1, v8

    sput p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    if-gt p1, v5, :cond_d

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->s:I

    invoke-static {p1, v0, v2}, La6/h;->l(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 33
    :cond_d
    sput-boolean v6, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    goto/16 :goto_0

    :cond_e
    const p1, 0x7f1101e7

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 35
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    add-int/2addr p1, v8

    sput p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    if-gt p1, v5, :cond_f

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->s:I

    invoke-static {p1, v0, v2}, La6/h;->l(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 38
    :cond_f
    sput-boolean v6, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    goto :goto_0

    :cond_10
    const p1, 0x7f1101ed

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 40
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    add-int/2addr p1, v8

    sput p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    if-gt p1, v5, :cond_11

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->s:I

    invoke-static {p1, v0, v2}, La6/h;->l(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 43
    :cond_11
    sput-boolean v6, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    goto :goto_0

    :cond_12
    const p1, 0x7f1101f0

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 45
    sget p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    add-int/2addr p1, v8

    sput p1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    if-gt p1, v5, :cond_13

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/mglab/scm/intro/IntroActivity;->s:I

    invoke-static {p1, v0, v2}, La6/h;->l(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    .line 48
    :cond_13
    sput-boolean v6, Lcom/mglab/scm/intro/IntroActivity;->w:Z

    .line 49
    :cond_14
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object p1

    const v0, 0x7f090177

    invoke-virtual {p1, v0}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 50
    instance-of p1, p1, Lcom/mglab/scm/intro/Intro4;

    invoke-virtual {p0, p1}, Lcom/mglab/scm/intro/IntroActivity;->x(Z)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/j;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-static {p1, p3}, Lea/a;->c(I[I)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/o;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {v1}, Lf8/h;->x(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v0, v0, Lj8/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v1, v0}, La6/d;->f(ILba/b;)V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 7

    .line 1
    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v1, "psetcreatebasepresets"

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v1, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 6
    const-class v1, Lh8/u;

    .line 7
    new-instance v4, Lw8/g;

    invoke-direct {v4, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v4}, Lw8/e;->i()Lc9/g;

    .line 9
    new-instance v0, Lh8/u;

    invoke-direct {v0}, Lh8/u;-><init>()V

    .line 10
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetonoff"

    .line 11
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 12
    iput-boolean v1, v0, Lh8/u;->d:Z

    const-string v1, "BASE"

    .line 13
    iput-object v1, v0, Lh8/u;->c:Ljava/lang/String;

    .line 14
    iput v3, v0, Lh8/u;->e:I

    .line 15
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetusesim1"

    .line 16
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 17
    iput-boolean v1, v0, Lh8/u;->f:Z

    .line 18
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetusesim2"

    .line 19
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 20
    iput-boolean v1, v0, Lh8/u;->g:Z

    .line 21
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetusedb"

    .line 22
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    iput-boolean v1, v0, Lh8/u;->h:Z

    .line 24
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetusebl"

    .line 25
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 26
    iput-boolean v1, v0, Lh8/u;->i:Z

    .line 27
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetusewl"

    .line 28
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    iput-boolean v1, v0, Lh8/u;->j:Z

    .line 30
    iput-boolean v3, v0, Lh8/u;->m:Z

    .line 31
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    invoke-static {v1}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "psetusecontacts"

    .line 32
    invoke-static {v1, v5, v4}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    iput-boolean v1, v0, Lh8/u;->k:Z

    .line 34
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetblockallexceptcontacts"

    .line 35
    invoke-static {v1, v4, v3}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    iput-boolean v1, v0, Lh8/u;->l:Z

    .line 37
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetblh"

    .line 38
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    iput-boolean v1, v0, Lh8/u;->n:Z

    .line 40
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetbf"

    .line 41
    invoke-static {v1, v4, v3}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 42
    iput-boolean v1, v0, Lh8/u;->o:Z

    .line 43
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psetdelblock"

    .line 44
    invoke-static {v1, v4, v3}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    iput-boolean v1, v0, Lh8/u;->p:Z

    .line 46
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const-string v4, "psshownotif"

    .line 47
    invoke-static {v1, v4, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 48
    iput-boolean v1, v0, Lh8/u;->q:Z

    .line 49
    iput-boolean v3, v0, Lh8/u;->r:Z

    .line 50
    iput-boolean v2, v0, Lh8/u;->s:Z

    .line 51
    iput-boolean v2, v0, Lh8/u;->t:Z

    .line 52
    iput-boolean v2, v0, Lh8/u;->u:Z

    .line 53
    iput-boolean v2, v0, Lh8/u;->v:Z

    .line 54
    iput-boolean v2, v0, Lh8/u;->w:Z

    .line 55
    iput-boolean v2, v0, Lh8/u;->x:Z

    .line 56
    iput-boolean v2, v0, Lh8/u;->y:Z

    const-string v1, "00:00"

    .line 57
    iput-object v1, v0, Lh8/u;->z:Ljava/lang/String;

    const-string v4, "23:59"

    .line 58
    iput-object v4, v0, Lh8/u;->A:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 60
    new-instance v0, Lh8/u;

    invoke-direct {v0}, Lh8/u;-><init>()V

    .line 61
    sget-object v5, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const v6, 0x7f110195

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lh8/u;->c:Ljava/lang/String;

    .line 62
    iput-boolean v3, v0, Lh8/u;->d:Z

    .line 63
    iput v2, v0, Lh8/u;->e:I

    .line 64
    iput-boolean v2, v0, Lh8/u;->f:Z

    .line 65
    iput-boolean v2, v0, Lh8/u;->g:Z

    .line 66
    iput-boolean v2, v0, Lh8/u;->h:Z

    .line 67
    iput-boolean v2, v0, Lh8/u;->i:Z

    .line 68
    iput-boolean v2, v0, Lh8/u;->j:Z

    .line 69
    iput-boolean v3, v0, Lh8/u;->m:Z

    .line 70
    iput-boolean v2, v0, Lh8/u;->k:Z

    .line 71
    iput-boolean v2, v0, Lh8/u;->l:Z

    .line 72
    iput-boolean v3, v0, Lh8/u;->n:Z

    .line 73
    iput-boolean v3, v0, Lh8/u;->o:Z

    .line 74
    iput-boolean v3, v0, Lh8/u;->p:Z

    .line 75
    iput-boolean v2, v0, Lh8/u;->q:Z

    .line 76
    iput-boolean v2, v0, Lh8/u;->r:Z

    .line 77
    iput-boolean v3, v0, Lh8/u;->s:Z

    .line 78
    iput-boolean v3, v0, Lh8/u;->t:Z

    .line 79
    iput-boolean v3, v0, Lh8/u;->u:Z

    .line 80
    iput-boolean v3, v0, Lh8/u;->v:Z

    .line 81
    iput-boolean v3, v0, Lh8/u;->w:Z

    .line 82
    iput-boolean v2, v0, Lh8/u;->x:Z

    .line 83
    iput-boolean v2, v0, Lh8/u;->y:Z

    .line 84
    iput-object v1, v0, Lh8/u;->z:Ljava/lang/String;

    .line 85
    iput-object v4, v0, Lh8/u;->A:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 87
    new-instance v0, Lh8/u;

    invoke-direct {v0}, Lh8/u;-><init>()V

    .line 88
    sget-object v5, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const v6, 0x7f110196

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lh8/u;->c:Ljava/lang/String;

    .line 89
    iput-boolean v3, v0, Lh8/u;->d:Z

    const/4 v5, 0x2

    .line 90
    iput v5, v0, Lh8/u;->e:I

    .line 91
    iput-boolean v3, v0, Lh8/u;->f:Z

    .line 92
    iput-boolean v2, v0, Lh8/u;->g:Z

    .line 93
    iput-boolean v2, v0, Lh8/u;->h:Z

    .line 94
    iput-boolean v2, v0, Lh8/u;->i:Z

    .line 95
    iput-boolean v2, v0, Lh8/u;->j:Z

    .line 96
    iput-boolean v2, v0, Lh8/u;->m:Z

    .line 97
    iput-boolean v2, v0, Lh8/u;->k:Z

    .line 98
    iput-boolean v3, v0, Lh8/u;->l:Z

    .line 99
    iput-boolean v3, v0, Lh8/u;->n:Z

    .line 100
    iput-boolean v3, v0, Lh8/u;->o:Z

    .line 101
    iput-boolean v3, v0, Lh8/u;->p:Z

    .line 102
    iput-boolean v2, v0, Lh8/u;->q:Z

    .line 103
    iput-boolean v2, v0, Lh8/u;->r:Z

    .line 104
    iput-boolean v2, v0, Lh8/u;->s:Z

    .line 105
    iput-boolean v2, v0, Lh8/u;->t:Z

    .line 106
    iput-boolean v2, v0, Lh8/u;->u:Z

    .line 107
    iput-boolean v2, v0, Lh8/u;->v:Z

    .line 108
    iput-boolean v2, v0, Lh8/u;->w:Z

    .line 109
    iput-boolean v2, v0, Lh8/u;->x:Z

    .line 110
    iput-boolean v2, v0, Lh8/u;->y:Z

    .line 111
    iput-object v1, v0, Lh8/u;->z:Ljava/lang/String;

    .line 112
    iput-object v4, v0, Lh8/u;->A:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 114
    new-instance v0, Lh8/u;

    invoke-direct {v0}, Lh8/u;-><init>()V

    .line 115
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    const v4, 0x7f110197

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh8/u;->c:Ljava/lang/String;

    .line 116
    iput-boolean v3, v0, Lh8/u;->d:Z

    const/4 v1, 0x3

    .line 117
    iput v1, v0, Lh8/u;->e:I

    .line 118
    iput-boolean v2, v0, Lh8/u;->f:Z

    .line 119
    iput-boolean v2, v0, Lh8/u;->g:Z

    .line 120
    iput-boolean v2, v0, Lh8/u;->h:Z

    .line 121
    iput-boolean v2, v0, Lh8/u;->i:Z

    .line 122
    iput-boolean v2, v0, Lh8/u;->j:Z

    .line 123
    iput-boolean v3, v0, Lh8/u;->m:Z

    .line 124
    iput-boolean v2, v0, Lh8/u;->k:Z

    .line 125
    iput-boolean v3, v0, Lh8/u;->l:Z

    .line 126
    iput-boolean v2, v0, Lh8/u;->n:Z

    .line 127
    iput-boolean v2, v0, Lh8/u;->o:Z

    .line 128
    iput-boolean v3, v0, Lh8/u;->p:Z

    .line 129
    iput-boolean v3, v0, Lh8/u;->q:Z

    .line 130
    iput-boolean v2, v0, Lh8/u;->r:Z

    .line 131
    iput-boolean v2, v0, Lh8/u;->s:Z

    .line 132
    iput-boolean v2, v0, Lh8/u;->t:Z

    .line 133
    iput-boolean v2, v0, Lh8/u;->u:Z

    .line 134
    iput-boolean v2, v0, Lh8/u;->v:Z

    .line 135
    iput-boolean v2, v0, Lh8/u;->w:Z

    .line 136
    iput-boolean v2, v0, Lh8/u;->x:Z

    .line 137
    iput-boolean v2, v0, Lh8/u;->y:Z

    const-string v1, "23:00"

    .line 138
    iput-object v1, v0, Lh8/u;->z:Ljava/lang/String;

    const-string v1, "07:00"

    .line 139
    iput-object v1, v0, Lh8/u;->A:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Lb9/a;->a()Z

    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/a0;)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0x7f090177

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v8, Lj8/a;

    invoke-direct {v8}, Lj8/a;-><init>()V

    .line 4
    invoke-virtual {v1, v6, v8, v7}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v8, Lcom/mglab/scm/intro/Intro4;

    invoke-direct {v8}, Lcom/mglab/scm/intro/Intro4;-><init>()V

    .line 7
    invoke-virtual {v1, v6, v8, v7}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v8, Lcom/mglab/scm/intro/Intro3;

    invoke-direct {v8}, Lcom/mglab/scm/intro/Intro3;-><init>()V

    .line 10
    invoke-virtual {v1, v6, v8, v7}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()V

    goto :goto_0

    .line 12
    :cond_3
    new-instance v8, Lcom/mglab/scm/intro/Intro2;

    invoke-direct {v8}, Lcom/mglab/scm/intro/Intro2;-><init>()V

    .line 13
    invoke-virtual {v1, v6, v8, v7}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 14
    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()V

    goto :goto_0

    .line 15
    :cond_4
    new-instance v8, Lcom/mglab/scm/intro/Intro1;

    invoke-direct {v8}, Lcom/mglab/scm/intro/Intro1;-><init>()V

    .line 16
    invoke-virtual {v1, v6, v8, v7}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()V

    goto :goto_0

    .line 18
    :cond_5
    new-instance v8, Lj8/b;

    invoke-direct {v8}, Lj8/b;-><init>()V

    .line 19
    invoke-virtual {v1, v6, v8, v7}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()V

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/mglab/scm/intro/IntroActivity;->intro_bar_linear_layout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    if-nez p1, :cond_6

    const/16 v8, 0x8

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_d

    .line 22
    invoke-virtual {p0}, Lf/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v8, "android:drawable/radiobutton_off_background"

    invoke-virtual {v1, v8, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 23
    invoke-virtual {p0}, Lf/j;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "android:drawable/radiobutton_on_background"

    invoke-virtual {v8, v9, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 24
    iget-object v8, p0, Lcom/mglab/scm/intro/IntroActivity;->progress1:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v8, p0, Lcom/mglab/scm/intro/IntroActivity;->progress2:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object v8, p0, Lcom/mglab/scm/intro/IntroActivity;->progress3:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v8, p0, Lcom/mglab/scm/intro/IntroActivity;->progress4:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v8, p0, Lcom/mglab/scm/intro/IntroActivity;->progress5:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    iget-object v1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    const v8, 0x7f1100fe

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    if-ne p1, v2, :cond_7

    const/4 v6, 0x1

    .line 30
    :cond_7
    invoke-virtual {p0, v6}, Lcom/mglab/scm/intro/IntroActivity;->x(Z)V

    .line 31
    iget-object v1, p0, Lcom/mglab/scm/intro/IntroActivity;->back:Landroid/widget/TextView;

    const v6, 0x7f1100fb

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    if-eq p1, v5, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v0, :cond_8

    goto :goto_2

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->progress5:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    const v0, 0x7f1100fd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 34
    :cond_9
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->progress4:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->progress3:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 36
    :cond_b
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->progress2:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 37
    :cond_c
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->progress1:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->back:Landroid/widget/TextView;

    const v0, 0x7f1100fc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    :goto_2
    return-void
.end method

.method public final x(Z)V
    .locals 2

    const v0, 0x7f06005e

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/mglab/scm/intro/IntroActivity;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060059

    invoke-static {v0, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    :goto_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/p;

    const-string v1, "from IntroActivity"

    invoke-direct {v0, v1}, Lk8/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
