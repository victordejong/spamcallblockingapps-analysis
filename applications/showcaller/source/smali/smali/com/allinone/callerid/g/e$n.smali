.class Lcom/allinone/callerid/g/e$n;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->g3()V
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
    iput-object p1, p0, Lcom/allinone/callerid/g/e$n;->d:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e$n;->d:Lcom/allinone/callerid/g/e;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/e;->k2(Lcom/allinone/callerid/g/e;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$n;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->m2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/e$n;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->l2(Lcom/allinone/callerid/g/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e$n;->d:Lcom/allinone/callerid/g/e;

    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->e3()V

    return-void
.end method
