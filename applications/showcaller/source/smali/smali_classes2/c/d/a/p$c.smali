.class Lc/d/a/p$c;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final d:Lc/d/a/x$b;

.field private e:Z


# direct methods
.method constructor <init>(Lc/d/a/x$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/d/a/p$c;->d:Lc/d/a/x$b;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lc/d/a/p$c;->e:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/p$c;->d:Lc/d/a/x$b;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/p$c;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/p$c;->d:Lc/d/a/x$b;

    invoke-interface {v0}, Lc/d/a/x$b;->start()V

    return-void
.end method
