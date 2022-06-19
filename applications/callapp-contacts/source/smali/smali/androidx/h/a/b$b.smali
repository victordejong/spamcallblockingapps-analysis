.class final Landroidx/h/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "TD;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Landroidx/h/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final c:Landroidx/h/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/a/a$a<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/h/b/c;Landroidx/h/a/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/h/b/c<",
            "TD;>;",
            "Landroidx/h/a/a$a<",
            "TD;>;)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Landroidx/h/a/b$b;->a:Z

    .line 243
    iput-object p1, p0, Landroidx/h/a/b$b;->b:Landroidx/h/b/c;

    .line 244
    iput-object p2, p0, Landroidx/h/a/b$b;->c:Landroidx/h/a/a$a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 263
    iget-boolean v0, p0, Landroidx/h/a/b$b;->a:Z

    if-eqz v0, :cond_0

    .line 264
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Resetting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/h/a/b$b;->b:Landroidx/h/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 249
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  onLoadFinished in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/h/a/b$b;->b:Landroidx/h/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {p1}, Landroidx/h/b/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Landroidx/h/a/b$b;->a:Z

    .line 254
    iget-object v0, p0, Landroidx/h/a/b$b;->c:Landroidx/h/a/a$a;

    iget-object v1, p0, Landroidx/h/a/b$b;->b:Landroidx/h/b/c;

    invoke-interface {v0, v1, p1}, Landroidx/h/a/a$a;->a(Landroidx/h/b/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Landroidx/h/a/b$b;->c:Landroidx/h/a/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
