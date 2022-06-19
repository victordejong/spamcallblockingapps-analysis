.class final Landroidx/activity/ComponentActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity$2;->a(ILandroidx/activity/result/a/a;Ljava/lang/Object;Landroidx/core/app/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/activity/result/a/a$a;

.field final synthetic c:Landroidx/activity/ComponentActivity$2;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/a/a$a;)V
    .locals 0

    .line 156
    iput-object p1, p0, Landroidx/activity/ComponentActivity$2$1;->c:Landroidx/activity/ComponentActivity$2;

    iput p2, p0, Landroidx/activity/ComponentActivity$2$1;->a:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$2$1;->b:Landroidx/activity/result/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 159
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2$1;->c:Landroidx/activity/ComponentActivity$2;

    iget v1, p0, Landroidx/activity/ComponentActivity$2$1;->a:I

    iget-object v2, p0, Landroidx/activity/ComponentActivity$2$1;->b:Landroidx/activity/result/a/a$a;

    .line 1083
    iget-object v2, v2, Landroidx/activity/result/a/a$a;->a:Ljava/lang/Object;

    .line 1351
    iget-object v3, v0, Landroidx/activity/result/c;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1355
    iget-object v3, v0, Landroidx/activity/result/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1357
    iget-object v3, v0, Landroidx/activity/result/c;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/activity/result/c$a;

    if-eqz v3, :cond_1

    .line 1358
    iget-object v4, v3, Landroidx/activity/result/c$a;->a:Landroidx/activity/result/a;

    if-nez v4, :cond_0

    goto :goto_0

    .line 1365
    :cond_0
    iget-object v0, v3, Landroidx/activity/result/c$a;->a:Landroidx/activity/result/a;

    .line 1367
    invoke-interface {v0, v2}, Landroidx/activity/result/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 1360
    :cond_1
    :goto_0
    iget-object v3, v0, Landroidx/activity/result/c;->g:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1362
    iget-object v0, v0, Landroidx/activity/result/c;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
