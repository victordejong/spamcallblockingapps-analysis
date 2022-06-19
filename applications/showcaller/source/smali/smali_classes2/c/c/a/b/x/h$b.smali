.class Lc/c/a/b/x/h$b;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lc/c/a/b/x/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/x/h;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lc/c/a/b/x/h;


# direct methods
.method constructor <init>(Lc/c/a/b/x/h;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/b/x/h$b;->b:Lc/c/a/b/x/h;

    iput p2, p0, Lc/c/a/b/x/h$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/b/x/c;)Lc/c/a/b/x/c;
    .locals 2

    .line 1
    instance-of v0, p1, Lc/c/a/b/x/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/c/a/b/x/b;

    iget v1, p0, Lc/c/a/b/x/h$b;->a:F

    invoke-direct {v0, v1, p1}, Lc/c/a/b/x/b;-><init>(FLc/c/a/b/x/c;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
