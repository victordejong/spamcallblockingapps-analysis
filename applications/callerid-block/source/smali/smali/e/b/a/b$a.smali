.class final Le/b/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/b;->b(Landroid/content/Context;Ljava/lang/Class;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/Class;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0

    iput-object p1, p0, Le/b/a/b$a;->b:Landroid/content/Context;

    iput-object p2, p0, Le/b/a/b$a;->c:Ljava/lang/Class;

    iput p3, p0, Le/b/a/b$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le/b/a/b$a;->b:Landroid/content/Context;

    const-string v1, "bin"

    const-string v2, "daemon"

    invoke-static {v0, v1, v2}, Le/b/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Le/b/a/b$a;->b:Landroid/content/Context;

    iget-object v1, p0, Le/b/a/b$a;->c:Ljava/lang/Class;

    iget v2, p0, Le/b/a/b$a;->d:I

    invoke-static {v0, v1, v2}, Le/b/a/b;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method
