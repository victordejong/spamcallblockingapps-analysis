.class Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$a;
.super Ljava/lang/Object;
.source "OpenPerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    const/high16 p2, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
