.class Lcom/allinone/callerid/h/c$m;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->E0(Landroid/view/View;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/view/recorder/a;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;Lcom/allinone/callerid/mvc/view/recorder/a;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$m;->g:Lcom/allinone/callerid/h/c;

    iput-object p2, p0, Lcom/allinone/callerid/h/c$m;->d:Lcom/allinone/callerid/mvc/view/recorder/a;

    iput-object p3, p0, Lcom/allinone/callerid/h/c$m;->e:Ljava/lang/String;

    iput p4, p0, Lcom/allinone/callerid/h/c$m;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/h/c$m;->g:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->w0(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lb/h/l/w;->U(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/h/c$m;->g:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->u0(Lcom/allinone/callerid/h/c;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object p1

    invoke-static {p1}, Lb/h/l/w;->U(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/h/c$m;->d:Lcom/allinone/callerid/mvc/view/recorder/a;

    iget-object v0, p0, Lcom/allinone/callerid/h/c$m;->g:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->u0(Lcom/allinone/callerid/h/c;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/h/c$m;->g:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->w0(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/a;->c(Landroid/view/View;Landroid/view/View;)V

    .line 3
    :cond_0
    new-instance p1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/h/c$m;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/allinone/callerid/h/c$m;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x6e

    .line 6
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x6f

    .line 7
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    .line 8
    :goto_0
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
    iget-object p1, p0, Lcom/allinone/callerid/h/c$m;->g:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

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
