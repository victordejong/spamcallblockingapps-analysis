.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$f;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$f;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$f;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->h0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/i1/a;->t(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$f;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->h0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/util/i1/a;->t(Z)V

    :goto_0
    return-void
.end method
