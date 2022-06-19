.class Lcom/allinone/callerid/util/recorder/f$q$a;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f$q;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/util/recorder/f$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/recorder/f$q;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$q$a;->e:Lcom/allinone/callerid/util/recorder/f$q;

    iput-object p2, p0, Lcom/allinone/callerid/util/recorder/f$q$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/util/recorder/f$q$a;->e:Lcom/allinone/callerid/util/recorder/f$q;

    iget-object v1, v1, Lcom/allinone/callerid/util/recorder/f$q;->e:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/util/recorder/f$q$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/f/k/b;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
