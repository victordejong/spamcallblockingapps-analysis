.class Le/c/a/b/w/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/a/b/w/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/b/w/h;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F


# direct methods
.method constructor <init>(Le/c/a/b/w/h;F)V
    .locals 0

    iput p2, p0, Le/c/a/b/w/h$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/a/b/w/c;)Le/c/a/b/w/c;
    .locals 2

    instance-of v0, p1, Le/c/a/b/w/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Le/c/a/b/w/b;

    iget v1, p0, Le/c/a/b/w/h$b;->a:F

    invoke-direct {v0, v1, p1}, Le/c/a/b/w/b;-><init>(FLe/c/a/b/w/c;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
