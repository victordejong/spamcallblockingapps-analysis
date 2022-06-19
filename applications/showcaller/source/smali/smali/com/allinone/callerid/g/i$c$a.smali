.class Lcom/allinone/callerid/g/i$c$a;
.super Ljava/lang/Object;
.source "UnknownContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/i$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/g/i$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/i$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/i$c$a;->e:Lcom/allinone/callerid/g/i$c;

    iput p2, p0, Lcom/allinone/callerid/g/i$c$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/allinone/callerid/g/i$c$a;->d:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/i$c$a;->e:Lcom/allinone/callerid/g/i$c;

    iget-object v0, v0, Lcom/allinone/callerid/g/i$c;->d:Lcom/allinone/callerid/g/i;

    invoke-static {v0}, Lcom/allinone/callerid/g/i;->i2(Lcom/allinone/callerid/g/i;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
