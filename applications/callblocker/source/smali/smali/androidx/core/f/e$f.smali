.class Landroidx/core/f/e$f;
.super Landroidx/core/f/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field static final a:Landroidx/core/f/e$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Landroidx/core/f/e$f;

    invoke-direct {v0}, Landroidx/core/f/e$f;-><init>()V

    sput-object v0, Landroidx/core/f/e$f;->a:Landroidx/core/f/e$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/f/e$d;-><init>(Landroidx/core/f/e$c;)V

    .line 245
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result v1

    .line 250
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
