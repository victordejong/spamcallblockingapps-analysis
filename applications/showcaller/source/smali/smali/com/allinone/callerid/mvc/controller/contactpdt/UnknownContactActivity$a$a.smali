.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;
.super Lcom/allinone/callerid/customview/AppBarStateChangeListener;
.source "UnknownContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    invoke-direct {p0}, Lcom/allinone/callerid/customview/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/material/appbar/AppBarLayout;Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;)V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "tony"

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object p1, Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;->d:Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x8

    const-string v1, ""

    const/4 v2, 0x0

    if-ne p2, p1, :cond_4

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->U0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 11
    :cond_4
    sget-object p1, Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;->e:Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_9

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1

    const/4 p2, 0x4

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->U0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 19
    :cond_9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->U0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 25
    :cond_c
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_3
    return-void
.end method
