.class Lcom/allinone/callerid/d/b/a$a;
.super Ljava/lang/Object;
.source "ActionDb.java"

# interfaces
.implements Lorg/xutils/DbManager$DbOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/b/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/b/a$a;->a:Lcom/allinone/callerid/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDbOpened(Lorg/xutils/DbManager;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/xutils/DbManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method
