.class Lcom/allinone/callerid/g/e$q$b;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e$q;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/e$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e$q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$q$b;->d:Lcom/allinone/callerid/g/e$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/e$q$b;->d:Lcom/allinone/callerid/g/e$q;

    iget-object p1, p1, Lcom/allinone/callerid/g/e$q;->a:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/allinone/callerid/g/e$q$b$a;

    invoke-direct {p2, p0, p1}, Lcom/allinone/callerid/g/e$q$b$a;-><init>(Lcom/allinone/callerid/g/e$q$b;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V

    :cond_0
    return-void
.end method
