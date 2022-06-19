.class public Lcom/allinone/callerid/start/BlockedHangupActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "BlockedHangupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Lcom/allinone/callerid/search/EZSearchResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "BlockedHangupActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->u:Ljava/lang/String;

    return-void
.end method

.method private C()V
    .locals 4

    const v0, 0x7f090364

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0901e1

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906f1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09066d

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090796

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10037e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901e1

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    if-eq p1, v0, :cond_1

    const v0, 0x7f090364

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "blocked_dialog_details"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    new-instance v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v0}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->i1(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getTel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 14
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 16
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 17
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "contact_tony"

    .line 22
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060121

    .line 2
    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/h1;->C0(Landroid/app/Activity;I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "contact_missed"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/EZSearchResult;

    iput-object p1, p0, Lcom/allinone/callerid/start/BlockedHangupActivity;->v:Lcom/allinone/callerid/search/EZSearchResult;

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "blocked_dialog_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const p1, 0x7f0c002a

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/allinone/callerid/start/BlockedHangupActivity;->C()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

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
