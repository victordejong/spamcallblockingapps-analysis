.class public final Lu10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo10$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo10$b;)Lo10;
    .locals 3

    new-instance v0, Lt10;

    iget-object v1, p1, Lo10$b;->a:Landroid/content/Context;

    iget-object v2, p1, Lo10$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lo10$b;->c:Lo10$a;

    invoke-direct {v0, v1, v2, p1}, Lt10;-><init>(Landroid/content/Context;Ljava/lang/String;Lo10$a;)V

    return-object v0
.end method
