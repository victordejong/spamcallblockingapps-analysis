.class Lcom/allinone/callerid/start/GuideActivity$b;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/GuideActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/GuideActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/GuideActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$b;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$b;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/GuideActivity;->Y(Lcom/allinone/callerid/start/GuideActivity;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "seleck_language_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
