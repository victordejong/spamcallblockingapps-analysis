.class Lcom/allinone/callerid/start/AnsweredActivity$i$b;
.super Ljava/lang/Object;
.source "AnsweredActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/AnsweredActivity$i;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/AnsweredActivity$i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/AnsweredActivity$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b;->d:Lcom/allinone/callerid/start/AnsweredActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b;->d:Lcom/allinone/callerid/start/AnsweredActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/start/AnsweredActivity$i;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->g0(Lcom/allinone/callerid/start/AnsweredActivity;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;

    invoke-direct {p2, p0, p1}, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;-><init>(Lcom/allinone/callerid/start/AnsweredActivity$i$b;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V

    :cond_0
    return-void
.end method
