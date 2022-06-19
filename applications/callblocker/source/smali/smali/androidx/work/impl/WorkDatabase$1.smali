.class final Landroidx/work/impl/WorkDatabase$1;
.super Ljava/lang/Object;
.source "WorkDatabase.java"

# interfaces
.implements Landroidx/i/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/c$b;)Landroidx/i/a/c;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase$1;->a:Landroid/content/Context;

    .line 123
    invoke-static {v0}, Landroidx/i/a/c$b;->a(Landroid/content/Context;)Landroidx/i/a/c$b$a;

    move-result-object v0

    .line 124
    iget-object v1, p1, Landroidx/i/a/c$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/i/a/c$b$a;->a(Ljava/lang/String;)Landroidx/i/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/i/a/c$b;->c:Landroidx/i/a/c$a;

    .line 125
    invoke-virtual {v1, v2}, Landroidx/i/a/c$b$a;->a(Landroidx/i/a/c$a;)Landroidx/i/a/c$b$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v1, v2}, Landroidx/i/a/c$b$a;->a(Z)Landroidx/i/a/c$b$a;

    .line 127
    new-instance v1, Landroidx/i/a/a/c;

    invoke-direct {v1}, Landroidx/i/a/a/c;-><init>()V

    .line 129
    invoke-virtual {v0}, Landroidx/i/a/c$b$a;->a()Landroidx/i/a/c$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/i/a/a/c;->a(Landroidx/i/a/c$b;)Landroidx/i/a/c;

    move-result-object v0

    return-object v0
.end method
