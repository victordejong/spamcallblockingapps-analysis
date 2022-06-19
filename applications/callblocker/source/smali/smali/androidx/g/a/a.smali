.class public abstract Landroidx/g/a/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/g/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static a(Landroidx/lifecycle/h;)Landroidx/g/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/h;",
            ":",
            "Landroidx/lifecycle/v;",
            ">(TT;)",
            "Landroidx/g/a/a;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Landroidx/g/a/b;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/v;

    invoke-interface {v0}, Landroidx/lifecycle/v;->c()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroidx/g/a/b;-><init>(Landroidx/lifecycle/h;Landroidx/lifecycle/u;)V

    return-object v1
.end method


# virtual methods
.method public abstract a(ILandroid/os/Bundle;Landroidx/g/a/a$a;)Landroidx/g/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/g/a/a$a",
            "<TD;>;)",
            "Landroidx/g/b/b",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
