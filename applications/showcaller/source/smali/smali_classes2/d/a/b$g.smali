.class public abstract Ld/a/b$g;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/a/b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Deprecated. Do not call."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Ld/a/b;
.end method

.method public abstract c(Ld/a/b;Ld/a/b;)V
.end method

.method public d(Ld/a/b;)Ld/a/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/a/b$g;->b()Ld/a/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Ld/a/b$g;->a(Ld/a/b;)V

    return-object v0
.end method
