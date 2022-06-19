.class Lcom/allinone/callerid/g/b$c;
.super Ljava/lang/Object;
.source "EZBlockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/b;->v2(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b$c;->d:Lcom/allinone/callerid/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/b$c;->d:Lcom/allinone/callerid/g/b;

    invoke-static {p1}, Lcom/allinone/callerid/g/b;->r2(Lcom/allinone/callerid/g/b;)Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/b$c;->d:Lcom/allinone/callerid/g/b;

    invoke-static {p1}, Lcom/allinone/callerid/g/b;->r2(Lcom/allinone/callerid/g/b;)Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
