.class public Ld2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/j0;


# direct methods
.method public constructor <init>(Ld2/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b0;->a:Ld2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/b0;->a:Ld2/j0;

    invoke-virtual {v0, p1}, Ld2/j0;->b(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ld2/b0$a;

    invoke-direct {v0, p0, p1}, Ld2/b0$a;-><init>(Ld2/b0;Ld2/t0;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
