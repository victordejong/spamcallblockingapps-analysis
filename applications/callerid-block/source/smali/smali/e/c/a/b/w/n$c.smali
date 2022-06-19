.class final Le/c/a/b/w/n$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/b/w/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Le/c/a/b/w/m;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Le/c/a/b/w/n$b;

.field public final e:F


# direct methods
.method constructor <init>(Le/c/a/b/w/m;FLandroid/graphics/RectF;Le/c/a/b/w/n$b;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Le/c/a/b/w/n$c;->d:Le/c/a/b/w/n$b;

    iput-object p1, p0, Le/c/a/b/w/n$c;->a:Le/c/a/b/w/m;

    iput p2, p0, Le/c/a/b/w/n$c;->e:F

    iput-object p3, p0, Le/c/a/b/w/n$c;->c:Landroid/graphics/RectF;

    iput-object p5, p0, Le/c/a/b/w/n$c;->b:Landroid/graphics/Path;

    return-void
.end method
