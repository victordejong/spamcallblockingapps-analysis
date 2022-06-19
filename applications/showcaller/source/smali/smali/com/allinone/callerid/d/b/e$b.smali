.class Lcom/allinone/callerid/d/b/e$b;
.super Ljava/lang/Object;
.source "ShowAnimationDb.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/b/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/b/e$b;->a:Lcom/allinone/callerid/d/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 0

    if-eq p3, p2, :cond_0

    .line 1
    :try_start_0
    const-class p2, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p2

    .line 2
    const-class p3, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {p1, p3}, Lorg/xutils/DbManager;->dropTable(Ljava/lang/Class;)V

    .line 3
    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "wbb"

    const-string p3, "\u6570\u636e\u5e93\u66f4\u65b0\u5931\u8d25"

    .line 4
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
