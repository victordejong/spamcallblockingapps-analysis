.class public final Landroidx/i/a/a/c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Landroidx/i/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/c$b;)Landroidx/i/a/c;
    .locals 5

    .prologue
    .line 32
    new-instance v0, Landroidx/i/a/a/b;

    iget-object v1, p1, Landroidx/i/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, Landroidx/i/a/c$b;->b:Ljava/lang/String;

    iget-object v3, p1, Landroidx/i/a/c$b;->c:Landroidx/i/a/c$a;

    iget-boolean v4, p1, Landroidx/i/a/c$b;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/i/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$a;Z)V

    return-object v0
.end method
