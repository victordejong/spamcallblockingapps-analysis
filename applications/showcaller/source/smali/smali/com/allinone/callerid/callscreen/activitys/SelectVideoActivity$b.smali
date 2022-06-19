.class Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$b;
.super Ljava/lang/Object;
.source "SelectVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
