.class Landroidx/h/a/b$c;
.super Landroidx/lifecycle/u;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final a:Landroidx/lifecycle/v$b;


# instance fields
.field private b:Landroidx/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/h<",
            "Landroidx/h/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Landroidx/h/a/b$c$1;

    invoke-direct {v0}, Landroidx/h/a/b$c$1;-><init>()V

    sput-object v0, Landroidx/h/a/b$c;->a:Landroidx/lifecycle/v$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 295
    new-instance v0, Landroidx/c/h;

    invoke-direct {v0}, Landroidx/c/h;-><init>()V

    iput-object v0, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Landroidx/h/a/b$c;->c:Z

    return-void
.end method

.method static a(Landroidx/lifecycle/x;)Landroidx/h/a/b$c;
    .locals 2

    .line 292
    new-instance v0, Landroidx/lifecycle/v;

    sget-object v1, Landroidx/h/a/b$c;->a:Landroidx/lifecycle/v$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/v$b;)V

    const-class p0, Landroidx/h/a/b$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p0

    check-cast p0, Landroidx/h/a/b$c;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 344
    invoke-super {p0}, Landroidx/lifecycle/u;->a()V

    .line 345
    iget-object v0, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v0}, Landroidx/c/h;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 347
    iget-object v2, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v2, v1}, Landroidx/c/h;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/h/a/b$a;

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v2, v3}, Landroidx/h/a/b$a;->a(Z)Landroidx/h/b/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v0}, Landroidx/c/h;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 354
    iget-object v0, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v0}, Landroidx/c/h;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 357
    :goto_0
    iget-object v2, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v2}, Landroidx/c/h;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 358
    iget-object v2, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v2, v1}, Landroidx/c/h;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/h/a/b$a;

    .line 359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v3, v1}, Landroidx/c/h;->c(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 360
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/h/a/b$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/h/a/b$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    .line 335
    iget-object v0, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v0}, Landroidx/c/h;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    iget-object v2, p0, Landroidx/h/a/b$c;->b:Landroidx/c/h;

    invoke-virtual {v2, v1}, Landroidx/c/h;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/h/a/b$a;

    .line 338
    invoke-virtual {v2}, Landroidx/h/a/b$a;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
