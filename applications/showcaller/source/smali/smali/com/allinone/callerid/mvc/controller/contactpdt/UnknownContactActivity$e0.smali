.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->R0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->S0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->T0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 4
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v3}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v3}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v3}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v3}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v4, v6}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    .line 7
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 9
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->S0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->T0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
