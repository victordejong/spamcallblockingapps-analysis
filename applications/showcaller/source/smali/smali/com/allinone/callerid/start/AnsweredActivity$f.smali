.class Lcom/allinone/callerid/start/AnsweredActivity$f;
.super Ljava/lang/Object;
.source "AnsweredActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/AnsweredActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/AnsweredActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$f;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->i0()I

    move-result p1

    add-int/2addr p1, v0

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->N1(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$f;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->b0(Lcom/allinone/callerid/start/AnsweredActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_spam"

    const-string v2, "Spam"

    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/start/AnsweredActivity;->c0(Lcom/allinone/callerid/start/AnsweredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$f;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->d0(Lcom/allinone/callerid/start/AnsweredActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$f;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->e0(Lcom/allinone/callerid/start/AnsweredActivity;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$f;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->e0(Lcom/allinone/callerid/start/AnsweredActivity;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$f;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->d0(Lcom/allinone/callerid/start/AnsweredActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/start/AnsweredActivity$f;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method
