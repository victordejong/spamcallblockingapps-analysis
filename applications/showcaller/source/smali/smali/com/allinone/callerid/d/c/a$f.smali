.class Lcom/allinone/callerid/d/c/a$f;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/view/recorder/a;

.field final synthetic e:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;Lcom/allinone/callerid/mvc/view/recorder/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$f;->e:Lcom/allinone/callerid/d/c/a;

    iput-object p2, p0, Lcom/allinone/callerid/d/c/a$f;->d:Lcom/allinone/callerid/mvc/view/recorder/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$f;->e:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->t(Lcom/allinone/callerid/d/c/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {p1}, Lb/h/l/w;->U(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$f;->e:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->r(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object p1

    invoke-static {p1}, Lb/h/l/w;->U(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$f;->d:Lcom/allinone/callerid/mvc/view/recorder/a;

    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$f;->e:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->r(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$f;->e:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->t(Lcom/allinone/callerid/d/c/a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/a;->c(Landroid/view/View;Landroid/view/View;)V

    .line 3
    :cond_0
    new-instance p1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;-><init>()V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    const-string v0, ""

    .line 5
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$f;->e:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->q(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x6f

    .line 7
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/service/b;->k(Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/a1;->o2()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$f;->e:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->E0(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "speaker_tip_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->F2(Ljava/lang/Boolean;)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "recorder_floatingball_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
