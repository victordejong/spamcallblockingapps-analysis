.class Lcom/allinone/callerid/start/CallerActivity$a;
.super Ljava/lang/Object;
.source "CallerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CallerActivity;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/CallerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CallerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$a;->a:Lcom/allinone/callerid/start/CallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->d2(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$a;->a:Lcom/allinone/callerid/start/CallerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/CallerActivity;->Y(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->d2(I)V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/start/CallerActivity$a;->a:Lcom/allinone/callerid/start/CallerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/start/CallerActivity;->Y(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method
