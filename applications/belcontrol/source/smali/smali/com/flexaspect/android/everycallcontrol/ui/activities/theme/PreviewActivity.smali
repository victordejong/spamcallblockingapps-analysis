.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/theme/PreviewActivity;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity<",
        "Lfv0;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/theme/PreviewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/theme/PreviewActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const v0, 0x7f0d0021

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->d:Ljava/lang/Class;

    const v0, 0x7f0a04c5

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->h:I

    return-void
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public final K()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/theme/PreviewActivity;->K()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/theme/PreviewActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lqt0;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->L(Lqt0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->J(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
