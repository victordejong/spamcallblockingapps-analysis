.class Lc/a/a/b$a;
.super Ljava/lang/Object;
.source "Daemon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/b;->b(Landroid/content/Context;Ljava/lang/Class;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/Class;

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/b$a;->d:Landroid/content/Context;

    iput-object p2, p0, Lc/a/a/b$a;->e:Ljava/lang/Class;

    iput p3, p0, Lc/a/a/b$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/a/a/b$a;->d:Landroid/content/Context;

    const-string v1, "bin"

    const-string v2, "daemon"

    invoke-static {v0, v1, v2}, Lc/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lc/a/a/b$a;->d:Landroid/content/Context;

    iget-object v1, p0, Lc/a/a/b$a;->e:Ljava/lang/Class;

    iget v2, p0, Lc/a/a/b$a;->f:I

    invoke-static {v0, v1, v2}, Lc/a/a/b;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method
