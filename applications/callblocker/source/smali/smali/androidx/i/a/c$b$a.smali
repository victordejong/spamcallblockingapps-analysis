.class public Landroidx/i/a/c$b$a;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/i/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Landroidx/i/a/c$a;

.field d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Landroidx/i/a/c$b$a;->a:Landroid/content/Context;

    .line 394
    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/c$a;)Landroidx/i/a/c$b$a;
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Landroidx/i/a/c$b$a;->c:Landroidx/i/a/c$a;

    .line 413
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/i/a/c$b$a;
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Landroidx/i/a/c$b$a;->b:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public a(Z)Landroidx/i/a/c$b$a;
    .locals 0

    .prologue
    .line 424
    iput-boolean p1, p0, Landroidx/i/a/c$b$a;->d:Z

    .line 425
    return-object p0
.end method

.method public a()Landroidx/i/a/c$b;
    .locals 5

    .prologue
    .line 376
    iget-object v0, p0, Landroidx/i/a/c$b$a;->c:Landroidx/i/a/c$a;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Landroidx/i/a/c$b$a;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    iget-boolean v0, p0, Landroidx/i/a/c$b$a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/i/a/c$b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_2
    new-instance v0, Landroidx/i/a/c$b;

    iget-object v1, p0, Landroidx/i/a/c$b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/i/a/c$b$a;->b:Ljava/lang/String;

    iget-object v3, p0, Landroidx/i/a/c$b$a;->c:Landroidx/i/a/c$a;

    iget-boolean v4, p0, Landroidx/i/a/c$b$a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/i/a/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$a;Z)V

    return-object v0
.end method
