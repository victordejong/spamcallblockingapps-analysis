.class Lcom/allinone/callerid/util/b1$a;
.super Ljava/lang/Object;
.source "SimcardUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/b1$a;->d:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/util/b1$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/util/b1$a;->d:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->k1(Z)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/util/b1$a;->d:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->k1(Z)V

    :goto_0
    return-void
.end method
