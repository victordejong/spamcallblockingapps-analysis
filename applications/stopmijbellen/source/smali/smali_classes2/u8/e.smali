.class public Lu8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/d;


# static fields
.field public static a:Lu8/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lu8/e;
    .locals 1

    .line 1
    sget-object v0, Lu8/e;->a:Lu8/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lu8/e;

    invoke-direct {v0}, Lu8/e;-><init>()V

    sput-object v0, Lu8/e;->a:Lu8/e;

    .line 3
    :cond_0
    sget-object v0, Lu8/e;->a:Lu8/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lb9/d;Lb9/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(TTModel;",
            "Lb9/d<",
            "TTModel;>;",
            "Lb9/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lu8/d;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lu8/d;->a(Ljava/lang/Object;Lb9/d;Lb9/a$a;)V

    return-void
.end method

.method public b(Ljava/lang/Class;Lb9/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Lb9/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lu8/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lu8/d;->b(Ljava/lang/Class;Lb9/a$a;)V

    return-void
.end method
