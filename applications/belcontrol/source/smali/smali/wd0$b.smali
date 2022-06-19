.class public final Lwd0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lvd0;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lwd0$a;

.field public final e:F


# direct methods
.method public constructor <init>(Lvd0;FLandroid/graphics/RectF;Lwd0$a;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lwd0$b;->d:Lwd0$a;

    iput-object p1, p0, Lwd0$b;->a:Lvd0;

    iput p2, p0, Lwd0$b;->e:F

    iput-object p3, p0, Lwd0$b;->c:Landroid/graphics/RectF;

    iput-object p5, p0, Lwd0$b;->b:Landroid/graphics/Path;

    return-void
.end method
