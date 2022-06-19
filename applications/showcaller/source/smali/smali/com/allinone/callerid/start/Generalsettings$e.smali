.class Lcom/allinone/callerid/start/Generalsettings$e;
.super Ljava/lang/Object;
.source "Generalsettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/Generalsettings;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/Generalsettings;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/Generalsettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/Generalsettings$e;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->S0(I)V

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Lcom/allinone/callerid/util/a1;->k1(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings$e;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-static {v0}, Lcom/allinone/callerid/start/Generalsettings;->Y(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/start/Generalsettings$e;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-static {p2}, Lcom/allinone/callerid/start/Generalsettings;->Z(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/start/Generalsettings$e;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-static {p2}, Lcom/allinone/callerid/start/Generalsettings;->a0(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings$e;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-static {p1}, Lcom/allinone/callerid/start/Generalsettings;->b0(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/start/Generalsettings$e;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000bd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/start/Generalsettings$e;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-static {p2}, Lcom/allinone/callerid/start/Generalsettings;->Y(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method
