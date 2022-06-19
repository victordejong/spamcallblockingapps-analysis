.class Lcom/allinone/callerid/f/k/c$a;
.super Ljava/lang/Object;
.source "RecorderConfigurationDb.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/f/k/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/f/k/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/f/k/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/f/k/c$a;->a:Lcom/allinone/callerid/f/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 1

    .line 1
    const-class v0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    if-eq p3, p2, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->dropTable(Ljava/lang/Class;)V

    .line 4
    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
