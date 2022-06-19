.class Lcom/allinone/callerid/f/k/b$a;
.super Ljava/lang/Object;
.source "RecordCallDb.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/f/k/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/f/k/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/f/k/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/f/k/b$a;->a:Lcom/allinone/callerid/f/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 0

    if-eq p3, p2, :cond_0

    .line 1
    :try_start_0
    const-class p2, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p2

    .line 2
    const-class p3, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-interface {p1, p3}, Lorg/xutils/DbManager;->dropTable(Ljava/lang/Class;)V

    .line 3
    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
