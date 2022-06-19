.class Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$e;
.super Ljava/lang/Object;
.source "OverlayPerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$e;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "over_per_dialig_cancel"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    return-void
.end method
