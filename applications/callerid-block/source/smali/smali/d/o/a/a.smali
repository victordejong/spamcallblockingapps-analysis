.class public abstract Ld/o/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroidx/lifecycle/h;)Ld/o/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/h;",
            ":",
            "Landroidx/lifecycle/v;",
            ">(TT;)",
            "Ld/o/a/a;"
        }
    .end annotation

    new-instance v0, Ld/o/a/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/v;

    invoke-interface {v1}, Landroidx/lifecycle/v;->l()Landroidx/lifecycle/u;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ld/o/a/b;-><init>(Landroidx/lifecycle/h;Landroidx/lifecycle/u;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c()V
.end method
