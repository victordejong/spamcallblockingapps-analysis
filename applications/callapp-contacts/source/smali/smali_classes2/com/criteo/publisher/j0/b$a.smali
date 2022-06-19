.class public final Lcom/criteo/publisher/j0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/j0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/j0/c;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/criteo/publisher/j0/b;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/j0/b;Lcom/criteo/publisher/j0/c;Ljava/util/List;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/criteo/publisher/j0/b$a;->c:Lcom/criteo/publisher/j0/b;

    iput-object p2, p0, Lcom/criteo/publisher/j0/b$a;->a:Lcom/criteo/publisher/j0/c;

    iput-object p3, p0, Lcom/criteo/publisher/j0/b$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/j0/b$a;->a:Lcom/criteo/publisher/j0/c;

    invoke-virtual {v0}, Lcom/criteo/publisher/v;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/criteo/publisher/j0/b$a;->c:Lcom/criteo/publisher/j0/b;

    iget-object v1, p0, Lcom/criteo/publisher/j0/b$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/criteo/publisher/j0/b;->a(Lcom/criteo/publisher/j0/b;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/criteo/publisher/j0/b$a;->c:Lcom/criteo/publisher/j0/b;

    iget-object v2, p0, Lcom/criteo/publisher/j0/b$a;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/criteo/publisher/j0/b;->a(Lcom/criteo/publisher/j0/b;Ljava/util/List;)V

    .line 157
    throw v0
.end method
