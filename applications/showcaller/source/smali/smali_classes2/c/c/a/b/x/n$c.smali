.class final Lc/c/a/b/x/n$c;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/x/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lc/c/a/b/x/m;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lc/c/a/b/x/n$b;

.field public final e:F


# direct methods
.method constructor <init>(Lc/c/a/b/x/m;FLandroid/graphics/RectF;Lc/c/a/b/x/n$b;Landroid/graphics/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lc/c/a/b/x/n$c;->d:Lc/c/a/b/x/n$b;

    .line 3
    iput-object p1, p0, Lc/c/a/b/x/n$c;->a:Lc/c/a/b/x/m;

    .line 4
    iput p2, p0, Lc/c/a/b/x/n$c;->e:F

    .line 5
    iput-object p3, p0, Lc/c/a/b/x/n$c;->c:Landroid/graphics/RectF;

    .line 6
    iput-object p5, p0, Lc/c/a/b/x/n$c;->b:Landroid/graphics/Path;

    return-void
.end method
