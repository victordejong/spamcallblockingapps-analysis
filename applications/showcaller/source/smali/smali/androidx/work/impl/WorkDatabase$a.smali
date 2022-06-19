.class Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;
.source "WorkDatabase.java"

# interfaces
.implements Lb/r/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/r/a/c$b;)Lb/r/a/c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lb/r/a/c$b;->a(Landroid/content/Context;)Lb/r/a/c$b$a;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lb/r/a/c$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/r/a/c$b$a;->c(Ljava/lang/String;)Lb/r/a/c$b$a;

    move-result-object v1

    iget-object p1, p1, Lb/r/a/c$b;->c:Lb/r/a/c$a;

    .line 4
    invoke-virtual {v1, p1}, Lb/r/a/c$b$a;->b(Lb/r/a/c$a;)Lb/r/a/c$b$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Lb/r/a/c$b$a;->d(Z)Lb/r/a/c$b$a;

    .line 6
    new-instance p1, Lb/r/a/g/c;

    invoke-direct {p1}, Lb/r/a/g/c;-><init>()V

    .line 7
    invoke-virtual {v0}, Lb/r/a/c$b$a;->a()Lb/r/a/c$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/a/g/c;->a(Lb/r/a/c$b;)Lb/r/a/c;

    move-result-object p1

    return-object p1
.end method
