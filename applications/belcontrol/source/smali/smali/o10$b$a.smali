.class public Lo10$b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo10$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lo10$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo10$b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lo10$b;
    .locals 4

    iget-object v0, p0, Lo10$b$a;->c:Lo10$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo10$b$a;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v2, Lo10$b;

    iget-object v3, p0, Lo10$b$a;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Lo10$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lo10$a;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lo10$a;)Lo10$b$a;
    .locals 0

    iput-object p1, p0, Lo10$b$a;->c:Lo10$a;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo10$b$a;
    .locals 0

    iput-object p1, p0, Lo10$b$a;->b:Ljava/lang/String;

    return-object p0
.end method
