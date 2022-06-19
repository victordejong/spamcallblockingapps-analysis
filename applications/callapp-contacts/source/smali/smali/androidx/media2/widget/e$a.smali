.class public final Landroidx/media2/widget/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final e:[I

.field private static final f:[I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 730
    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/widget/e$a;->e:[I

    new-array v0, v0, [I

    .line 731
    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/widget/e$a;->f:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xf
        0xf0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xfe
        0x80
        0x0
    .end array-data
.end method

.method constructor <init>(IIII)V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput p1, p0, Landroidx/media2/widget/e$a;->a:I

    .line 740
    iput p2, p0, Landroidx/media2/widget/e$a;->b:I

    .line 741
    iput p3, p0, Landroidx/media2/widget/e$a;->c:I

    .line 742
    iput p4, p0, Landroidx/media2/widget/e$a;->d:I

    return-void
.end method
