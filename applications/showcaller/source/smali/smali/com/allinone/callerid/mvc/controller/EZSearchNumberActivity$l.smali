.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->X0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 3
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->i1(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Y0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A1()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "searchnumber"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->G0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z

    .line 10
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v3, v3, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 12
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s1()V

    .line 15
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    :goto_0
    const-string v2, "speak_search_number"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const/16 v3, 0x2712

    invoke-virtual {v2, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 21
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    .line 22
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    :cond_2
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l$a;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Z0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C()V

    return-void
.end method
