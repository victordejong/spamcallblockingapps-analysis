.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->X(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->l0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;Lcom/allinone/callerid/customview/AppBarStateChangeListener;)Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->G0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->G0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->b(Lcom/google/android/material/appbar/AppBarLayout$d;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->H0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    .line 7
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->K0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    return-void
.end method
