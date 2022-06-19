.class Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$d;
.super Ljava/lang/Object;
.source "OpenPerActivity.java"

# interfaces
.implements Lcom/allinone/callerid/util/j1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$d;->a:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_sdcard_per_open"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
