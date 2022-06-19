.class Lcom/allinone/callerid/util/h1$c;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/h1;->E0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/h1$c;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/h1;->d()Lcom/allinone/callerid/customview/d;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/util/h1$c;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/d;->c(Landroid/content/Context;)V

    return-void
.end method
