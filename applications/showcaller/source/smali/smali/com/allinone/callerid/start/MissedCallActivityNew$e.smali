.class Lcom/allinone/callerid/start/MissedCallActivityNew$e;
.super Ljava/lang/Object;
.source "MissedCallActivityNew.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/MissedCallActivityNew;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/MissedCallActivityNew;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$e;->a:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$e;->a:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->a0(Lcom/allinone/callerid/start/MissedCallActivityNew;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getDate()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    const-string v4, " "

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$e;->a:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->b0(Lcom/allinone/callerid/start/MissedCallActivityNew;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/allinone/callerid/util/i;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$e;->a:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$e;->a:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->b0(Lcom/allinone/callerid/start/MissedCallActivityNew;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/allinone/callerid/util/i;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$e;->a:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001b5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
