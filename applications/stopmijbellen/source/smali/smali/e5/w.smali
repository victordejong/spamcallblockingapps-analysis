.class public Le5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le5/v;


# direct methods
.method public constructor <init>(Le5/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/w;->a:Le5/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/w;->a:Le5/v;

    .line 2
    iget-object v0, v0, Le5/v;->f:Le5/p;

    .line 3
    iget-object v1, v0, Le5/p;->c:Landroidx/appcompat/widget/z;

    .line 4
    invoke-virtual {v1}, Landroidx/appcompat/widget/z;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Le5/p;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Le5/p;->i:Lb5/a;

    invoke-interface {v0, v1}, Lb5/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const-string v3, "FirebaseCrashlytics"

    .line 7
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    iget-object v0, v0, Le5/p;->c:Landroidx/appcompat/widget/z;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 10
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
