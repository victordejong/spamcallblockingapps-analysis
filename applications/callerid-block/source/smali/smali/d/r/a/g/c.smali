.class public final Ld/r/a/g/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/r/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/r/a/c$b;)Ld/r/a/c;
    .locals 3

    new-instance v0, Ld/r/a/g/b;

    iget-object v1, p1, Ld/r/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, Ld/r/a/c$b;->b:Ljava/lang/String;

    iget-object p1, p1, Ld/r/a/c$b;->c:Ld/r/a/c$a;

    invoke-direct {v0, v1, v2, p1}, Ld/r/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/r/a/c$a;)V

    return-object v0
.end method
