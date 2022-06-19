.class Landroidx/room/n;
.super Ljava/lang/Object;
.source "SQLiteCopyOpenHelperFactory.java"

# interfaces
.implements Landroidx/i/a/c$c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;

.field private final c:Landroidx/i/a/c$c;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroidx/i/a/c$c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/room/n;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Landroidx/room/n;->b:Ljava/io/File;

    .line 44
    iput-object p3, p0, Landroidx/room/n;->c:Landroidx/i/a/c$c;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/c$b;)Landroidx/i/a/c;
    .locals 6

    .prologue
    .line 49
    new-instance v0, Landroidx/room/m;

    iget-object v1, p1, Landroidx/i/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/room/n;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/n;->b:Ljava/io/File;

    iget-object v4, p1, Landroidx/i/a/c$b;->c:Landroidx/i/a/c$a;

    iget v4, v4, Landroidx/i/a/c$a;->a:I

    iget-object v5, p0, Landroidx/room/n;->c:Landroidx/i/a/c$c;

    .line 54
    invoke-interface {v5, p1}, Landroidx/i/a/c$c;->a(Landroidx/i/a/c$b;)Landroidx/i/a/c;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/room/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILandroidx/i/a/c;)V

    .line 49
    return-object v0
.end method
