.class Lpl/droidsonroids/relinker/c$a;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/relinker/c;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lpl/droidsonroids/relinker/b$c;

.field final synthetic h:Lpl/droidsonroids/relinker/c;


# direct methods
.method constructor <init>(Lpl/droidsonroids/relinker/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/relinker/c$a;->h:Lpl/droidsonroids/relinker/c;

    iput-object p2, p0, Lpl/droidsonroids/relinker/c$a;->d:Landroid/content/Context;

    iput-object p3, p0, Lpl/droidsonroids/relinker/c$a;->e:Ljava/lang/String;

    iput-object p4, p0, Lpl/droidsonroids/relinker/c$a;->f:Ljava/lang/String;

    iput-object p5, p0, Lpl/droidsonroids/relinker/c$a;->g:Lpl/droidsonroids/relinker/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/relinker/c$a;->h:Lpl/droidsonroids/relinker/c;

    iget-object v1, p0, Lpl/droidsonroids/relinker/c$a;->d:Landroid/content/Context;

    iget-object v2, p0, Lpl/droidsonroids/relinker/c$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lpl/droidsonroids/relinker/c$a;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lpl/droidsonroids/relinker/c;->a(Lpl/droidsonroids/relinker/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lpl/droidsonroids/relinker/c$a;->g:Lpl/droidsonroids/relinker/b$c;

    invoke-interface {v0}, Lpl/droidsonroids/relinker/b$c;->a()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lpl/droidsonroids/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lpl/droidsonroids/relinker/c$a;->g:Lpl/droidsonroids/relinker/b$c;

    invoke-interface {v1, v0}, Lpl/droidsonroids/relinker/b$c;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    iget-object v1, p0, Lpl/droidsonroids/relinker/c$a;->g:Lpl/droidsonroids/relinker/b$c;

    invoke-interface {v1, v0}, Lpl/droidsonroids/relinker/b$c;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
