.class Landroidx/core/f/e$b;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/f/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Landroidx/core/f/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Landroidx/core/f/e$b;

    invoke-direct {v0}, Landroidx/core/f/e$b;-><init>()V

    sput-object v0, Landroidx/core/f/e$b;->a:Landroidx/core/f/e$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 183
    .line 184
    add-int v2, p2, p3

    move v0, v1

    :goto_0
    if-ge p2, v2, :cond_0

    if-ne v0, v1, :cond_0

    .line 185
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    invoke-static {v0}, Landroidx/core/f/e;->b(I)I

    move-result v0

    .line 184
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return v0
.end method
