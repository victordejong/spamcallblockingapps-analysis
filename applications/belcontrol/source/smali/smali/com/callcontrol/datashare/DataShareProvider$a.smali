.class public Lcom/callcontrol/datashare/DataShareProvider$a;
.super Lcom/callcontrol/datashare/DataShareProvider$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callcontrol/datashare/DataShareProvider;->d(Landroid/net/Uri;Lq71$e;[Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li91;

.field public final synthetic b:Ln91$b;


# direct methods
.method public constructor <init>(Lcom/callcontrol/datashare/DataShareProvider;Li91;Ln91$b;)V
    .locals 0

    iput-object p2, p0, Lcom/callcontrol/datashare/DataShareProvider$a;->a:Li91;

    iput-object p3, p0, Lcom/callcontrol/datashare/DataShareProvider$a;->b:Ln91$b;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/callcontrol/datashare/DataShareProvider$c;-><init>(Lcom/callcontrol/datashare/DataShareProvider;Lcom/callcontrol/datashare/DataShareProvider$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lw61;

    invoke-direct {v0}, Lw61;-><init>()V

    iget-object v1, p0, Lcom/callcontrol/datashare/DataShareProvider$a;->a:Li91;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw61;->c(Li91;Z)V

    :try_start_0
    invoke-static {v0}, Lk61;->o(Lw61;)Lw61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object v0, v0, Lw61;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Lw61$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw61$b;

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/callcontrol/datashare/DataShareProvider$a;->b:Ln91$b;

    aget-object v3, v0, v2

    iget-object v3, v3, Lw61$b;->c:Ljava/lang/String;

    iput-object v3, v1, Ln91$b;->f:Ljava/lang/String;

    aget-object v0, v0, v2

    iget v0, v0, Lw61$b;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v1, Ln91$b;->b:Z

    sget-object v0, Ln91$a;->p:Ln91$a;

    iput-object v0, v1, Ln91$b;->a:Ln91$a;

    :cond_0
    return-void
.end method
