.class public Lz8/b;
.super Ll/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ll/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ll/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/g;",
            "TTModel;)TTModel;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Ll/b;->d()Lb9/b;

    move-result-object p2

    invoke-virtual {p2}, Lb9/b;->e()Ljava/lang/Object;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p0}, Ll/b;->d()Lb9/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb9/b;->d(Lc9/g;Ljava/lang/Object;)V

    :cond_1
    return-object p2
.end method
