.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a;
.super Ljava/lang/Object;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p2, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z

    :goto_0
    return-void
.end method
