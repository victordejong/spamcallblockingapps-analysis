.class public final Landroidx/core/f/a$a;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroidx/core/f/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/f/a;->a(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/core/f/a$a;->a(Z)V

    .line 141
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 167
    iput-boolean p1, p0, Landroidx/core/f/a$a;->a:Z

    .line 168
    sget-object v0, Landroidx/core/f/a;->a:Landroidx/core/f/d;

    iput-object v0, p0, Landroidx/core/f/a$a;->c:Landroidx/core/f/d;

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/f/a$a;->b:I

    .line 170
    return-void
.end method

.method private static b(Z)Landroidx/core/f/a;
    .locals 1

    .prologue
    .line 198
    if-eqz p0, :cond_0

    sget-object v0, Landroidx/core/f/a;->c:Landroidx/core/f/a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroidx/core/f/a;->b:Landroidx/core/f/a;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroidx/core/f/a;
    .locals 4

    .prologue
    .line 205
    iget v0, p0, Landroidx/core/f/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/f/a$a;->c:Landroidx/core/f/d;

    sget-object v1, Landroidx/core/f/a;->a:Landroidx/core/f/d;

    if-ne v0, v1, :cond_0

    .line 207
    iget-boolean v0, p0, Landroidx/core/f/a$a;->a:Z

    invoke-static {v0}, Landroidx/core/f/a$a;->b(Z)Landroidx/core/f/a;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/f/a;

    iget-boolean v1, p0, Landroidx/core/f/a$a;->a:Z

    iget v2, p0, Landroidx/core/f/a$a;->b:I

    iget-object v3, p0, Landroidx/core/f/a$a;->c:Landroidx/core/f/d;

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/f/a;-><init>(ZILandroidx/core/f/d;)V

    goto :goto_0
.end method
