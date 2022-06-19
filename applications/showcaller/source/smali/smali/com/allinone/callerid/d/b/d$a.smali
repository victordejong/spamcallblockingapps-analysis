.class Lcom/allinone/callerid/d/b/d$a;
.super Ljava/lang/Object;
.source "RewardedAdDb.java"

# interfaces
.implements Lorg/xutils/DbManager$TableCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/b/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/b/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/b/d$a;->a:Lcom/allinone/callerid/d/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableCreated(Lorg/xutils/DbManager;Lorg/xutils/db/table/TableEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
