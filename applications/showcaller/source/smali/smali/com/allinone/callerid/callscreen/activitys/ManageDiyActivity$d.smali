.class Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$d;
.super Ljava/lang/Object;
.source "ManageDiyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->j0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
