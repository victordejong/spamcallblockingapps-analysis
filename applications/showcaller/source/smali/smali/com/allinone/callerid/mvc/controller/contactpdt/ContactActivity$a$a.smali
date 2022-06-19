.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;
.super Lcom/allinone/callerid/customview/AppBarStateChangeListener;
.source "ContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    invoke-direct {p0}, Lcom/allinone/callerid/customview/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/material/appbar/AppBarLayout;Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;->d:Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->F0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;->e:Lcom/allinone/callerid/customview/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->F0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->F0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
