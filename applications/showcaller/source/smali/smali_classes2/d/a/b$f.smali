.class final Ld/a/b$f;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ld/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Ld/a/b;


# direct methods
.method private constructor <init>(Ld/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/a/b$f;->a:Ld/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ld/a/b;Ld/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ld/a/b$f;-><init>(Ld/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Ld/a/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/a/b$f;->a:Ld/a/b;

    instance-of v1, v0, Ld/a/b$a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ld/a/b$a;

    invoke-virtual {p1}, Ld/a/b;->g()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/a/b$a;->L(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ld/a/b;->A()V

    :goto_0
    return-void
.end method
