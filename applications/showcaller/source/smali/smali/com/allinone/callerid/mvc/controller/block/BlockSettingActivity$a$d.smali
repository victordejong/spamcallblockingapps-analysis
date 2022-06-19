.class Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;
.super Ljava/lang/Object;
.source "BlockSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;->a:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "block_unknown_open"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;->a:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->l0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;->a:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100352

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->Y0(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "block_unknown_close"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;->a:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->l0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;->a:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->Y0(Z)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;->a:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
