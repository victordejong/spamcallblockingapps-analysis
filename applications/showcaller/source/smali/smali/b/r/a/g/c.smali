.class public final Lb/r/a/g/c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Lb/r/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/r/a/c$b;)Lb/r/a/c;
    .locals 4

    .line 1
    new-instance v0, Lb/r/a/g/b;

    iget-object v1, p1, Lb/r/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, Lb/r/a/c$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lb/r/a/c$b;->c:Lb/r/a/c$a;

    iget-boolean p1, p1, Lb/r/a/c$b;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lb/r/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lb/r/a/c$a;Z)V

    return-object v0
.end method
