.class Lcom/allinone/callerid/g/e$e;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->a3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->k0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->x2(Lcom/allinone/callerid/g/e;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    new-instance p1, Lcom/allinone/callerid/g/e$e$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/g/e$e$a;-><init>(Lcom/allinone/callerid/g/e$e;)V

    invoke-static {p1}, Lcom/allinone/callerid/i/a/g/i;->a(Lcom/allinone/callerid/i/a/g/h;)V

    :cond_0
    return-void
.end method
