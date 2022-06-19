.class final Lcom/callerid/block/util/m0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/m0;->c(Landroid/content/Context;Lcom/callerid/block/search/EZSearchResult;IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callerid/block/search/EZSearchResult;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callerid/block/search/EZSearchResult;JII)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/m0$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/util/m0$c;->b:Lcom/callerid/block/search/EZSearchResult;

    iput-wide p3, p0, Lcom/callerid/block/util/m0$c;->c:J

    iput p5, p0, Lcom/callerid/block/util/m0$c;->d:I

    iput p6, p0, Lcom/callerid/block/util/m0$c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    const/high16 v0, 0x10000000

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/util/m0$c;->a:Landroid/content/Context;

    const-class v2, Lcom/callerid/block/mvc/controller/ReportContactActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/callerid/block/util/m0$c;->b:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "report_number"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/util/m0$c;->b:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_number"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "isshowblock"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/util/m0$c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/util/m0$c;->a:Landroid/content/Context;

    const-class v2, Lcom/callerid/block/start/MissedCallActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/util/m0$c;->b:Lcom/callerid/block/search/EZSearchResult;

    const-string v3, "contact_missed"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-wide v2, p0, Lcom/callerid/block/util/m0$c;->c:J

    const-string v4, "internalDate"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v2, p0, Lcom/callerid/block/util/m0$c;->d:I

    const-string v3, "calltypekey"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Lcom/callerid/block/util/m0$c;->e:I

    const-string v3, "isContact"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/util/m0$c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget p1, p0, Lcom/callerid/block/util/m0$c;->e:I

    if-nez p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "show_missed_dialog_notcontact"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$c;->b:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/util/m0$c;->b:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/util/m0$c;->b:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getReport_count()I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "show_missed_dialog_notcontact_isspam"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
