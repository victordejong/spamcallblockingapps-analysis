.class Landroidx/a/a/b/b$b;
.super Landroidx/a/a/b/b$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/a/a/b/b$e",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroidx/a/a/b/b$e;-><init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V

    .line 301
    return-void
.end method


# virtual methods
.method a(Landroidx/a/a/b/b$c;)Landroidx/a/a/b/b$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;)",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    return-object v0
.end method

.method b(Landroidx/a/a/b/b$c;)Landroidx/a/a/b/b$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;)",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    return-object v0
.end method
