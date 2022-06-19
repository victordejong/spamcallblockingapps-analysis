.class Lcom/allinone/callerid/g/a$c;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a;->B2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->h2(Lcom/allinone/callerid/g/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/a$c$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/a$c$a;-><init>(Lcom/allinone/callerid/g/a$c;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/j/a;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/j/b;)V

    return-void
.end method
