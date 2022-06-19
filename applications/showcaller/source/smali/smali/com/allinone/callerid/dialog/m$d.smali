.class Lcom/allinone/callerid/dialog/m$d;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->e(Landroid/content/Context;Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/l/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/appcompat/app/a;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$d;->d:Landroidx/appcompat/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$d;->d:Landroidx/appcompat/app/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
