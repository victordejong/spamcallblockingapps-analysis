.class Lcom/allinone/callerid/customview/FloatNormalView$c;
.super Ljava/lang/Object;
.source "FloatNormalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/FloatNormalView;->s(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/allinone/callerid/customview/FloatNormalView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/FloatNormalView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$c;->e:Lcom/allinone/callerid/customview/FloatNormalView;

    iput-object p2, p0, Lcom/allinone/callerid/customview/FloatNormalView$c;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$c;->e:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {p1}, Lcom/allinone/callerid/customview/FloatNormalView;->h(Lcom/allinone/callerid/customview/FloatNormalView;)Lcom/allinone/callerid/util/j0;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView$c;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/j0;->c(Landroid/content/Context;)V
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
