.class public final Lcom/jjoe64/graphview/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:F

.field public e:I

.field final synthetic f:Lcom/jjoe64/graphview/a/e;


# direct methods
.method private constructor <init>(Lcom/jjoe64/graphview/a/e;)V
    .locals 3

    .line 42
    iput-object p1, p0, Lcom/jjoe64/graphview/a/e$a;->f:Lcom/jjoe64/graphview/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    .line 48
    iput p1, p0, Lcom/jjoe64/graphview/a/e$a;->a:I

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/jjoe64/graphview/a/e$a;->b:Z

    .line 65
    iput-boolean p1, p0, Lcom/jjoe64/graphview/a/e$a;->c:Z

    const/high16 p1, 0x41200000    # 10.0f

    .line 72
    iput p1, p0, Lcom/jjoe64/graphview/a/e$a;->d:F

    const/16 p1, 0x64

    const/16 v0, 0xac

    const/16 v1, 0xda

    const/16 v2, 0xff

    .line 80
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/jjoe64/graphview/a/e$a;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jjoe64/graphview/a/e;Lcom/jjoe64/graphview/a/e$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/a/e$a;-><init>(Lcom/jjoe64/graphview/a/e;)V

    return-void
.end method
