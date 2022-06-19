.class final Landroidx/core/e/b$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/e/b;->a(Landroid/content/Context;Landroidx/core/e/a;Landroidx/core/a/a/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/e/c$a",
        "<",
        "Landroidx/core/e/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Landroidx/core/e/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/e/b$c;)V
    .locals 4

    .prologue
    .line 307
    sget-object v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_0
    sget-object v0, Landroidx/core/e/b;->c:Landroidx/b/g;

    iget-object v2, p0, Landroidx/core/e/b$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 309
    if-nez v0, :cond_1

    .line 310
    monitor-exit v1

    .line 317
    :cond_0
    return-void

    .line 312
    :cond_1
    sget-object v2, Landroidx/core/e/b;->c:Landroidx/b/g;

    iget-object v3, p0, Landroidx/core/e/b$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/e/c$a;

    invoke-interface {v1, p1}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)V

    .line 314
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Landroidx/core/e/b$c;

    invoke-virtual {p0, p1}, Landroidx/core/e/b$3;->a(Landroidx/core/e/b$c;)V

    return-void
.end method
