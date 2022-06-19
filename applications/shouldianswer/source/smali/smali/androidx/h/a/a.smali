.class public abstract Landroidx/h/a/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/h/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/lifecycle/k;)Landroidx/h/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/k;",
            ":",
            "Landroidx/lifecycle/y;",
            ">(TT;)",
            "Landroidx/h/a/a;"
        }
    .end annotation

    .line 128
    new-instance v0, Landroidx/h/a/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/y;

    invoke-interface {v1}, Landroidx/lifecycle/y;->getViewModelStore()Landroidx/lifecycle/x;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/h/a/b;-><init>(Landroidx/lifecycle/k;Landroidx/lifecycle/x;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
