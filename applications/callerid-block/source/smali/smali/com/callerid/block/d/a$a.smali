.class Lcom/callerid/block/d/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/d/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/callerid/block/d/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lcom/lidroid/xutils/DbUtils;II)V
    .locals 1

    const-class v0, Lcom/callerid/block/bean/AdContent;

    if-eq p3, p2, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lidroid/xutils/DbUtils;->findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/DbUtils;->dropTable(Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/lidroid/xutils/DbUtils;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
