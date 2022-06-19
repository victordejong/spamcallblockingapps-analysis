.class Lcom/allinone/callerid/b/z/f$e$a;
.super Ljava/lang/Object;
.source "RecordListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/f$e;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/b/z/f$e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/f$e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/f$e$a;->e:Lcom/allinone/callerid/b/z/f$e;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/f$e$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/z/f$e$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/k/b;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/b/z/f$e$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
